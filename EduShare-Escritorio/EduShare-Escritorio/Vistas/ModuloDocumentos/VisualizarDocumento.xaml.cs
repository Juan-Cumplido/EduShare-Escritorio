using EduShare_Escritorio.Modelos;
using EduShare_Escritorio.Modelos.ComentarioRespuesta;
using EduShare_Escritorio.Modelos.Perfil;
using EduShare_Escritorio.Modelos.Publicaciones;
using EduShare_Escritorio.Servicio;
using EduShare_Escritorio.Utilidades;
using EduShare_Escritorio.Vistas.ModuloLogin;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Collections.ObjectModel;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using static EduShare_Escritorio.Vistas.VentanaEmergentePersonalizada;
using Color = System.Windows.Media.Color;
using ColorConverter = System.Windows.Media.ColorConverter;
using EduShare_Escritorio.NotificacionesYChat;
using EduShare_Escritorio.Modelos.Comentario;

namespace EduShare_Escritorio.Vistas.ModuloDocumentos {
    public partial class VisualizarDocumento : Page {
        public class ComentarioVista {
            public required string Usuario { get; set; }
            public required string Texto { get; set; }
            public required string Fecha { get; set; }
            public required BitmapImage Imagen { get; set; }
            public string Alineacion => EsPropio ? "Right" : "Left";
            public bool EsPropio { get; set; }
        }

        private NotificacionSocketService _socketService;
        private bool _yaDioLike = false;
        private bool _cargandoEstadoLike = false;
        private static readonly LoggerManager _logger = new LoggerManager(typeof(VisualizarDocumento));
        private ObservableCollection<ComentarioVista> _listaComentarioVista;
        private PublicacionVista _publicacionActual;
        private string _rutaPdfTemporal;
        public VisualizarDocumento() {
            InitializeComponent();
            this.Loaded += VerificarSiInicioSesion;

        }
        public VisualizarDocumento(PublicacionVista publicacion) : this() {
            _publicacionActual = publicacion;
            _listaComentarioVista = new ObservableCollection<ComentarioVista>();
            ListaComentarios.ItemsSource = _listaComentarioVista;
            _socketService = App.SocketNotificaciones;
            CargarDatosPublicacion();
            Perfil_PropertyChanged();
            RegistrarVista();
            VerificarLiker();

            this.Unloaded += VisualizarDocumento_Unloaded;
            InicializarSocketService();
            var perfil = PerfilSingleton.Instance;
            if (!string.IsNullOrEmpty(perfil.Correo)) {
                _ = CargarPdfAsync();
            }


            _ = CargarComentarios();


        }

        private async void VisualizarDocumento_Unloaded(object sender, RoutedEventArgs e) {
            await LimpiarRecursos();
        }


        private async Task LimpiarRecursos() {
            try {
                if (_socketService != null && _publicacionActual != null) {
                    await _socketService.SalirDocumentoAsync(
                        _publicacionActual.IdPublicacion.ToString(),
                        PerfilSingleton.Instance.IdUsuarioRegistrado.ToString()
                    );

                    _socketService.OnInteraccionDocumentoRecibida -= OnInteraccionDocumentoRecibida;
                    _socketService.OnDocumentoConectado -= OnDocumentoConectado;
                    _socketService.OnDocumentoDesconectado -= OnDocumentoDesconectado;
                }

                if (!string.IsNullOrEmpty(_rutaPdfTemporal) && File.Exists(_rutaPdfTemporal)) {
                    try {
                        File.Delete(_rutaPdfTemporal);
                    } catch (Exception ex) {
                        _logger.LogError(ex);
                    }
                }

                if (PdfWebView?.CoreWebView2 != null) {
                    PdfWebView.Dispose();
                }
            } catch (Exception ex) {
                _logger.LogError(ex);
            }
        }

        private void InicializarSocketService() {


            _socketService.OnInteraccionDocumentoRecibida += OnInteraccionDocumentoRecibida;
            _socketService.OnDocumentoConectado += OnDocumentoConectado;
            _socketService.OnDocumentoDesconectado += OnDocumentoDesconectado;

            _ = Task.Run(async () => await _socketService.UnirseeDocumentoAsync(_publicacionActual.IdPublicacion.ToString(), PerfilSingleton.Instance.IdUsuarioRegistrado.ToString()));
        }

        private void OnDocumentoConectado(string idDocumento, string status) {
            if (idDocumento == _publicacionActual.IdPublicacion.ToString() && status == "ok") {
                Dispatcher.Invoke(() => {
                    Console.WriteLine($" Conectado al documento {idDocumento} para recibir actualizaciones en tiempo real");
                });
            }
        }

        private void OnDocumentoDesconectado(string idDocumento, string status) {
            if (idDocumento == _publicacionActual.IdPublicacion.ToString()) {
                Dispatcher.Invoke(() => {
                    Console.WriteLine($"Desconectado del documento {idDocumento}");
                });
            }
        }

        private void OnInteraccionDocumentoRecibida(InteraccionDocumentoModel interaccion) {
            if (interaccion.IdDocumento != _publicacionActual.IdPublicacion.ToString())
                return;

            Dispatcher.Invoke(() => {
                switch (interaccion.TipoInteraccion) {
                    case "like":
                        ActualizarContadorLikes(interaccion);
                        break;

                    case "vista":
                        _publicacionActual.Vistas++;
                        txtb_Vistas.Text = _publicacionActual.Vistas.ToString();
                        break;

                    case "descarga":
                        _publicacionActual.Descargas++;
                        txtb_Descargas.Text = _publicacionActual.Descargas.ToString();
                        break;

                    case "comentario":
                        _listaComentarioVista.Clear();
                        RecargarComentarios();
                        break;
                }
            });
        }

        private async void RecargarComentarios() {
            try {
                await CargarComentarios();
            } catch (Exception ex) {
                _logger.LogError(ex);

            }
        }

        private void ActualizarContadorLikes(InteraccionDocumentoModel interaccion) {
            try {
                if (interaccion.Estado == "agregado") {
                    _publicacionActual.Likes++;
                    txtb_Likes.Text = _publicacionActual.Likes.ToString();

                } else if (interaccion.Estado == "removido") {
                    _publicacionActual.Likes--;
                    txtb_Likes.Text = _publicacionActual.Likes.ToString();
                }
            } catch (Exception ex) {
                _logger.LogError(ex);
            }
        }


        private async Task CargarComentarios() {
            try {
                Application.Current.Dispatcher.Invoke(() => {
                    _listaComentarioVista.Clear();
                    txtb_SinComentarios.Visibility = Visibility.Collapsed;
                });

                string token = PerfilSingleton.Instance.TokenJwt;
                var respuesta = await ComentarioServicio.ObtenerComentariosPorPublicacionAsync(_publicacionActual.IdPublicacion);

                switch (respuesta.Resultado) {
                    case 200:

                        var comentariosVista = new List<ComentarioVista>();

                        foreach (var comentario in respuesta.Datos) {
                            bool esPropio = comentario.IdUsuarioRegistrado == PerfilSingleton.Instance.IdUsuarioRegistrado;

                            byte[] imagenBinaria = Array.Empty<byte>();

                            try {
                                var grpc = new FileServiceClientHandler();
                                var (imagen, _) = await grpc.DownloadImageAsync(comentario.FotoPerfil);
                                imagenBinaria = imagen ?? Array.Empty<byte>();
                            } catch (Exception ex) {
                                _logger.LogError(ex);
                            }

                            comentariosVista.Add(new ComentarioVista {
                                Usuario = comentario.NombreUsuario,
                                Texto = comentario.Contenido,
                                Fecha = comentario.Fecha.ToString("dd/MM/yyyy"),
                                Imagen = ConvertirABitmap(imagenBinaria),
                                EsPropio = esPropio
                            });
                        }

                        Application.Current.Dispatcher.Invoke(() => {
                            foreach (var comentario in comentariosVista) {
                                _listaComentarioVista.Add(comentario);
                            }

                            if (_listaComentarioVista.Count == 0) {
                                txtb_SinComentarios.Visibility = Visibility.Visible;
                            } else {
                                txtb_SinComentarios.Visibility = Visibility.Collapsed;
                            }
                        });

                        break;

                    case (int)HttpStatusCode.Unauthorized:
                        Application.Current.Dispatcher.Invoke(() => {
                            MostrarMensajePersonalizado("Tu sesión ha expirado. Por favor, inicia sesión nuevamente.", DialogType.Error);
                            NavigationService.Navigate(new Login());
                            PerfilSingleton.Instance.Reset();
                        });
                        break;

                    case 500:
                        Application.Current.Dispatcher.Invoke(() => {
                            MostrarMensajePersonalizado("Error del servidor al obtener las publicaciones.", DialogType.Error);
                        });
                        break;

                    default:
                        Application.Current.Dispatcher.Invoke(() => {
                            MostrarMensajePersonalizado($"Error: {respuesta.Mensaje}", DialogType.Warning);
                        });
                        break;
                }
            } catch (Exception ex) {
                _logger.LogFatal(ex);
                Application.Current.Dispatcher.Invoke(() => {
                    MostrarMensajePersonalizado("Ocurrió un error inesperado al cargar comentarios.", DialogType.Error);
                });
            }
        }

        public BitmapImage? ConvertirABitmap(byte[] datos) {
            if (datos == null || datos.Length == 0) return null;

            using var stream = new MemoryStream(datos);
            var image = new BitmapImage();
            image.BeginInit();
            image.CacheOption = BitmapCacheOption.OnLoad;
            image.StreamSource = stream;
            image.EndInit();
            return image;
        }



        private async void RegistrarVista() {

            string token = PerfilSingleton.Instance.TokenJwt;
            int id = _publicacionActual.IdPublicacion;
            var respuesta = await PublicacionServicio.RegistrarVisualizacionAsync(id);

            switch (respuesta.Resultado) {
                case (int)HttpStatusCode.OK:
                    _publicacionActual.Vistas++;
                    txtb_Vistas.Text = _publicacionActual.Vistas.ToString();

                    await _socketService.EnviarVistaDocumentoAsync(
                    _publicacionActual.IdPublicacion.ToString(),
                     PerfilSingleton.Instance.IdUsuarioRegistrado.ToString(),
                     PerfilSingleton.Instance.NombreUsuario.ToString());

                    string titulo = "Nueva visita";
                    string mensaje = $"{PerfilSingleton.Instance.NombreUsuario}, ha visto tu documento {_publicacionActual.Titulo}";
                    EnviarNotificacion(titulo, mensaje);

                    break;

            }
        }
        private async void VerificarLiker() {
            string token = PerfilSingleton.Instance.TokenJwt;
            int id = _publicacionActual.IdPublicacion;
            var respuesta = await PublicacionServicio.VerificarLikeAsync(token, id);

            _cargandoEstadoLike = true;

            switch (respuesta.Resultado) {
                case (int)HttpStatusCode.OK:

                    btn_Like.IsChecked = true;
                    _yaDioLike = true;
                    btn_Like.Visibility = Visibility.Visible;
                    break;

                default:
                    btn_Like.IsChecked = false;
                    _yaDioLike = false;
                    btn_Like.Visibility = Visibility.Visible;
                    break;
            }

            _cargandoEstadoLike = false;
        }


        private async void Btn_Like_Click(object sender, RoutedEventArgs e) {
            if (_cargandoEstadoLike || _publicacionActual == null) return;

            string token = PerfilSingleton.Instance.TokenJwt;
            int id = _publicacionActual.IdPublicacion;

            if (_yaDioLike) {
                var respuesta = await PublicacionServicio.QuitarLikeAsync(token, id);
                if (respuesta.Resultado == (int)HttpStatusCode.OK) {

                    _yaDioLike = false;
                    _publicacionActual.Likes--;
                    txtb_Likes.Text = _publicacionActual.Likes.ToString();

                    await _socketService.EnviarLikeDocumentoAsync(
                    _publicacionActual.IdPublicacion.ToString(),
                    PerfilSingleton.Instance.IdUsuarioRegistrado.ToString(),
                     PerfilSingleton.Instance.NombreUsuario.ToString(),
                    "removido");


                }
            } else {
                var respuesta = await PublicacionServicio.DarLikeAsync(token, id);
                if (respuesta.Resultado == (int)HttpStatusCode.Created) {
                    _yaDioLike = true;
                    _publicacionActual.Likes++;
                    txtb_Likes.Text = _publicacionActual.Likes.ToString();
                    await _socketService.EnviarLikeDocumentoAsync(
                    _publicacionActual.IdPublicacion.ToString(),
                    PerfilSingleton.Instance.IdUsuarioRegistrado.ToString(),
                     PerfilSingleton.Instance.NombreUsuario.ToString(),
                    "agregado");

                    string titulo = "Me gusta";
                    string mensaje = $"{PerfilSingleton.Instance.NombreUsuario} le ha dado me gusta a tu publicación {_publicacionActual.Titulo}";
                    EnviarNotificacion(titulo, mensaje);
                }
            }
        }



        private void MostrarMensajePersonalizado(string message, DialogType type) {
            var dialog = new VentanaEmergentePersonalizada(message, type) {
                Owner = Window.GetWindow(this)
            };
            dialog.ShowDialog();
        }

        private void CargarDatosPublicacion() {
            if (_publicacionActual == null) return;
            txtb_Likes.Text = _publicacionActual.Likes.ToString();
            txtb_Vistas.Text = _publicacionActual.Vistas.ToString();
            txtb_Descargas.Text = _publicacionActual.Descargas.ToString();
            txtb_Titulo.Text = _publicacionActual.Titulo;
            txtb_Resumen.Text = _publicacionActual.Descripcion;
            txtb_Autor.Text = _publicacionActual.Autor;
            txtb_Fecha.Text = _publicacionActual.Fecha;
        }

        private void VerificarSiInicioSesion(object sender, RoutedEventArgs e) {
            var perfil = PerfilSingleton.Instance;

            if (!string.IsNullOrEmpty(perfil.Correo)) {

                txtb_Frase.Visibility = Visibility.Collapsed;
                img_Visualizar.Visibility = Visibility.Collapsed;
                PdfWebView.Visibility = Visibility.Visible;
                stckp_Accesorios.Visibility = Visibility.Visible;

                elp_Perfil.Visibility = Visibility.Visible;
                brd_Comentarios.Visibility = Visibility.Visible;


            }
        }

        private async Task CargarPdfAsync() {
            if (_publicacionActual == null || string.IsNullOrEmpty(_publicacionActual.Ruta)) {
                MostrarMensajePersonalizado("No se encontró la ruta del documento.", DialogType.Warning);
                return;
            }

            try {
                PdfWebView.Visibility = Visibility.Collapsed;
                var grpc = new FileServiceClientHandler();
                var (pdfBinario, nombreArchivo) = await grpc.DownloadPdfAsync(_publicacionActual.Ruta);

                if (pdfBinario != null && pdfBinario.Length > 0) {
                    string tempPath = System.IO.Path.GetTempPath();
                    _rutaPdfTemporal = System.IO.Path.Combine(tempPath, $"{_publicacionActual.IdPublicacion}_{nombreArchivo}");

                    await File.WriteAllBytesAsync(_rutaPdfTemporal, pdfBinario);

                    await InicializarWebView2Async();
                } else {
                    MostrarMensajePersonalizado("No se pudo descargar el documento.", DialogType.Error);
                }
            } catch (Exception ex) {
                _logger.LogError(ex);
                MostrarMensajePersonalizado("Error al cargar el documento.", DialogType.Error);
            }
        }

        private async Task InicializarWebView2Async() {
            try {
                if (PdfWebView.CoreWebView2 == null)
                    await PdfWebView.EnsureCoreWebView2Async();

                var settings = PdfWebView.CoreWebView2.Settings;
                settings.IsScriptEnabled = false;
                settings.AreDevToolsEnabled = false;
                settings.IsZoomControlEnabled = true;
                settings.AreDefaultContextMenusEnabled = false;
                settings.IsBuiltInErrorPageEnabled = false;

                PdfWebView.NavigationStarting += (s, e) => {
                    if (!e.Uri.Contains(".pdf") && !e.Uri.StartsWith("file://")) {
                        e.Cancel = true;
                    }
                };

                PdfWebView.NavigationCompleted += (s, e) => {
                    if (e.IsSuccess) {
                        PdfWebView.Visibility = Visibility.Visible;
                    } else {
                        MostrarMensajePersonalizado("Error al cargar el documento PDF.", DialogType.Error);
                    }
                };

                if (!string.IsNullOrEmpty(_rutaPdfTemporal) && File.Exists(_rutaPdfTemporal)) {
                    PdfWebView.Source = new Uri(_rutaPdfTemporal);
                }
            } catch (Exception ex) {
                _logger.LogError(ex);
                MostrarMensajePersonalizado("Error al inicializar el visor de PDF.", DialogType.Error);
            }
        }

        private async void DescargarDocumento_Click(object sender, RoutedEventArgs e) {
            if (_publicacionActual == null) return;

            try {
                var saveFileDialog = new Microsoft.Win32.SaveFileDialog {
                    FileName = $"{_publicacionActual.Titulo}.pdf",
                    DefaultExt = ".pdf",
                    Filter = "PDF files (*.pdf)|*.pdf"
                };

                if (saveFileDialog.ShowDialog() == true) {
                    if (!string.IsNullOrEmpty(_rutaPdfTemporal) && File.Exists(_rutaPdfTemporal)) {
                        File.Copy(_rutaPdfTemporal, saveFileDialog.FileName, true);
                        MostrarMensajePersonalizado("Documento descargado exitosamente.", DialogType.Success);
                        await RegistrarDescargaAsync();
                    } else {
                        MostrarMensajePersonalizado("Error: No se encontró el archivo para descargar.", DialogType.Error);
                    }
                }
            } catch (Exception ex) {
                _logger.LogError(ex);
                MostrarMensajePersonalizado("Error al descargar el documento.", DialogType.Error);
            }
        }

        private async Task RegistrarDescargaAsync() {
            string token = PerfilSingleton.Instance.TokenJwt;
            int id = _publicacionActual.IdPublicacion;
            var respuesta = await PublicacionServicio.RegistrarDescargaAsync(token, id);

            switch (respuesta.Resultado) {
                case (int)HttpStatusCode.OK:
                    _publicacionActual.Descargas++;
                    txtb_Descargas.Text = _publicacionActual.Descargas.ToString();
                    await _socketService.EnviarDescargaDocumentoAsync(
                    _publicacionActual.IdPublicacion.ToString(),
                    PerfilSingleton.Instance.IdUsuarioRegistrado.ToString(),
                     PerfilSingleton.Instance.NombreUsuario);


                    string titulo = "Nueva Descarga";
                    string mensaje = $"{PerfilSingleton.Instance.NombreUsuario} ha descargado tu documento {_publicacionActual.Titulo}";
                    EnviarNotificacion(titulo, mensaje);

                    break;



            }
        }


        private async void AgregarComentario_Click(object sender, RoutedEventArgs e) {
            if (!string.IsNullOrWhiteSpace(txtb_NuevoComentario.Text)) {
                string token = PerfilSingleton.Instance.TokenJwt;
                string contenidoComentario = txtb_NuevoComentario.Text;

                CrearComentarioRequest comentario = new();
                comentario.IdPublicacion = _publicacionActual.IdPublicacion;
                comentario.Contenido = contenidoComentario;

                txtb_NuevoComentario.Text = string.Empty;

                var respuesta = await ComentarioServicio.CrearComentarioAsync(token, comentario);

                switch (respuesta.Resultado) {
                    case (int)HttpStatusCode.Created:
                        await _socketService.EnviarComentarioDocumentoAsync(
                            _publicacionActual.IdPublicacion.ToString(),
                            PerfilSingleton.Instance.IdUsuarioRegistrado.ToString(),
                            PerfilSingleton.Instance.NombreUsuario,
                            "",
                            "");
                        AgregarComentarioALista(contenidoComentario);

                        string titulo = "Nuevo comentario";
                        string mensaje = $"{PerfilSingleton.Instance.NombreUsuario} ha comentado tu publicación {_publicacionActual.Titulo}";
                        EnviarNotificacion(titulo, mensaje);

                        break;

                    default:
                        MostrarMensajePersonalizado("Error al agregar comentario", DialogType.Error);
                        txtb_NuevoComentario.Text = contenidoComentario;
                        break;
                }
            }
        }

        private void AgregarComentarioALista(string contenidoComentario) {
            try {
                byte[] imagenBinaria = PerfilSingleton.Instance.FotoPerfilBinaria ?? Array.Empty<byte>();

                var nuevoComentario = new ComentarioVista {
                    Usuario = PerfilSingleton.Instance.NombreUsuario,
                    Texto = contenidoComentario,
                    Fecha = DateTime.Now.ToString("dd/MM/yyyy"),
                    Imagen = ConvertirABitmap(imagenBinaria),
                    EsPropio = true
                };

                Application.Current.Dispatcher.Invoke(() => {
                    _listaComentarioVista.Add(nuevoComentario);

                    if (txtb_SinComentarios.Visibility == Visibility.Visible) {
                        txtb_SinComentarios.Visibility = Visibility.Collapsed;
                    }

                    ScrollToBottom();
                });
            } catch (Exception ex) {
                _logger.LogError(ex);
            }
        }


        private void ScrollToBottom() {
            try {
                var scrollViewer = FindVisualChild<ScrollViewer>(ListaComentarios);
                scrollViewer?.ScrollToEnd();
            } catch (Exception ex) {
                _logger.LogError(ex);
            }
        }

        private T FindVisualChild<T>(DependencyObject obj) where T : DependencyObject {
            if (obj == null) return null;

            for (int i = 0; i < VisualTreeHelper.GetChildrenCount(obj); i++) {
                var child = VisualTreeHelper.GetChild(obj, i);

                if (child is T result)
                    return result;

                var childOfChild = FindVisualChild<T>(child);
                if (childOfChild != null)
                    return childOfChild;
            }
            return null;
        }

        private void EnviarComentario(object sender, MouseButtonEventArgs e) {
            AgregarComentario_Click(sender, e);
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

        private async void EliminarComentario(object sender, RoutedEventArgs e) {
            if (sender is Button btn && btn.Tag is ComentarioVista comentarioUI) {
                try {
                    var comentarioOriginal = await ComentarioServicio.ObtenerComentariosPorPublicacionAsync(_publicacionActual.IdPublicacion);

                    var comentarioAEliminar = comentarioOriginal.Datos?.FirstOrDefault(c =>
                        c.NombreUsuario == comentarioUI.Usuario &&
                        c.Contenido == comentarioUI.Texto &&
                        c.Fecha.ToString("dd/MM/yyyy") == comentarioUI.Fecha);

                    if (comentarioAEliminar != null) {
                        var token = PerfilSingleton.Instance.TokenJwt;

                        var resultado = await ComentarioServicio.EliminarComentarioAsync(token, comentarioAEliminar.IdComentario);
                        if (resultado.Resultado == 200) {
                            Application.Current.Dispatcher.Invoke(() => {
                                _listaComentarioVista.Remove(comentarioUI);

                                if (_listaComentarioVista.Count == 0) {
                                    txtb_SinComentarios.Visibility = Visibility.Visible;
                                }
                            });

                            await _socketService.EnviarComentarioDocumentoAsync(
                            _publicacionActual.IdPublicacion.ToString(),
                            PerfilSingleton.Instance.IdUsuarioRegistrado.ToString(),
                            PerfilSingleton.Instance.NombreUsuario,
                            "",
                            "");

                        } else {
                            MostrarMensajePersonalizado("Error al eliminar comentario", DialogType.Error);
                        }
                    }
                } catch (Exception ex) {
                    _logger.LogError(ex);
                    MostrarMensajePersonalizado("Error al eliminar comentario", DialogType.Error);
                }
            }
        }

        private ScrollViewer FindScrollViewer(DependencyObject obj) {
            for (int i = 0; i < VisualTreeHelper.GetChildrenCount(obj); i++) {
                var child = VisualTreeHelper.GetChild(obj, i);

                if (child is ScrollViewer scrollViewer)
                    return scrollViewer;

                var result = FindScrollViewer(child);
                if (result != null)
                    return result;
            }
            return null;
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
            return bitmap;
        }


        private async void EnviarNotificacion(string titulo, string mensaje) {
            try {

                string idOrigen = PerfilSingleton.Instance.IdUsuarioRegistrado.ToString();
                string idDestino = _publicacionActual.IdUsuario.ToString();
                if (idOrigen != idDestino) {
                    var notificacion = new {
                        accion = "notificacion",
                        UsuarioOrigenId = idOrigen,
                        UsuarioDestinoId = new List<string> { idDestino },
                        Titulo = titulo,
                        Mensaje = mensaje,
                        Tipo = "Documentos",
                        FechaCreacion = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")
                    };

                    string json = JsonConvert.SerializeObject(notificacion);
                    await App.SocketNotificaciones.EnviarMensajeAsync(json);
                }




            } catch (Exception ex) {
                _logger.LogError(ex);
            }

        }


    }
}