﻿using EduShare_Escritorio.Modelos.Comentario;
using EduShare_Escritorio.Modelos.ComentarioRespuesta;
using EduShare_Escritorio.NotificacionesYChat;
using EduShare_Escritorio.Servicio;
using EduShare_Escritorio.Utilidades;
using EduShare_Escritorio.Vistas.Menus;
using EduShare_Escritorio.Vistas.ModuloDocumentos;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Net;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using static EduShare_Escritorio.Vistas.ModuloChats.Chat;
using static EduShare_Escritorio.Vistas.VentanaEmergentePersonalizada;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace EduShare_Escritorio.Vistas.ModuloChats {
    public partial class Chat : Page, ICierreAplicacionListener {
        private Frame _frame;
        private string _idChat;
        private static readonly LoggerManager _logger = new LoggerManager(typeof(Chat));
        private ChatVista _DatosChat;
        private ObservableCollection<MensajesVista> mensajes = new ObservableCollection<MensajesVista>();
        private NotificacionSocketService _socketService;
        private bool _usuarioUnidoAlChat = false;

        public class MensajesVista {
            public string IdMensaje { get; set; }
            public string IdUsuario { get; set; }
            public required string Usuario { get; set; }
            public required string Texto { get; set; }
            public required string Hora { get; set; }
            public BitmapImage Imagen { get; set; }
            public string Alineacion => EsPropio ? "Right" : "Left";
            public bool EsPropio { get; set; }
        }

        public interface ICierreAplicacionListener {
            void OnAplicacionCerrando();
        }

        public async void OnAplicacionCerrando() {
            try {
                await SalirDelChatAsync();
            } catch (Exception ex) {
                _logger.LogError(ex);
            }
        }

        public Chat() {
            InitializeComponent();
            item_Chat.ItemsSource = mensajes;
            ActualizarVisibilidadComentarios();
            App.RegistrarListener(this);

            this.Unloaded += Chat_Unloaded;
        }

        private async void Chat_Unloaded(object sender, RoutedEventArgs e) {
            App.DesregistrarListener(this);

            if (_usuarioUnidoAlChat) {
                try {
                    await SalirDelChatAsync();
                } catch (Exception ex) {
                    _logger.LogError(ex);
                }
            }
        }

        public Chat(ChatVista chatVista, Frame frame, string idChat) : this() {
            _DatosChat = chatVista;
            _frame = frame;
            _idChat = idChat;
            _socketService = App.SocketNotificaciones;

            Perfil_PropertyChanged();
            CargarDatosChat();
            ConfigurarEventosSocket();

            _ = UnirseChatAsync();
        }

        private void ConfigurarEventosSocket() {
            if (_socketService != null) {
                _socketService.OnMensajeChatRecibido += SocketService_OnMensajeChatRecibido;
                _socketService.OnEventoChatRecibido += SocketService_OnEventoChatRecibido;
                _socketService.OnRespuestaUnirseChat += SocketService_OnRespuestaUnirseChat;
                _socketService.OnErrorRecibido += SocketService_OnErrorRecibido;
                _socketService.OnMensajeEliminado += SocketService_OnMensajeEliminado;
                _socketService.OnMensajeEliminadoConfirmado += SocketService_OnMensajeEliminadoConfirmado;
            }
        }

        private void DesconfigurarEventosSocket() {
            if (_socketService != null) {
                _socketService.OnMensajeChatRecibido -= SocketService_OnMensajeChatRecibido;
                _socketService.OnEventoChatRecibido -= SocketService_OnEventoChatRecibido;
                _socketService.OnRespuestaUnirseChat -= SocketService_OnRespuestaUnirseChat;
                _socketService.OnErrorRecibido -= SocketService_OnErrorRecibido;
                _socketService.OnMensajeEliminado -= SocketService_OnMensajeEliminado;
                _socketService.OnMensajeEliminadoConfirmado -= SocketService_OnMensajeEliminadoConfirmado;
            }
        }

        private void SocketService_OnMensajeEliminado(ChatMensajeEliminadoModel mensajeEliminado) {
            if (mensajeEliminado.IdChat == _idChat) {
                Dispatcher.Invoke(() => {
                    var mensajeAEliminar = mensajes.FirstOrDefault(m => m.IdMensaje == mensajeEliminado.IdMensaje);

                    if (mensajeAEliminar != null) {

                    }

                });
            }
        }

        private void SocketService_OnMensajeEliminadoConfirmado(string idMensaje) {
            Dispatcher.Invoke(() => {
                var mensajeAEliminar = mensajes.FirstOrDefault(m => m.IdMensaje == idMensaje);
                if (mensajeAEliminar != null) {
                    mensajes.Remove(mensajeAEliminar);
                    ActualizarVisibilidadComentarios();

                }

            });
        }

        private void SocketService_OnMensajeChatRecibido(ChatMensajeModel mensaje) {
            if (mensaje.IdChat == _idChat) {
                Application.Current.Dispatcher.Invoke(async () => {
                    var mensajeVista = new MensajesVista {
                        IdMensaje = mensaje.IdMensaje,
                        IdUsuario = mensaje.IdUsuario,
                        Usuario = mensaje.NombreUsuario,
                        Texto = mensaje.Mensaje,
                        Hora = mensaje.Hora,
                        EsPropio = mensaje.NombreUsuario == PerfilSingleton.Instance.NombreUsuario,
                        Imagen = await ObtenerImagenPerfil(mensaje.FotoPerfil)
                    };

                    mensajes.Add(mensajeVista);
                    ActualizarVisibilidadComentarios();
                    DesplazarAlFinal();
                });
            }
        }

        private void SocketService_OnEventoChatRecibido(ChatEventoModel evento) {
            if (evento.IdChat == _idChat) {
                Application.Current.Dispatcher.Invoke(() => {
                    switch (evento.TipoEvento) {
                        case "usuario_unido":
                            MostrarNotificacionSistema(evento.Mensaje);
                            break;
                        case "chat_cerrado":
                        case "chat_cancelado":
                        case "chat_finalizado":
                            MostrarMensajePersonalizado(evento.Mensaje, DialogType.Warning);
                            RegresarAListaChats();
                            break;
                    }
                });
            }
        }

        private void SocketService_OnRespuestaUnirseChat(bool exito, string idChat, string error) {
            if (idChat == _idChat) {
                Application.Current.Dispatcher.Invoke(() => {
                    if (exito) {
                        _usuarioUnidoAlChat = true;
                    } else {
                        MostrarMensajePersonalizado($"No se pudo unir al chat: {error}", DialogType.Error);
                        RegresarAListaChats();
                    }
                });
            }
        }

        private void SocketService_OnErrorRecibido(string error) {
            Application.Current.Dispatcher.Invoke(() => {

            });
        }

        private void MostrarNotificacionSistema(string mensaje) {
            var mensajeVista = new MensajesVista {
                IdMensaje = Guid.NewGuid().ToString(),
                Usuario = "Sistema",
                Texto = mensaje,
                Hora = DateTime.Now.ToString("HH:mm"),
                EsPropio = false,
                Imagen = null
            };

            mensajes.Add(mensajeVista);
            ActualizarVisibilidadComentarios();
            DesplazarAlFinal();
        }

        private async Task<BitmapImage> ObtenerImagenPerfil(string rutaImagenMensaje) {
            try {
                var grpc = new FileServiceClientHandler();
                var (imagenBytes, _) = await grpc.DownloadImageAsync(rutaImagenMensaje);

                return ConvertirFotoABitmap2(imagenBytes);
            } catch (Exception ex) {
                _logger.LogError(ex);
                return null;
            }
        }



        private async Task UnirseChatAsync() {
            try {
                if (_socketService != null && !string.IsNullOrEmpty(_idChat)) {
                    await _socketService.UnirseChatAsync(
                        _idChat,
                        PerfilSingleton.Instance.IdUsuarioRegistrado.ToString(),
                        PerfilSingleton.Instance.NombreUsuario
                    );
                }
            } catch (Exception ex) {
                _logger.LogError(ex);
                MostrarMensajePersonalizado("Error al unirse al chat", DialogType.Error);
            }
        }

        private async Task SalirDelChatAsync() {
            try {
                if (_socketService != null && !string.IsNullOrEmpty(_idChat) && _usuarioUnidoAlChat) {
                    await _socketService.SalirChatAsync(
                        _idChat,
                        PerfilSingleton.Instance.IdUsuarioRegistrado.ToString()
                    );
                    _usuarioUnidoAlChat = false;
                }
            } catch (Exception ex) {
                _logger.LogError(ex);
            }
        }

        private async Task EnviarMensajeAsync(string mensaje) {
            try {
                if (_socketService != null && !string.IsNullOrEmpty(_idChat) && _usuarioUnidoAlChat) {

                    string fotoPerfilBase64 = PerfilSingleton.Instance.RutaPerfil;

                    await _socketService.EnviarMensajeChatAsync(
                        _idChat,
                        PerfilSingleton.Instance.NombreUsuario,
                        DateTime.Now.ToString("HH:mm"),
                        fotoPerfilBase64,
                        mensaje
                    );
                }
            } catch (Exception ex) {
                _logger.LogError(ex);
                MostrarMensajePersonalizado("El servidor se ha desconectado. Serás regresado a la ventana anterior.", DialogType.Error);

                RegresarAListaChats();
            }
        }

        private void ActualizarVisibilidadComentarios() {
            bool hayMensajes = mensajes.Count > 0;
            txtb_SinMnesajes.Visibility = hayMensajes ? Visibility.Collapsed : Visibility.Visible;
        }

        private void CargarDatosChat() {
            if (_DatosChat == null) return;

            txtb_Titulo.Text = _DatosChat.Titulo;
            txtb_NivelEducativo.Text = _DatosChat.NivelEducativo;
            txtb_Rama.Text = _DatosChat.Rama;
            txtb_Materia.Text = _DatosChat.Materia;
            txtb_Descripcion.Text = _DatosChat.Descripcion;

            if (PerfilSingleton.Instance.IdUsuarioRegistrado.ToString() == _DatosChat.IdAutor) {
                lbl_Finalizar.Visibility = Visibility.Visible;
            } else {
                lbl_Salir.Visibility = Visibility.Visible;
            }
        }

        private void MostrarMensajePersonalizado(string message, DialogType type) {
            var dialog = new VentanaEmergentePersonalizada(message, type) {
                Owner = Window.GetWindow(this)
            };
            dialog.ShowDialog();
        }

        private void Perfil_PropertyChanged() {
            var foto = PerfilSingleton.Instance.FotoPerfilBinaria;
            var bitmap = ConvertirFotoABitmap(foto);
            img_FotoPerfil.ImageSource = bitmap;
        }

        public ImageSource ConvertirFotoABitmap(byte[] binario) {
            if (binario == null || binario.Length == 0) return null;

            using var ms = new MemoryStream(binario);
            var bitmap = new BitmapImage();
            bitmap.BeginInit();
            bitmap.CacheOption = BitmapCacheOption.OnLoad;
            bitmap.StreamSource = ms;
            bitmap.EndInit();
            bitmap.Freeze();
            return bitmap;
        }

        public BitmapImage ConvertirFotoABitmap2(byte[] binario) {
            if (binario == null || binario.Length == 0) return null;

            using var ms = new MemoryStream(binario);
            var bitmap = new BitmapImage();
            bitmap.BeginInit();
            bitmap.CacheOption = BitmapCacheOption.OnLoad;
            bitmap.StreamSource = ms;
            bitmap.EndInit();
            bitmap.Freeze();
            return bitmap;
        }


        private async void AgregarComentario_Click(object sender, RoutedEventArgs e) {
            if (!string.IsNullOrWhiteSpace(txtb_NuevoComentario.Text)) {
                if (!_usuarioUnidoAlChat) {
                    MostrarMensajePersonalizado("No estás conectado al chat", DialogType.Warning);
                    return;
                }

                string mensaje = txtb_NuevoComentario.Text.Trim();
                txtb_NuevoComentario.Text = string.Empty;
                await EnviarMensajeAsync(mensaje);
            }
        }

        private void EnviarComentario(object sender, MouseButtonEventArgs e) {
            if (img_EnviarComentario.Cursor == Cursors.Hand) {
                AgregarComentario_Click(sender, e);
            }
        }

        private async void Salir(object sender, MouseButtonEventArgs e) {
            await SalirDelChatAsync();
            RegresarAListaChats();
        }

        private async void Finalizar(object sender, MouseButtonEventArgs e) {
            var confirmar = new VentanaEmergentePersonalizada(
                   "¿Estás seguro de que quieres finalizar este chat? Esta acción no se puede deshacer.",
                   DialogType.Confirmation) {
                Owner = Window.GetWindow(this)
            };

            bool confirmado = confirmar.ShowDialog() == true;


            if (confirmado) {
                try {
                    await SalirDelChatAsync();
                    RegresarAListaChats();
                } catch (Exception ex) {
                    _logger.LogError(ex);
                    MostrarMensajePersonalizado("Error al finalizar el chat", DialogType.Error);
                }
            }
        }

        private void RegresarAListaChats() {
            _frame.Navigate(new ListaChst(_frame));
        }

        private void DesplazarAlFinal() {
            ScrollViewer sv = VisualTreeHelperExtensions.FindChild<ScrollViewer>(this, "scrol_Mensajes");
            sv?.ScrollToEnd();
        }

        private void TxtbNuevoComentario(object sender, TextChangedEventArgs e) {
            if (!string.IsNullOrWhiteSpace(txtb_NuevoComentario.Text)) {
                img_EnviarComentario.Source = new BitmapImage(new Uri("/Vistas/Recursos/Iconos/EnviarActivado.png", UriKind.Relative));
                img_EnviarComentario.Cursor = Cursors.Hand;
            } else {
                img_EnviarComentario.Source = new BitmapImage(new Uri("/Vistas/Recursos/Iconos/EnviarDesactivado.png", UriKind.Relative));
                img_EnviarComentario.Cursor = Cursors.No;
            }

            if (txtb_ContadorComentario == null || txtb_NuevoComentario == null)
                return;

            int caracteresActuales = txtb_NuevoComentario.Text.Length;
            txtb_ContadorComentario.Text = $"{caracteresActuales}/100";
        }

        private void TxtbNuevoComentario_KeyUp(object sender, KeyEventArgs e) {
            if (e.Key == Key.Enter && !string.IsNullOrWhiteSpace(txtb_NuevoComentario.Text)) {
                AgregarComentario_Click(sender, e);
            }
        }

        private async void EliminarComentario(object sender, RoutedEventArgs e) {
            if (sender is not Button btnEliminar || btnEliminar.Tag is not MensajesVista mensajeVista) {
                MostrarMensajePersonalizado("No se pudo identificar el mensaje a eliminar", DialogType.Warning);
                return;
            }

            if (!mensajeVista.EsPropio) {
                MostrarMensajePersonalizado("Solo puedes eliminar tus propios mensajes", DialogType.Warning);
                return;
            }

            if (!mensajes.Contains(mensajeVista)) {
                MostrarMensajePersonalizado("El mensaje ya no existe", DialogType.Warning);
                return;
            }

            var confirmar = new VentanaEmergentePersonalizada(
                   "¿Estás seguro de que quieres eliminar este mensaje?",
                   DialogType.Confirmation) {
                Owner = Window.GetWindow(this)
            };

            bool confirmado = confirmar.ShowDialog() == true;

            if (confirmado) {
                try {
                    btnEliminar.IsEnabled = false;

                    await _socketService.EliminarMensajeChatAsync(
                        _idChat,
                        mensajeVista.IdMensaje,
                        PerfilSingleton.Instance.IdUsuarioRegistrado.ToString(),
                        PerfilSingleton.Instance.NombreUsuario
                    );

                } catch (Exception ex) {
                    _logger.LogError(ex);
                    MostrarMensajePersonalizado("Error al eliminar el mensaje", DialogType.Error);

                    btnEliminar.IsEnabled = true;
                }
            }
        }

        private void AbrirEmojis(object sender, RoutedEventArgs e) {
            txtb_NuevoComentario.Focus();

            keybd_event(VK_LWIN, 0, 0, 0);
            keybd_event(0xBE, 0, 0, 0);
            keybd_event(0xBE, 0, KEYEVENTF_KEYUP, 0);
            keybd_event(VK_LWIN, 0, KEYEVENTF_KEYUP, 0);
        }

        [DllImport("user32.dll")]
        private static extern void keybd_event(byte bVk, byte bScan, uint dwFlags, int dwExtraInfo);

        private const byte VK_LWIN = 0x5B;
        private const uint KEYEVENTF_KEYUP = 0x0002;
        private async void Page_Unloaded(object sender, RoutedEventArgs e) {
            DesconfigurarEventosSocket();
            if (_usuarioUnidoAlChat) {
                await SalirDelChatAsync();
            }
        }
    }
}