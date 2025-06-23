using System;
using System.Collections.Generic;
using System.Net.WebSockets;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using EduShare_Escritorio.Utilidades;
using EduShare_Escritorio.Vistas.ModuloDocumentos;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace EduShare_Escritorio.NotificacionesYChat
{
    public class NotificacionSocketService
    {
        private static readonly LoggerManager _logger = new LoggerManager(typeof(NotificacionSocketService));
        private ClientWebSocket _webSocket;
        private CancellationTokenSource _cancellationTokenSource;
        private bool _desconexionManual = false;
        private string _ultimoUsuarioIdReconectable;
        private TaskCompletionSource<(bool Exito, string IdChat, string Error)> _tcsCrearChat;

        public event Action<InteraccionDocumentoModel> OnInteraccionDocumentoRecibida;
        public event Action<string, string> OnDocumentoConectado;
        public event Action<string, string> OnDocumentoDesconectado;
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

            await _webSocket.ConnectAsync(new Uri(Resources.NOTI), _cancellationTokenSource.Token);

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
                _logger.LogFatal(ex);
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
                if (string.IsNullOrWhiteSpace(mensaje))
                    return;

                if (_webSocket == null || _webSocket.State != WebSocketState.Open)
                    return;

                if (_cancellationTokenSource == null || _cancellationTokenSource.Token.IsCancellationRequested)
                    return;

                var buffer = Encoding.UTF8.GetBytes(mensaje);
               
                await _webSocket.SendAsync(
                    new ArraySegment<byte>(buffer),
                    WebSocketMessageType.Text,
                    true,
                    _cancellationTokenSource.Token
                );

                
            }
            catch (Exception ex)
            {
                _logger.LogFatal(ex);
                
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

                    try
                    {
                        var json = JObject.Parse(mensaje);
                        string accion = json.Value<string>("accion");

                        switch (accion)
                        {
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

                                    string status = json.Value<string>("status");
                                    string idChat = json.Value<string>("IdChat");
                                    string error = json.Value<string>("error");

                                    if (_tcsCrearChat != null)
                                    {

                                        if (status == "ok")
                                        {
                                            _tcsCrearChat.TrySetResult((true, idChat, null));
                                        }
                                        else
                                        {
                                            string errorMsg = error ?? "No se pudo crear el chat.";
                                            _tcsCrearChat.TrySetResult((false, null, errorMsg));
                                        }
                                    }
                                    else
                                    {
                                        Console.WriteLine("_tcsCrearChat es null! No se puede procesar la respuesta");
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

                            case "interaccion_documento":
                                {
                                    var interaccion = new InteraccionDocumentoModel
                                    {
                                        IdDocumento = json.Value<string>("IdDocumento"),
                                        TipoInteraccion = json.Value<string>("TipoInteraccion"),
                                        IdUsuario = json.Value<string>("IdUsuario"),
                                        NombreUsuario = json.Value<string>("NombreUsuario"),
                                        Timestamp = json.Value<string>("Timestamp"),
                                        Estado = json.Value<string>("Estado"),
                                        IdComentario = json.Value<string>("IdComentario"),
                                        TextoComentario = json.Value<string>("TextoComentario"),
                                        Contador = json.Value<int?>("Contador") ?? 0
                                    };
                                    OnInteraccionDocumentoRecibida?.Invoke(interaccion);
                                    break;
                                }

                            case "unido_documento":
                                {
                                    string idDocumento = json.Value<string>("IdDocumento");
                                    string status = json.Value<string>("status");
                                    OnDocumentoConectado?.Invoke(idDocumento, status);
                                    break;
                                }

                            case "salido_documento":
                                {
                                    string idDocumento = json.Value<string>("IdDocumento");
                                    string status = json.Value<string>("status");
                                    OnDocumentoDesconectado?.Invoke(idDocumento, status);
                                    break;
                                }

                            case "interaccion_documento_confirmada":
                                {
                                    string tipoInteraccion = json.Value<string>("TipoInteraccion");
                                    Console.WriteLine($" Interacción {tipoInteraccion} confirmada");
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
                                OnErrorRecibido?.Invoke($"Mensaje no reconocido: {accion}");
                                break;
                        }
                    }
                    catch (Exception ex)
                    {
                        OnErrorRecibido?.Invoke($"Error al procesar mensaje: {ex.Message}");
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error al recibir mensajes: {ex.Message}");
            }
            finally
            {
                if (!_desconexionManual)
                {
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
                    await ConectarAsync(_ultimoUsuarioIdReconectable);

                     return;
                }
                catch (Exception ex)
                {
                    await Task.Delay(delayMilisegundos);
                }
            }

           
            OnNotificacionRecibida?.Invoke(new NotificacionModel
            {
                Titulo = "Conexión perdida",
                Mensaje = "No se pudo reconectar al servidor. No recibirás notificaciones ni mensajes hasta que la conexión se restablezca.",
                Tipo = "conexion_perdida",
                FechaCreacion = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")
            });

            OnErrorRecibido?.Invoke("Se perdió la conexión con el servidor.");
        }

        public async Task<(bool Exito, string IdChat, string Error)> CrearChatAsync(ChatInfoModel chat)
        {
            try
            {
               
                if (_webSocket == null || _webSocket.State != WebSocketState.Open)
                {
                     return (false, null, "WebSocket no está conectado");
                }

               
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

                 await EnviarMensajeAsync(mensaje);

                var timeoutTask = Task.Delay(30000);
                var completedTask = await Task.WhenAny(_tcsCrearChat.Task, timeoutTask);

                if (completedTask == timeoutTask)
                {
                     return (false, null, "Timeout - No se recibió respuesta del servidor");
                }

                var resultado = await _tcsCrearChat.Task;
               
                return resultado;
            }
            catch (Exception ex)
            {
                 return (false, null, $"Error interno: {ex.Message}");
            }
            finally
            {
                _tcsCrearChat = null;
            }
        }
        public async Task ObtenerChatsActivosAsync()
        {
            var mensaje = JsonConvert.SerializeObject(new { accion = "obtener_chats_activos" });
            await EnviarMensajeAsync(mensaje);
        }

        public async Task SalirDocumentoAsync(string idDocumento, string idUsuario)
        {
            var mensaje = JsonConvert.SerializeObject(new
            {
                accion = "salir_documento",
                IdDocumento = idDocumento,
                IdUsuario = idUsuario
            });
            await EnviarMensajeAsync(mensaje);
        }

        public async Task EnviarLikeDocumentoAsync(string idDocumento, string idUsuario, string nombreUsuario, string estado)
        {
            var mensaje = JsonConvert.SerializeObject(new
            {
                accion = "interaccion_documento",
                IdDocumento = idDocumento,
                TipoInteraccion = "like",
                IdUsuario = idUsuario,
                NombreUsuario = nombreUsuario,
                Estado = estado 
            });
            await EnviarMensajeAsync(mensaje);
        }

        public async Task EnviarVistaDocumentoAsync(string idDocumento, string idUsuario, string nombreUsuario)
        {
            var mensaje = JsonConvert.SerializeObject(new
            {
                accion = "interaccion_documento",
                IdDocumento = idDocumento,
                TipoInteraccion = "vista",
                IdUsuario = idUsuario,
                NombreUsuario = nombreUsuario,
                Contador = 1
            });
            await EnviarMensajeAsync(mensaje);
        }

        public async Task EnviarDescargaDocumentoAsync(string idDocumento, string idUsuario, string nombreUsuario)
        {
            var mensaje = JsonConvert.SerializeObject(new
            {
                accion = "interaccion_documento",
                IdDocumento = idDocumento,
                TipoInteraccion = "descarga",
                IdUsuario = idUsuario,
                NombreUsuario = nombreUsuario,
                Contador = 1
            });
            await EnviarMensajeAsync(mensaje);
        }

        public async Task EnviarComentarioDocumentoAsync(string idDocumento, string idUsuario, string nombreUsuario, string idComentario, string textoComentario)
        {
            var mensaje = JsonConvert.SerializeObject(new
            {
                accion = "interaccion_documento",
                IdDocumento = idDocumento,
                TipoInteraccion = "comentario",
                IdUsuario = idUsuario,
                NombreUsuario = nombreUsuario,
                IdComentario = idComentario,
                TextoComentario = textoComentario
            });
            await EnviarMensajeAsync(mensaje);
        }
        public async Task UnirseeDocumentoAsync(string idDocumento, string idUsuario)
        {
            var mensaje = JsonConvert.SerializeObject(new
            {
                accion = "unirse_documento",
                IdDocumento = idDocumento,
                IdUsuario = idUsuario
            });
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
        public string IdUsuario { get; set; }
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

    public class InteraccionDocumentoModel
    {
        public string IdDocumento { get; set; }
        public string TipoInteraccion { get; set; } 
        public string IdUsuario { get; set; }
        public string NombreUsuario { get; set; }
        public string Timestamp { get; set; }

      
        public string Estado { get; set; } 
        public string IdComentario { get; set; } 
        public string TextoComentario { get; set; }
        public int Contador { get; set; } 
    }
}