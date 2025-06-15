using EduShare_Escritorio.Servicio;
using EduShare_Escritorio.Utilidades;
using EduShare_Escritorio.Vistas.ModuloDocumentos;
using EduShare_Escritorio.Vistas.ModuloLogin;
using EduShare_Escritorio.Vistas.ModuloUsuario;
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

namespace EduShare_Escritorio.Vistas.ModuloMenus
{
    public partial class RevisarPublicaciones : Page
    {

        private static readonly LoggerManager _logger = new LoggerManager(typeof(Login));
        private Frame _frame;
        
        public RevisarPublicaciones(Frame frame)
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

                var respuesta = await PublicacionServicio.ObtenerPublicacionesPendientes(token);

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
                                Ruta = publicacion.Ruta,
                                IdUsuario = publicacion.IdUsuarioRegistrado,
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
                        MostrarMensajePersonalizado($"Error: {respuesta.Mensaje}, {respuesta.Resultado}", DialogType.Warning);
                        break;
                }
            }
            catch (Exception ex)
            {
                _logger.LogFatal(ex);
                MostrarMensajePersonalizado("Ocurrió un error inesperado al cargar publicaciones.", DialogType.Error);
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

        private void VerDetallesDocumento(object sender, MouseButtonEventArgs e)
        {
            var border = sender as Border;
            if (border?.DataContext is PublicacionVista publicacion)
            {
                var paginaDetalle = new EvaluarPublicacion(publicacion, _frame);
                NavigationService?.Navigate(paginaDetalle);
            }
        }


    }
}
