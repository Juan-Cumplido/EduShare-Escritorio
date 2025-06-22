using EduShare_Escritorio.Modelos.Publicaciones;
using EduShare_Escritorio.Servicio;
using EduShare_Escritorio.Utilidades;
using EduShare_Escritorio.Vistas.ModuloLogin;
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
    public partial class ExplorarDocumentos : Page
    {
        private static readonly LoggerManager _logger = new LoggerManager(typeof(Login));
        private readonly string _busqueda;
        private readonly string _tipoBusqueda;
        private readonly int _id;
        private List<PublicacionVista> _publicacionesCache;
        private List<PublicacionVista> _publicacionesOriginales;

        public ExplorarDocumentos(string textoBusqueda, string tipoBusqueda, int id)
        {
            InitializeComponent();
            _tipoBusqueda = tipoBusqueda;
            _busqueda = textoBusqueda;
            _id = id;
            _publicacionesCache = new List<PublicacionVista>();
            _publicacionesOriginales = new List<PublicacionVista>();

            BusquedaSingleton.Instance.EstablecerBusqueda(tipoBusqueda, textoBusqueda, id);

            if (BusquedaSingleton.Instance.YaTieneBusqueda() &&
                _publicacionesCache != null && _publicacionesCache.Any())
            {
                AplicarFiltro(tipoBusqueda, textoBusqueda, id);
            }
            else
            {
                ElegirTipoBusqueda(tipoBusqueda, textoBusqueda, id);
            }
        }

        private void AplicarFiltro(string tipo, string texto, int id)
        {
            if (_publicacionesOriginales == null || !_publicacionesOriginales.Any())
            {
                ElegirTipoBusqueda(tipo, texto, id);
                return;
            }

            var publicacionesFiltradas = _publicacionesOriginales.ToList();

            switch (tipo)
            {
                case "PorNombre":
                    if (!string.IsNullOrWhiteSpace(texto))
                    {
                        publicacionesFiltradas = publicacionesFiltradas
                            .Where(p => p.Titulo.Contains(texto, StringComparison.OrdinalIgnoreCase))
                            .ToList();
                    }
                    break;

                case "Popularidad":
                    switch (texto)
                    {
                        case "Más descargados":
                            publicacionesFiltradas = publicacionesFiltradas
                                .OrderByDescending(p => p.Descargas)
                                .ToList();
                            break;

                        case "Mejor calificados":
                            publicacionesFiltradas = publicacionesFiltradas
                                .OrderByDescending(p => p.Likes)
                                .ToList();
                            break;

                        case "Más vistos":
                            publicacionesFiltradas = publicacionesFiltradas
                                .OrderByDescending(p => p.Vistas)
                                .ToList();
                            break;
                    }
                    break;

                case "Categoria":
                    publicacionesFiltradas = publicacionesFiltradas
                        .Where(p => p.IdCategoria == id)
                        .ToList();
                    break;

                case "NivelEducativo":
                    publicacionesFiltradas = publicacionesFiltradas
                        .Where(p => p.NivelEducativo.Equals(texto, StringComparison.OrdinalIgnoreCase))
                        .ToList();
                    break;

                case "Rama":
                    publicacionesFiltradas = publicacionesFiltradas
                        .Where(p => p.IdRama == id)
                        .ToList();
                    break;
            }

            _publicacionesCache = publicacionesFiltradas;

            itmc_DocumentosControl.ItemsSource = publicacionesFiltradas;
            grd_SinPublicaciones.Visibility = publicacionesFiltradas.Any() ? Visibility.Collapsed : Visibility.Visible;
        }

        private void MostrarMensajePersonalizado(string message, DialogType type)
        {
            var dialog = new VentanaEmergentePersonalizada(message, type)
            {
                Owner = Window.GetWindow(this)
            };
            dialog.ShowDialog();
        }

        private void ElegirTipoBusqueda(string tipo, string texto, int id)
        {
            switch (tipo)
            {
                case "PorNombre":
                case "Popularidad":
                    ObtenerPublicaciones();
                    break;
                case "Categoria":
                    ObtenerPublicacionesCategoria(id);
                    break;
                case "Rama":
                    ObtenerPublicacionesRamas(id);
                    break;
                case "NivelEducativo":
                    ObtenerPublicacionesNivelEducativo(texto);
                    break;
                default:
                    ObtenerPublicaciones();
                    break;
            }
        }

        private async void ObtenerPublicaciones() =>
            await ObtenerPublicacionesAsync(PublicacionServicio.ObtenerPublicaciones);

        private async void ObtenerPublicacionesCategoria(int id) =>
            await ObtenerPublicacionesAsync(() => PublicacionServicio.ObtenerPorCategoria(id));

        private async void ObtenerPublicacionesNivelEducativo(string nivel) =>
            await ObtenerPublicacionesAsync(() => PublicacionServicio.ObtenerPorNivelEducativo(nivel));

        private async void ObtenerPublicacionesRamas(int rama) =>
            await ObtenerPublicacionesAsync(() => PublicacionServicio.ObtenerPorRama(rama));

        private async Task ObtenerPublicacionesAsync(Func<Task<RespuestaPublicacion<List<Publicacion>>>> fuentePublicaciones)
        {
            itmc_DocumentosControl.ItemsSource = null;
            grd_SinPublicaciones.Visibility = Visibility.Collapsed;

            try
            {
                var respuesta = await fuentePublicaciones();

                switch (respuesta.Resultado)
                {
                    case 200:
                        var publicacionesVista = await ConvertirAPublicacionesVistaAsync(respuesta.Datos);

                        _publicacionesOriginales = publicacionesVista.ToList();

                        var publicacionesFiltradas = AplicarFiltrosEnMemoria(publicacionesVista, _tipoBusqueda, _busqueda, _id);

                        _publicacionesCache = publicacionesFiltradas;

                        if (!publicacionesFiltradas.Any())
                        {
                            grd_SinPublicaciones.Visibility = Visibility.Visible;
                        }
                        else
                        {
                            itmc_DocumentosControl.ItemsSource = publicacionesFiltradas;
                        }
                        break;

                    case 404:
                        grd_SinPublicaciones.Visibility = Visibility.Visible;
                        break;

                    case (int)HttpStatusCode.Unauthorized:
                        MostrarMensajePersonalizado("Tu sesión ha expirado. Por favor, inicia sesión nuevamente.", DialogType.Error);
                        NavigationService.Navigate(new Login());
                        PerfilSingleton.Instance.Reset();
                        BusquedaSingleton.Instance.LimpiarBusqueda();
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

        private List<PublicacionVista> AplicarFiltrosEnMemoria(List<PublicacionVista> publicaciones, string tipoBusqueda, string busqueda, int id)
        {
            var resultado = publicaciones.ToList();

            switch (tipoBusqueda)
            {
                case "PorNombre":
                    if (!string.IsNullOrWhiteSpace(busqueda))
                    {
                        resultado = resultado
                            .Where(p => p.Titulo.Contains(busqueda, StringComparison.OrdinalIgnoreCase))
                            .ToList();
                    }
                    break;

                case "Popularidad":
                    if (!string.IsNullOrWhiteSpace(busqueda))
                    {
                        resultado = busqueda switch
                        {
                            "Más descargados" => resultado.OrderByDescending(p => p.Descargas).ToList(),
                            "Mejor calificados" => resultado.OrderByDescending(p => p.Likes).ToList(),
                            "Más vistos" => resultado.OrderByDescending(p => p.Vistas).ToList(),
                            _ => resultado
                        };
                    }
                    break;

                case "Categoria":
                    resultado = resultado.Where(p => p.IdCategoria == id).ToList();
                    break;

                case "NivelEducativo":
                    resultado = resultado.Where(p => p.NivelEducativo.Equals(busqueda, StringComparison.OrdinalIgnoreCase)).ToList();
                    break;

                case "Rama":
                    resultado = resultado.Where(p => p.IdRama == id).ToList();
                    break;
            }

            return resultado;
        }

        private async Task<List<PublicacionVista>> ConvertirAPublicacionesVistaAsync(List<Publicacion> publicaciones)
        {
            var lista = new List<PublicacionVista>();

            foreach (var publicacion in publicaciones)
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
                  
                }

                lista.Add(new PublicacionVista
                {
                    Titulo = publicacion.Titulo,
                    IdUsuario = publicacion.IdUsuarioRegistrado,
                    IdPublicacion = publicacion.IdPublicacion,
                    IdCategoria = publicacion.IdCategoria,
                    Descripcion = publicacion.ResuContenido,
                    NivelEducativo = publicacion.NivelEducativo,
                    Estado = publicacion.Estado,
                    Autor = publicacion.NombreCompleto,
                    Fecha = publicacion.Fecha.ToString("dd/MM/yyyy HH:mm"),
                    Likes = publicacion.NumeroLiker,
                    Descargas = publicacion.NumeroDescargas,
                    Vistas = publicacion.NumeroVisualizaciones,
                    IdRama = publicacion.IdMateriaYRama,
                    Ruta = publicacion.Ruta, 
                    Imagen = ConvertirABitmap(imagenBinaria)
                });
            }

            return lista;
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
                var paginaDetalle = new VisualizarDocumento(publicacion);
                NavigationService?.Navigate(paginaDetalle);
            }
        }
    }
}