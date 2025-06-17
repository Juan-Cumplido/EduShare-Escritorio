using EduShare_Escritorio.Servicio;
using EduShare_Escritorio.Utilidades;
using EduShare_Escritorio.Vistas.ModuloLogin;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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

    public partial class MisDocumentos : Page
    {
        private static readonly LoggerManager _logger = new LoggerManager(typeof(Login));
        private Frame _frame;
        public MisDocumentos(Frame frame)
        {
            InitializeComponent();
            _frame = frame;
            CargarDocumentos();
        }

        private void MostrarMensajePersonalizado(string message, DialogType type)
        {
            var dialog = new VentanaEmergentePersonalizada(message, type)
            {
                Owner = Window.GetWindow(this)
            };
            dialog.ShowDialog();
        }

        private async void CargarDocumentos()
        {
            itmc_DocumentosControl.ItemsSource = null;

            try
            {
                string token = PerfilSingleton.Instance.TokenJwt;
                var respuesta = await PublicacionServicio.ObtenerPublicacionesPropias(token);

                switch (respuesta.Resultado)
                {
                    case 200:
                        var listaPublicacionesVista = new List<PublicacionVista>();

                        foreach (var publicacion in respuesta.Datos)
                        {
                            byte[] imagenBinaria = Array.Empty<byte>();

                            try
                            {
                                var grpc = new FileServiceClientHandler();
                                var (imagen, _) = await grpc.DownloadCoverAsync(publicacion.Ruta);
                                imagenBinaria = imagen ?? Array.Empty<byte>();
                            }
                            catch (Exception ex)
                            {
                                _logger.LogError(ex);
                                MostrarMensajePersonalizado("Error del servidor. No se pudieron recuperar las portadas de las publicaciones.", DialogType.Error);
                            }

                            listaPublicacionesVista.Add(new PublicacionVista
                            {
                                Titulo = publicacion.Titulo,
                                IdPublicacion = publicacion.IdPublicacion,
                                Descripcion = publicacion.ResuContenido,
                                Estado = publicacion.Estado,
                                Autor = publicacion.NombreCompleto,
                                Fecha = publicacion.Fecha.ToString("dd/MM/yyyy HH:mm"),
                                Likes = publicacion.NumeroLiker,
                                Descargas = publicacion.NumeroDescargas,
                                Vistas = publicacion.NumeroVisualizaciones,
                                Imagen = ConvertirABitmap(imagenBinaria)
                            });
                        }

                        if (listaPublicacionesVista.Count == 0)
                        {
                            grd_SinPublicaciones.Visibility = Visibility.Visible;
                        }

                        itmc_DocumentosControl.ItemsSource = listaPublicacionesVista;
                        break;

                    case 404:
                        grd_SinPublicaciones.Visibility = Visibility.Visible;
                        break;

                    case (int)HttpStatusCode.Unauthorized:
                        MostrarMensajePersonalizado("Tu sesión ha expirado. Por favor, inicia sesión nuevamente.", DialogType.Error);
                        NavigationService.Navigate(new Login());
                        PerfilSingleton.Instance.Reset();
                        break;

                    case 500:
                        MostrarMensajePersonalizado("Error del servidor al obtener las publicaciones.", DialogType.Error);
                        break;

                    default:
                        MostrarMensajePersonalizado($"Error: {respuesta.Mensaje}", DialogType.Warning);
                        break;
                }
            }
            catch (Exception ex)
            {
                _logger.LogFatal(ex);
                MostrarMensajePersonalizado("Ocurrió un error inesperado al cargar publicaciones.", DialogType.Error);
            }
        }

        private async void EliminarDocumento_Click(object sender, RoutedEventArgs e)
        {
            if (sender is Button boton && boton.Tag is int idPublicacion)
            {
                var confirmar = new VentanaEmergentePersonalizada(
                    "¿Estás seguro de que deseas eliminar esta publicación?",
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
                    var respuesta = await PublicacionServicio.EliminarPublicacionAsync(token, idPublicacion);

                    switch (respuesta.Resultado)
                    {
                        case 200:
                            MostrarMensajePersonalizado("La publicación ha sido eliminada correctamente.", DialogType.Success);
                            CargarDocumentos(); 
                            break;

                        case 404:
                            MostrarMensajePersonalizado("No se encontró la publicación.", DialogType.Warning);
                            break;

                        case (int)HttpStatusCode.Unauthorized:
                            MostrarMensajePersonalizado("Tu sesión ha expirado. Por favor, inicia sesión nuevamente.", DialogType.Error);
                            NavigationService.Navigate(new Login());
                            PerfilSingleton.Instance.Reset();
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
                    MostrarMensajePersonalizado("Ocurrió un error inesperado al eliminar la publicación.", DialogType.Error);
                }
            }
        }


        public BitmapImage? ConvertirABitmap(byte[] datos)
        {
            if (datos == null || datos.Length == 0) return null;

            using var stream = new MemoryStream(datos);
            var image = new BitmapImage();
            image.BeginInit();
            image.CacheOption = BitmapCacheOption.OnLoad;
            image.StreamSource = stream;
            image.EndInit();
            return image;
        }
    }
}
