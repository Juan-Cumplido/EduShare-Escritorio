using EduShare_Escritorio.Modelos.ComentarioRespuesta;
using EduShare_Escritorio.Servicio;
using EduShare_Escritorio.Utilidades;
using EduShare_Escritorio.Vistas.Menus;
using EduShare_Escritorio.Vistas.ModuloLogin;
using EduShare_Escritorio.Vistas.ModuloMenus;
using EduShare_Escritorio.Vistas.ModuloUsuario;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
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
using static EduShare_Escritorio.Vistas.VentanaEmergentePersonalizada;

namespace EduShare_Escritorio.Vistas.ModuloDocumentos
{
    public partial class EvaluarPublicacion : Page
    {
        private static readonly LoggerManager _logger = new LoggerManager(typeof(EvaluarPublicacion));
        private PublicacionVista _publicacionActual;
        private string _rutaPdfTemporal;
        private Frame _frame;
        public EvaluarPublicacion()
        {
            InitializeComponent();
        }

        public EvaluarPublicacion(PublicacionVista publicacion, Frame frame) : this()
        {
            _frame = frame;
            _publicacionActual = publicacion;
            CargarDatosPublicacion();
            _ = CargarPdfAsync();

        }

        private void CargarDatosPublicacion()
        {
            if (_publicacionActual == null) return;
            txtb_Titulo.Text = _publicacionActual.Titulo;
            txtb_Resumen.Text = _publicacionActual.Descripcion;
            txtb_Autor.Text = _publicacionActual.Autor;
            txtb_Fecha.Text = _publicacionActual.Fecha;
           
        }

        private async void RechazarPublicacion(object sender, MouseButtonEventArgs e)
        {
            
            var confirmar = new VentanaEmergentePersonalizada(
                   "¿Estás seguro de que deseas rechazar la publicación?",
                   DialogType.Confirmation)
            {
                Owner = Window.GetWindow(this)
            };

            bool confirmado = confirmar.ShowDialog() == true;

            if (!confirmado)
                return;

            try
            {
                string token = PerfilSingleton.Instance.TokenJwt;
                var respuesta = await PublicacionServicio.RechazarPublicacionAsync(token, _publicacionActual.IdPublicacion);

                switch (respuesta.Resultado)
                {
                    case 200:
                        MostrarMensajePersonalizado("La publicación ha sido rechazada.", DialogType.Success);
                        _frame.Navigate(new RevisarPublicaciones(_frame));
                        string titulo = "Publicación rechazada";
                        string mensaje = "Tu publicación fue rechazada por incumplir las normas.";
                        EnviarNotificacion(titulo, mensaje);
                        break;

                    case 404:
                        MostrarMensajePersonalizado("La publicación no existe", DialogType.Warning);
                        break;

                    case (int)HttpStatusCode.Unauthorized:
                        MostrarMensajePersonalizado("Tu sesión ha expirado. Por favor, inicia sesión nuevamente.", DialogType.Error);
                        NavigationService.Navigate(new Login());
                        PerfilSingleton.Instance.Reset();
                        break;

                    case 500:
                        MostrarMensajePersonalizado("Error en el servidor, intente más tarde", DialogType.Error);
                        break;

                    default:
                        MostrarMensajePersonalizado($"Error: {respuesta.Mensaje}", DialogType.Warning);
                        break;
                }
            }
            catch (Exception ex)
            {
                _logger.LogFatal(ex);
                MostrarMensajePersonalizado("Ocurrió un error inesperado al banear al usuario.", DialogType.Error);
            }
        }

        private void MostrarMensajePersonalizado(string message, DialogType type)
        {
            var dialog = new VentanaEmergentePersonalizada(message, type)
            {
                Owner = Window.GetWindow(this)
            };
            dialog.ShowDialog();
        }


        private async Task CargarPdfAsync()
        {
            if (_publicacionActual == null || string.IsNullOrEmpty(_publicacionActual.Ruta))
            {
                MostrarMensajePersonalizado("No se encontró la ruta del documento.", DialogType.Warning);
                return;
            }

            try
            {
                PdfWebView.Visibility = Visibility.Collapsed;
                var grpc = new FileServiceClientHandler();
                var (pdfBinario, nombreArchivo) = await grpc.DownloadPdfAsync(_publicacionActual.Ruta);

                if (pdfBinario != null && pdfBinario.Length > 0)
                {
                    string tempPath = System.IO.Path.GetTempPath();
                    _rutaPdfTemporal = System.IO.Path.Combine(tempPath, $"{_publicacionActual.IdPublicacion}_{nombreArchivo}");

                    await File.WriteAllBytesAsync(_rutaPdfTemporal, pdfBinario);

                    await InicializarWebView2Async();
                }
                else
                {
                    MostrarMensajePersonalizado("No se pudo descargar el documento.", DialogType.Error);
                }
            }
            catch (Exception ex)
            {
                _logger.LogError(ex);
                MostrarMensajePersonalizado("Error al cargar el documento.", DialogType.Error);
            }
        }

        private async void EnviarNotificacion(string titulo, string mensaje)
        {
            try
            {
                int idOrigen = PerfilSingleton.Instance.IdUsuarioRegistrado;
                string idDestino = _publicacionActual.IdUsuario.ToString();
                var notificacion = new
                {
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
            catch (Exception ex)
            {
                _logger.LogError(ex);
            }

        }

        private async Task InicializarWebView2Async()
        {
            try
            {
                if (PdfWebView.CoreWebView2 == null)
                    await PdfWebView.EnsureCoreWebView2Async();

                var settings = PdfWebView.CoreWebView2.Settings;
                settings.IsScriptEnabled = false;
                settings.AreDevToolsEnabled = false;
                settings.IsZoomControlEnabled = true;
                settings.AreDefaultContextMenusEnabled = false;
                settings.IsBuiltInErrorPageEnabled = false;

                PdfWebView.NavigationStarting += (s, e) =>
                {
                    if (!e.Uri.Contains(".pdf") && !e.Uri.StartsWith("file://"))
                    {
                        e.Cancel = true;
                    }
                };

                PdfWebView.NavigationCompleted += (s, e) =>
                {
                    if (e.IsSuccess)
                    {
                        PdfWebView.Visibility = Visibility.Visible;
                    }
                    else
                    {
                        MostrarMensajePersonalizado("Error al cargar el documento PDF.", DialogType.Error);
                    }
                };

                if (!string.IsNullOrEmpty(_rutaPdfTemporal) && File.Exists(_rutaPdfTemporal))
                {
                    PdfWebView.Source = new Uri(_rutaPdfTemporal);
                }
            }
            catch (Exception ex)
            {
                _logger.LogError(ex);
                MostrarMensajePersonalizado("Error al inicializar el visor de PDF.", DialogType.Error);
            }
        }

        private async void btn_Guardar_Click(object sender, RoutedEventArgs e)
        {
            var confirmar = new VentanaEmergentePersonalizada(
                    "¿Estás seguro de que deseas aceptar la publicación y que se exponga al publico?",
                    DialogType.Confirmation)
            {
                Owner = Window.GetWindow(this)
            };

            bool confirmado = confirmar.ShowDialog() == true;

            if (!confirmado)
                return;

            try
            {
                string token = PerfilSingleton.Instance.TokenJwt;
                var respuesta = await PublicacionServicio.AprobarPublicacionAsync(token, _publicacionActual.IdPublicacion);

                switch (respuesta.Resultado)
                {
                    case 200:
                        MostrarMensajePersonalizado("La publicación ha sido aceptada con exito ", DialogType.Success);
                        _frame.Navigate(new RevisarPublicaciones(_frame));
                        string titulo = "Publicación aceptada";
                        string mensaje = "Tu publicación ha sido aprobada y ya está disponible. ¡Gracias por compartir!";
                        EnviarNotificacion(titulo, mensaje);
                        break;

                    case 404:
                        MostrarMensajePersonalizado("La publicación no existe", DialogType.Warning);
                        break;

                    case (int)HttpStatusCode.Unauthorized:
                        MostrarMensajePersonalizado("Tu sesión ha expirado. Por favor, inicia sesión nuevamente.", DialogType.Error);
                        NavigationService.Navigate(new Login());
                        PerfilSingleton.Instance.Reset();
                        break;

                    case 500:
                        MostrarMensajePersonalizado("Error en el servidor, intente más tarde", DialogType.Error);
                        break;

                    default:
                        MostrarMensajePersonalizado($"Error: {respuesta.Mensaje}", DialogType.Warning);
                        break;
                }
            }
            catch (Exception ex)
            {
                _logger.LogFatal(ex);
                MostrarMensajePersonalizado("Ocurrió un error inesperado al banear al usuario.", DialogType.Error);
            }

        }

        private async void ToggleButton_Checked(object sender, RoutedEventArgs e)
        {
            var confirmar = new VentanaEmergentePersonalizada(
                   "¿Estás seguro de que deseas mandar a la lista negra a este estudiante?",
                   DialogType.Confirmation)
            {
                Owner = Window.GetWindow(this)
            };

            bool confirmado = confirmar.ShowDialog() == true;

            if (!confirmado)
                return;

            try
            {
                string token = PerfilSingleton.Instance.TokenJwt;
                var respuesta = await UsuarioServicio.BanearUsuarioAsync(token, _publicacionActual.IdUsuario);

                switch (respuesta.Resultado)
                {
                    case 200:
                        MostrarMensajePersonalizado("El usuario fue agregado a la lista negra con exito ", DialogType.Success);
                        await PublicacionServicio.RechazarPublicacionAsync(token, _publicacionActual.IdPublicacion);

                        _frame.Navigate(new RevisarPublicaciones(_frame));
                        break;

                    case (int)HttpStatusCode.Unauthorized:
                        MostrarMensajePersonalizado("Tu sesión ha expirado. Por favor, inicia sesión nuevamente.", DialogType.Error);
                        NavigationService.Navigate(new Login());
                        PerfilSingleton.Instance.Reset();
                        break;
                    case 409:
                        MostrarMensajePersonalizado("El usuario ya se encuentra en la lista negra", DialogType.Error);
                        break;

                    case 500:
                        MostrarMensajePersonalizado(respuesta.Mensaje, DialogType.Error);
                        break;

                    default:
                        MostrarMensajePersonalizado($"Error: {respuesta.Mensaje}", DialogType.Warning);
                        break;
                }
            }
            catch (Exception ex)
            {
                _logger.LogFatal(ex);
                MostrarMensajePersonalizado("Ocurrió un error inesperado al banear al usuario.", DialogType.Error);
            }
        }
    }
}
