using EduShare_Escritorio.Modelos;
using EduShare_Escritorio.Modelos.ComentarioRespuesta;
using EduShare_Escritorio.Modelos.Perfil;
using EduShare_Escritorio.Modelos.Publicaciones;
using EduShare_Escritorio.Servicio;
using EduShare_Escritorio.Utilidades;
using EduShare_Escritorio.Vistas.ModuloLogin;
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

using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using static EduShare_Escritorio.Vistas.VentanaEmergentePersonalizada;
using Color = System.Windows.Media.Color;
using ColorConverter = System.Windows.Media.ColorConverter;

namespace EduShare_Escritorio.Vistas.ModuloDocumentos
{
    public partial class VisualizarDocumento : Page
    {
        public class ComentarioVista
        {
            public required string Usuario { get; set; }
            public required string Texto { get; set; }
            public required BitmapImage Imagen { get; set; }
            public string Alineacion => EsPropio ? "Right" : "Left";
            public bool EsPropio { get; set; }
        }



        private bool _yaDioLike = false;
        private bool _cargandoEstadoLike = false;
        private static readonly LoggerManager _logger = new LoggerManager(typeof(VisualizarDocumento));
        private PublicacionVista _publicacionActual;
        private string _rutaPdfTemporal;
        public VisualizarDocumento()
        {
            InitializeComponent();
            this.Loaded += VerificarSiInicioSesion;

        }
        public VisualizarDocumento(PublicacionVista publicacion) : this()
        {
            _publicacionActual = publicacion;

            CargarDatosPublicacion();
            Perfil_PropertyChanged();
            RegistrarVista();
            VerificarLiker();
            _ = CargarPdfAsync();
            CargarComentarios();
        }

        private async void CargarComentarios()
        {
            ListaComentarios.ItemsSource = null;

            try
            {
                string token = PerfilSingleton.Instance.TokenJwt;
                var respuesta = await ComentarioServicio.ObtenerComentariosPorPublicacionAsync(_publicacionActual.IdPublicacion);

                switch (respuesta.Resultado)
                {
                    case 200:
                        var listaComentarioVista = new List<ComentarioVista>();

                        foreach (var comentario in respuesta.Datos)
                        {
                            bool esPropio = comentario.IdUsuarioRegistrado == PerfilSingleton.Instance.IdUsuarioRegistrado;

                            byte[] imagenBinaria = Array.Empty<byte>();

                            try
                            {
                                var grpc = new FileServiceClientHandler();
                                var (imagen, _) = await grpc.DownloadImageAsync(comentario.FotoPerfil);
                                imagenBinaria = imagen ?? Array.Empty<byte>();
                            }
                            catch (Exception ex)
                            {
                                _logger.LogError(ex);
                            }

                            listaComentarioVista.Add(new ComentarioVista
                            {
                                Usuario = comentario.NombreUsuario,
                                Texto = comentario.Contenido,
                                Imagen = ConvertirABitmap(imagenBinaria),
                                EsPropio = esPropio
                               
                            });
                        }

                        if (listaComentarioVista.Count == 0)
                        {
                            txtb_SinComentarios.Visibility = Visibility.Visible;
                        }

                        ListaComentarios.ItemsSource = listaComentarioVista;
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



        private async void RegistrarVista()
        {

            string token = PerfilSingleton.Instance.TokenJwt;
            int id = _publicacionActual.IdPublicacion;
            var respuesta = await PublicacionServicio.RegistrarVisualizacionAsync(id);

            switch (respuesta.Resultado)
            {
                case (int)HttpStatusCode.OK:
                    _publicacionActual.Vistas++;
                    txtb_Vistas.Text = _publicacionActual.Vistas.ToString();
                    break;
               

                
            }
        }
        private async void VerificarLiker()
        {
            string token = PerfilSingleton.Instance.TokenJwt;
            int id = _publicacionActual.IdPublicacion;
            var respuesta = await PublicacionServicio.VerificarLikeAsync(token, id);

            _cargandoEstadoLike = true;

            switch (respuesta.Resultado)
            {
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


        private async void btn_Like_Click(object sender, RoutedEventArgs e)
        {
            if (_cargandoEstadoLike || _publicacionActual == null) return;

            string token = PerfilSingleton.Instance.TokenJwt;
            int id = _publicacionActual.IdPublicacion;

            if (_yaDioLike)
            {
                var respuesta = await PublicacionServicio.QuitarLikeAsync(token, id);
                if (respuesta.Resultado == (int)HttpStatusCode.OK)
                {
                    _yaDioLike = false;
                    _publicacionActual.Likes--;
                    txtb_Likes.Text = _publicacionActual.Likes.ToString();
                }
            }
            else
            {
                var respuesta = await PublicacionServicio.DarLikeAsync(token, id);
                if (respuesta.Resultado == (int)HttpStatusCode.OK)
                {
                    _yaDioLike = true;
                    _publicacionActual.Likes++;
                    txtb_Likes.Text = _publicacionActual.Likes.ToString();
                }
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

        private void CargarDatosPublicacion() 
        {
            if (_publicacionActual == null) return;
            txtb_Likes.Text = _publicacionActual.Likes.ToString();
            txtb_Vistas.Text = _publicacionActual.Vistas.ToString();
            txtb_Descargas.Text = _publicacionActual.Descargas.ToString();
            txtb_Titulo.Text = _publicacionActual.Titulo;
            txtb_Resumen.Text = _publicacionActual.Descripcion;
            txtb_Autor.Text = _publicacionActual.Autor;
            txtb_Fecha.Text = _publicacionActual.Fecha;
        }

        private void VerificarSiInicioSesion(object sender, RoutedEventArgs e)
        {
            var perfil = PerfilSingleton.Instance;

            if (!string.IsNullOrEmpty(perfil.Correo))
            {
                
                txtb_Frase.Visibility = Visibility.Collapsed;
                img_Visualizar.Visibility = Visibility.Collapsed;
                PdfWebView.Visibility = Visibility.Visible;
                stckp_Accesorios.Visibility = Visibility.Visible;
                
                elp_Perfil.Visibility = Visibility.Visible;
                brd_Comentarios.Visibility = Visibility.Visible;

                SolidColorBrush verde = new((Color)ColorConverter.ConvertFromString("#16b555"));
                brd_Descargar.Background = verde;
                btn_Descargar.IsEnabled = true;
                brd_Descargar.Cursor = Cursors.Hand;
            }
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

        private async void DescargarDocumento_Click(object sender, RoutedEventArgs e)
        {
            if (_publicacionActual == null) return;

            try
            {
                var saveFileDialog = new Microsoft.Win32.SaveFileDialog
                {
                    FileName = $"{_publicacionActual.Titulo}.pdf",
                    DefaultExt = ".pdf",
                    Filter = "PDF files (*.pdf)|*.pdf"
                };

                if (saveFileDialog.ShowDialog() == true)
                {
                    if (!string.IsNullOrEmpty(_rutaPdfTemporal) && File.Exists(_rutaPdfTemporal))
                    {
                        File.Copy(_rutaPdfTemporal, saveFileDialog.FileName, true);
                        MostrarMensajePersonalizado("Documento descargado exitosamente.", DialogType.Success);
                        await RegistrarDescargaAsync();
                    }
                    else
                    {
                        MostrarMensajePersonalizado("Error: No se encontró el archivo para descargar.", DialogType.Error);
                    }
                }
            }
            catch (Exception ex)
            {
                _logger.LogError(ex);
                MostrarMensajePersonalizado("Error al descargar el documento.", DialogType.Error);
            }
        }

        private async Task RegistrarDescargaAsync()
        {
            string token = PerfilSingleton.Instance.TokenJwt;
            int id = _publicacionActual.IdPublicacion;
            var respuesta = await PublicacionServicio.RegistrarDescargaAsync(token,id);

            switch (respuesta.Resultado)
            {
                case (int)HttpStatusCode.OK:
                    _publicacionActual.Descargas++;
                    txtb_Descargas.Text = _publicacionActual.Descargas.ToString();
                    break;



            }
        }


        private async void AgregarComentario_Click(object sender, RoutedEventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(txtb_NuevoComentario.Text))
            {
                string token = PerfilSingleton.Instance.TokenJwt;

                CrearComentarioRequest comentario = new();
                comentario.IdPublicacion = _publicacionActual.IdPublicacion;
                comentario.Contenido = txtb_NuevoComentario.Text;

                var respuesta = await ComentarioServicio.CrearComentarioAsync(token, comentario);
                

                switch (respuesta.Resultado)
                {
                    case (int)HttpStatusCode.OK:
                        txtb_NuevoComentario.Text = string.Empty;
                        CargarComentarios();
                     
                        break;

                    default:
                        txtb_NuevoComentario.Text = string.Empty;
                        break;
                }

                
            }
        }

        private void EnviarComentario(object sender, MouseButtonEventArgs e)
        {
            AgregarComentario_Click(sender, e);
        }


        private void TxtbNuevoComentario(object sender, TextChangedEventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(txtb_NuevoComentario.Text))
            {
                img_EnviarComentario.Source = new BitmapImage(new Uri("/Vistas/Recursos/Iconos/EnviarActivado.png", UriKind.Relative));
                img_EnviarComentario.Cursor = Cursors.Hand;
            }
            else
            {
                img_EnviarComentario.Source = new BitmapImage(new Uri("/Vistas/Recursos/Iconos/EnviarDesactivado.png", UriKind.Relative));
                img_EnviarComentario.Cursor = Cursors.No;
            }
        }

        private async void EliminarComentario(object sender, RoutedEventArgs e)
        {
            if (sender is Button btn && btn.Tag is ComentarioVista comentarioUI)
            {
                var comentarioOriginal = await ComentarioServicio.ObtenerComentariosPorPublicacionAsync(_publicacionActual.IdPublicacion);

                var comentarioAEliminar = comentarioOriginal.Datos.FirstOrDefault(c =>
                    c.NombreUsuario == comentarioUI.Usuario && c.Contenido == comentarioUI.Texto);

                if (comentarioAEliminar != null)
                {
                    var token = PerfilSingleton.Instance.TokenJwt;

                    
                        var resultado = await ComentarioServicio.EliminarComentarioAsync(token, comentarioAEliminar.IdComentario);
                        if (resultado.Resultado == 200)
                        {
                        CargarComentarios(); 
                        }
                        else
                        {
                            MostrarMensajePersonalizado("Error a eliminar comentario", DialogType.Error);
                        }
                    
                }
            }
        }


        private void Perfil_PropertyChanged()
        {
                    var foto = PerfilSingleton.Instance.FotoPerfilBinaria;
                    var bitmap = ConvertirFotoABitmap(foto);
                        img_FotoPerfil.ImageSource = bitmap;
        }

        public ImageSource ConvertirFotoABitmap(byte[] binario)
        {
            if (binario == null || binario.Length == 0) return null;

            using var ms = new MemoryStream(binario);
            var bitmap = new BitmapImage();
            bitmap.BeginInit();
            bitmap.CacheOption = BitmapCacheOption.OnLoad;
            bitmap.StreamSource = ms;
            bitmap.EndInit();
            return bitmap;
        }

        
    }
}