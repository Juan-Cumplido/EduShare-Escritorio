using System;
using System.Collections.Generic;
using System.Net.WebSockets;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace EduShare_Escritorio.NotificacionesYChat
{
    public class NotificacionSocketService
    {
        private ClientWebSocket _webSocket;
        private CancellationTokenSource _cancellationTokenSource;
        private bool _desconexionManual = false;
        private string _ultimoUsuarioIdReconectable;
        private TaskCompletionSource<(bool Exito, string IdChat, string Error)> _tcsCrearChat;

        public event Action<bool, string, string> OnRespuestaUnirseChat;
        public event Action<NotificacionModel> OnNotificacionRecibida;
        public event Action<ChatMensajeModel> OnMensajeChatRecibido;
        public event Action<ChatEventoModel> OnEventoChatRecibido;
        public event Action<List<ChatInfoModel>> OnChatsActivosRecibidos;
        public event Action<List<ChatInfoModel>> OnMisChatsRecibidos;
        public event Action<string> OnErrorRecibido;
        public event Action<ChatMensajeEliminadoModel> OnMensajeEliminado;
        public event Action<string> OnMensajeEliminadoConfirmado;

        public async Task ConectarAsync(string usuarioId)
        {
            _ultimoUsuarioIdReconectable = usuarioId;
            _desconexionManual = false;

            _webSocket = new ClientWebSocket();
            _cancellationTokenSource = new CancellationTokenSource();

            await _webSocket.ConnectAsync(new Uri("ws://localhost:8765"), _cancellationTokenSource.Token);

            var conectarMsg = JsonConvert.SerializeObject(new
            {
                accion = "conectar",
                UsuarioId = usuarioId
            });

            await EnviarMensajeAsync(conectarMsg);
            _ = EscucharMensajesAsync();
        }

        public async Task DesconectarAsync(string usuarioId)
        {
            _desconexionManual = true;

            if (_webSocket == null || _webSocket.State != WebSocketState.Open)
                return;

            try
            {
                var desconectarMsg = JsonConvert.SerializeObject(new
                {
                    accion = "desconectar",
                    UsuarioId = usuarioId
                });

                await EnviarMensajeAsync(desconectarMsg);
                _cancellationTokenSource.Cancel();
                _webSocket.Dispose();
            }
            catch (Exception ex)
            {
                Console.WriteLine($"❌ Error al desconectar: {ex.Message}");
            }
            finally
            {
                _webSocket = null;
                _cancellationTokenSource = null;
            }
        }

        public async Task EnviarMensajeAsync(string mensaje)
        {
            try
            {
                Console.WriteLine($"🔵 EnviarMensajeAsync: Iniciando envío de mensaje");
                Console.WriteLine($"📤 Mensaje a enviar: {mensaje}");

                if (_webSocket == null)
                {
                    Console.WriteLine("❌ EnviarMensajeAsync: _webSocket es null");
                    throw new InvalidOperationException("WebSocket es null");
                }

                Console.WriteLine($"🔍 Estado del WebSocket: {_webSocket.State}");

                if (_webSocket.State != WebSocketState.Open)
                {
                    Console.WriteLine($"❌ EnviarMensajeAsync: WebSocket no está abierto. Estado: {_webSocket.State}");
                    throw new InvalidOperationException($"WebSocket no está conectado. Estado: {_webSocket.State}");
                }

                if (_cancellationTokenSource == null)
                {
                    Console.WriteLine("❌ EnviarMensajeAsync: _cancellationTokenSource es null");
                    throw new InvalidOperationException("CancellationTokenSource es null");
                }

                if (_cancellationTokenSource.Token.IsCancellationRequested)
                {
                    Console.WriteLine("❌ EnviarMensajeAsync: Token de cancelación ya fue solicitado");
                    throw new OperationCanceledException("El token de cancelación ya fue solicitado");
                }

                Console.WriteLine("✅ EnviarMensajeAsync: Verificaciones pasadas, enviando...");

                var buffer = Encoding.UTF8.GetBytes(mensaje);
                Console.WriteLine($"📦 Tamaño del buffer: {buffer.Length} bytes");

                await _webSocket.SendAsync(
                    new ArraySegment<byte>(buffer),
                    WebSocketMessageType.Text,
                    true,
                    _cancellationTokenSource.Token
                );

                Console.WriteLine("✅ EnviarMensajeAsync: Mensaje enviado exitosamente");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"❌ EnviarMensajeAsync: Error al enviar mensaje: {ex.Message}");
                Console.WriteLine($"❌ StackTrace: {ex.StackTrace}");
                throw;
            }
        }

        private async Task EscucharMensajesAsync()
        {
            var buffer = new byte[8192];
            try
            {
                while (_webSocket.State == WebSocketState.Open)
                {
                    var result = await _webSocket.ReceiveAsync(new ArraySegment<byte>(buffer), _cancellationTokenSource.Token);
                    if (result.MessageType == WebSocketMessageType.Close)
                    {
                        await _webSocket.CloseAsync(WebSocketCloseStatus.NormalClosure, string.Empty, CancellationToken.None);
                        break;
                    }

                    var mensaje = Encoding.UTF8.GetString(buffer, 0, result.Count);
                    Console.WriteLine($"📨 Mensaje recibido: {mensaje}");

                    try
                    {
                        var json = JObject.Parse(mensaje);
                        string accion = json.Value<string>("accion");

                        switch (accion)
                        {
                            case "conectado":
                                Console.WriteLine("✅ Conexión confirmada por el servidor");
                                break;

                            case "notificacion":
                                {
                                    var notificacion = new NotificacionModel
                                    {
                                        Titulo = json.Value<string>("Titulo"),
                                        Mensaje = json.Value<string>("Mensaje"),
                                        Tipo = json.Value<string>("Tipo"),
                                        FechaCreacion = json.Value<string>("FechaCreacion")
                                    };
                                    OnNotificacionRecibida?.Invoke(notificacion);
                                    break;
                                }

                            case "notificacion_chat_inicio":
                            case "chat_cancelado":
                            case "chat_cerrado":
                                {
                                    var noti = new NotificacionModel
                                    {
                                        Titulo = "Sistema",
                                        Mensaje = json.Value<string>("Mensaje"),
                                        Tipo = accion,
                                        FechaCreacion = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")
                                    };
                                    OnNotificacionRecibida?.Invoke(noti);

                                    var eventoCierre = new ChatEventoModel
                                    {
                                        IdChat = json.Value<string>("IdChat"),
                                        Mensaje = json.Value<string>("Mensaje"),
                                        TipoEvento = accion
                                    };
                                    OnEventoChatRecibido?.Invoke(eventoCierre);
                                    break;
                                }

                            case "crear_chat":
                                {
                                    Console.WriteLine("🔵 EscucharMensajes: Recibida respuesta crear_chat");
                                    Console.WriteLine($"📨 JSON completo recibido: {json.ToString()}");

                                    string status = json.Value<string>("status");
                                    string idChat = json.Value<string>("IdChat");
                                    string error = json.Value<string>("error");

                                    Console.WriteLine($"📊 Status: {status}");
                                    Console.WriteLine($"📊 IdChat: {idChat}");

                                    if (_tcsCrearChat != null)
                                    {
                                        Console.WriteLine("✅ _tcsCrearChat existe, procesando respuesta...");

                                        if (status == "ok")
                                        {
                                            Console.WriteLine("✅ Status OK, marcando como exitoso");
                                            _tcsCrearChat.TrySetResult((true, idChat, null));
                                        }
                                        else
                                        {
                                            Console.WriteLine($"❌ Status no OK: {status}");
                                            string errorMsg = error ?? "No se pudo crear el chat.";
                                            _tcsCrearChat.TrySetResult((false, null, errorMsg));
                                        }
                                    }
                                    else
                                    {
                                        Console.WriteLine("❌ _tcsCrearChat es null! No se puede procesar la respuesta");
                                    }
                                    break;
                                }

                            case "usuario_unido":
                                {
                                    var evento = new ChatEventoModel
                                    {
                                        IdChat = json.Value<string>("IdChat"),
                                        Mensaje = json.Value<string>("Mensaje"),
                                        TipoEvento = "usuario_unido"
                                    };
                                    OnEventoChatRecibido?.Invoke(evento);
                                    break;
                                }

                            case "mensaje_eliminado":
                                {
                                    var mensajeEliminado = new ChatMensajeEliminadoModel
                                    {
                                        IdChat = json.Value<string>("IdChat"),
                                        IdMensaje = json.Value<string>("IdMensaje"),
                                        EliminadoPor = json.Value<string>("EliminadoPor"),
                                        Hora = json.Value<string>("Hora")
                                    };
                                    OnMensajeEliminado?.Invoke(mensajeEliminado);
                                    break;
                                }

                            case "mensaje_eliminado_confirmado":
                                {
                                    string idMensaje = json.Value<string>("IdMensaje");
                                    Console.WriteLine($"✅ Mensaje {idMensaje} eliminado correctamente");
                                    OnMensajeEliminadoConfirmado?.Invoke(idMensaje);
                                    break;
                                }

                            case "error_eliminar_mensaje":
                                {
                                    string errorMsg = json.Value<string>("mensaje") ?? "Error al eliminar mensaje";
                                    OnErrorRecibido?.Invoke(errorMsg);
                                    break;
                                }

                            case "mensaje_chat":
                                {
                                    var mensajeChat = new ChatMensajeModel
                                    {
                                        IdChat = json.Value<string>("IdChat"),
                                        NombreUsuario = json.Value<string>("NombreUsuario"),
                                        Hora = json.Value<string>("Hora"),
                                        FotoPerfil = json.Value<string>("FotoPerfil"),
                                        Mensaje = json.Value<string>("Mensaje")
                                    };
                                    OnMensajeChatRecibido?.Invoke(mensajeChat);
                                    break;
                                }

                            case "mensaje_enviado":
                                Console.WriteLine("✅ Mensaje de chat enviado correctamente");
                                break;

                            case "respuesta_unirse_chat":
                                {
                                    var exito = json["exito"].ToObject<bool>();
                                    var idChat = json["idChat"]?.ToString();
                                    var error = json["error"]?.ToString();
                                    OnRespuestaUnirseChat?.Invoke(exito, idChat, error);
                                    break;
                                }

                            case "chat_finalizado":
                                {
                                    var noti = new NotificacionModel
                                    {
                                        Titulo = "Chat Finalizado",
                                        Mensaje = json.Value<string>("Mensaje"),
                                        Tipo = "chat_finalizado",
                                        FechaCreacion = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")
                                    };
                                    OnNotificacionRecibida?.Invoke(noti);

                                    var eventoFinalizacion = new ChatEventoModel
                                    {
                                        IdChat = json.Value<string>("IdChat"),
                                        Mensaje = json.Value<string>("Mensaje"),
                                        TipoEvento = "chat_finalizado"
                                    };
                                    OnEventoChatRecibido?.Invoke(eventoFinalizacion);
                                    break;
                                }

                            case "respuesta_chats_activos":
                                {
                                    var chatsArray = json["chats"] as JArray;
                                    if (chatsArray != null)
                                    {
                                        var chats = chatsArray.ToObject<List<ChatInfoModel>>();
                                        OnChatsActivosRecibidos?.Invoke(chats);
                                    }
                                    break;
                                }

                            case "respuesta_mis_chats":
                                {
                                    var chatsArray = json["chats"] as JArray;
                                    if (chatsArray != null)
                                    {
                                        var chats = chatsArray.ToObject<List<ChatInfoModel>>();
                                        OnMisChatsRecibidos?.Invoke(chats);
                                    }
                                    break;
                                }

                            case "error":
                            case "error_envio_mensaje":
                                {
                                    string errorMsg = json.Value<string>("mensaje") ?? json.Value<string>("error") ?? "Error desconocido";
                                    OnErrorRecibido?.Invoke(errorMsg);
                                    break;
                                }

                            default:
                                Console.WriteLine($"⚠️ Acción no reconocida: {accion}");
                                OnErrorRecibido?.Invoke($"Mensaje no reconocido: {accion}");
                                break;
                        }
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine($"❌ Error al procesar mensaje recibido: {ex.Message}\nMensaje: {mensaje}");
                        OnErrorRecibido?.Invoke($"Error al procesar mensaje: {ex.Message}");
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"❌ Error al recibir mensajes: {ex.Message}");
            }
            finally
            {
                if (!_desconexionManual)
                {
                    Console.WriteLine("🔁 Intentando reconexión...");
                    await IntentarReconexionAsync();
                }
            }
        }

        private async Task IntentarReconexionAsync()
        {
            int intentos = 0;
            int maxIntentos = 5;
            int delayMilisegundos = 3000;

            while (intentos < maxIntentos)
            {
                try
                {
                    intentos++;
                    Console.WriteLine($"🔄 Reintento {intentos} de {maxIntentos}...");

                    await ConectarAsync(_ultimoUsuarioIdReconectable);

                    Console.WriteLine("✅ Reconexión exitosa.");
                    return;
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"❌ Fallo reconexión: {ex.Message}");
                    await Task.Delay(delayMilisegundos);
                }
            }

            Console.WriteLine("❌ Se alcanzó el máximo de intentos de reconexión.");

            OnNotificacionRecibida?.Invoke(new NotificacionModel
            {
                Titulo = "Conexión perdida",
                Mensaje = "No se pudo reconectar al servidor. No recibirás notificaciones ni mensajes hasta que la conexión se restablezca.",
                Tipo = "conexion_perdida",
                FechaCreacion = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")
            });

            OnErrorRecibido?.Invoke("Se perdió la conexión con el servidor.");
        }

        // Métodos para interactuar con el servidor

        public async Task<(bool Exito, string IdChat, string Error)> CrearChatAsync(ChatInfoModel chat)
        {
            try
            {
                Console.WriteLine("🔵 CrearChatAsync: Iniciando método");

                if (_webSocket == null || _webSocket.State != WebSocketState.Open)
                {
                    Console.WriteLine("❌ CrearChatAsync: WebSocket no está conectado");
                    return (false, null, "WebSocket no está conectado");
                }

                Console.WriteLine("✅ CrearChatAsync: WebSocket está conectado");

                _tcsCrearChat = new TaskCompletionSource<(bool, string, string)>();

                var mensaje = JsonConvert.SerializeObject(new
                {
                    accion = "crear_chat",
                    Autor = chat.Autor,
                    IdAutor = chat.IdAutor,
                    Titulo = chat.Titulo,
                    NivelEducativo = chat.NivelEducativo,
                    Rama = chat.Rama,
                    Materia = chat.Materia,
                    Descripcion = chat.Descripcion,
                    Fecha = chat.Fecha,
                    Hora = chat.Hora
                });

                Console.WriteLine($"✅ CrearChatAsync: Mensaje JSON creado: {mensaje}");

                await EnviarMensajeAsync(mensaje);
                Console.WriteLine("✅ CrearChatAsync: Mensaje enviado");

                // Timeout para evitar espera infinita
                var timeoutTask = Task.Delay(30000);
                var completedTask = await Task.WhenAny(_tcsCrearChat.Task, timeoutTask);

                if (completedTask == timeoutTask)
                {
                    Console.WriteLine("⏰ CrearChatAsync: Timeout - No se recibió respuesta en 30 segundos");
                    return (false, null, "Timeout - No se recibió respuesta del servidor");
                }

                var resultado = await _tcsCrearChat.Task;
                Console.WriteLine($"✅ CrearChatAsync: Respuesta recibida - Exito: {resultado.Item1}, IdChat: {resultado.Item2}, Error: {resultado.Item3}");

                return resultado;
            }
            catch (Exception ex)
            {
                Console.WriteLine($"❌ CrearChatAsync: Excepción: {ex.Message}");
                return (false, null, $"Error interno: {ex.Message}");
            }
            finally
            {
                _tcsCrearChat = null;
            }
        }

        public async Task FinalizarChatAsync(string idChat, string idAutor)
        {
            var mensaje = JsonConvert.SerializeObject(new
            {
                accion = "finalizar_chat",
                IdChat = idChat,
                IdAutor = idAutor
            });
            await EnviarMensajeAsync(mensaje);
        }
        public async Task ObtenerChatsActivosAsync()
        {
            var mensaje = JsonConvert.SerializeObject(new { accion = "obtener_chats_activos" });
            await EnviarMensajeAsync(mensaje);
        }

        public async Task ObtenerMisChatsAsync(string idAutor)
        {
            var mensaje = JsonConvert.SerializeObject(new { accion = "obtener_mis_chats", IdAutor = idAutor });
            await EnviarMensajeAsync(mensaje);
        }

        public async Task UnirseChatAsync(string idChat, string idUsuario, string nombreUsuario)
        {
            var mensaje = JsonConvert.SerializeObject(new
            {
                accion = "unirse_chat",
                IdChat = idChat,
                IdUsuario = idUsuario,
                NombreUsuario = nombreUsuario
            });
            await EnviarMensajeAsync(mensaje);
        }

        public async Task EliminarMensajeChatAsync(string idChat, string idMensaje, string idUsuario, string nombreUsuario)
        {
            var mensaje = JsonConvert.SerializeObject(new
            {
                accion = "eliminar_mensaje",
                IdChat = idChat,
                IdMensaje = idMensaje,
                IdUsuario = idUsuario,
                NombreUsuario = nombreUsuario
            });
            await EnviarMensajeAsync(mensaje);
        }

        public async Task SalirChatAsync(string idChat, string idUsuario)
        {
            var mensaje = JsonConvert.SerializeObject(new
            {
                accion = "salir_chat",
                IdChat = idChat,
                IdUsuario = idUsuario
            });
            await EnviarMensajeAsync(mensaje);
        }

        public async Task EnviarMensajeChatAsync(string idChat, string nombreUsuario, string hora, string fotoPerfil, string textoMensaje)
        {
            var mensaje = JsonConvert.SerializeObject(new
            {
                accion = "enviar_mensaje",
                IdChat = idChat,
                NombreUsuario = nombreUsuario,
                Hora = hora,
                FotoPerfil = fotoPerfil,
                Mensaje = textoMensaje
            });
            await EnviarMensajeAsync(mensaje);
        }
    }

    // Modelos para notificaciones y chats
    public class NotificacionModel
    {
        public string Titulo { get; set; }
        public string Mensaje { get; set; }
        public string Tipo { get; set; }
        public string FechaCreacion { get; set; }
    }

    public class ChatInfoModel
    {
        public string IdChat { get; set; }
        public string Autor { get; set; }
        public string IdAutor { get; set; }
        public string Estado { get; set; }
        public string Titulo { get; set; }
        public string NivelEducativo { get; set; }
        public string Rama { get; set; }
        public string Materia { get; set; }
        public string Descripcion { get; set; }
        public string Fecha { get; set; }
        public string Hora { get; set; }
        public List<string> Participantes { get; set; } = new List<string>();
    }

    public class ChatMensajeModel
    {
        public string IdMensaje { get; set; }
        public string IdChat { get; set; }
        public string NombreUsuario { get; set; }
        public string Hora { get; set; }
        public string FotoPerfil { get; set; }
        public string Mensaje { get; set; }
    }

    public class ChatEventoModel
    {
        public string IdChat { get; set; }
        public string Mensaje { get; set; }
        public string TipoEvento { get; set; }
    }

    public class ChatMensajeEliminadoModel
    {
        public string IdChat { get; set; }
        public string IdMensaje { get; set; }
        public string EliminadoPor { get; set; }
        public string Hora { get; set; }
    }
}