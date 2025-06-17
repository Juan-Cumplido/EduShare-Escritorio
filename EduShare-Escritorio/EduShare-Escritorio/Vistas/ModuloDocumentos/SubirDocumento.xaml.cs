using EduShare_Escritorio.Modelos.Catalogos;
using EduShare_Escritorio.Modelos.Publicaciones;
using EduShare_Escritorio.Servicio;
using EduShare_Escritorio.Utilidades;
using EduShare_Escritorio.Vistas.Menus;
using EduShare_Escritorio.Vistas.ModuloLogin;
using EduShare_Escritorio.Vistas.ModuloUsuario;
using Microsoft.Win32;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Drawing.Imaging;
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
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace EduShare_Escritorio.Vistas.ModuloDocumentos
{
    public partial class SubirDocumento : Page
    {
        private static readonly LoggerManager _logger = new LoggerManager(typeof(Login));
        private List<Categoria> _todasLasCategorias = new();
        private List<Rama> _todasLasRamas = new();

        private string _rutaPDF;
        private string _rutaDocumento;
        private bool _pdfCargado = false;
        private Frame _frame;
        public SubirDocumento(Frame frame)
        {
            InitializeComponent();
            _frame = frame;
            this.Loaded += CargarComboBox;
        }

        private async void CargarComboBox(object sender, RoutedEventArgs e)
        {
            await InicializarCombosAsync();
        }

        private async Task InicializarCombosAsync()
        {

            var categorias = await CatalogosServicio.ObtenerCategoriasAsync();
            var ramas = await CatalogosServicio.ObtenerRamasAsync();

            if (categorias.Resultado != (int)HttpStatusCode.OK || categorias.Datos == null || ramas.Datos == null)
            {
                MostrarMensajePersonalizado("No hay conexion con el servidor. Intente más tarde cargar su documento.", DialogType.Error);
                return;
            }

            _todasLasCategorias = categorias.Datos;

            cmb_Categoria.ItemsSource = _todasLasCategorias;
            cmb_Categoria.DisplayMemberPath = "NombreCategoria";
            cmb_Categoria.SelectedValuePath = "IdCategoria";

            _todasLasRamas = ramas.Datos;
            cmb_Rama.ItemsSource = _todasLasRamas;
            cmb_Rama.DisplayMemberPath = "NombreRama";
            cmb_Rama.SelectedValuePath = "IdRama";
            cmb_Rama.Items.Refresh();

        }


        private async void Cmb_RamaSeleccion(object sender, SelectionChangedEventArgs e)
        {
            if (cmb_Rama.SelectedValue == null)
                return;

            int idRamaSeleccionado = (int)cmb_Rama.SelectedValue;

            var respuesta = await CatalogosServicio.ObtenerMateriaPorRamaAsync(idRamaSeleccionado);

            if (respuesta.Resultado == 200 && respuesta.Datos != null)
            {
                grd_Materia.Visibility = Visibility.Visible;
                cmb_Materia.ItemsSource = respuesta.Datos;
                cmb_Materia.DisplayMemberPath = "NombreMateria";
                cmb_Materia.SelectedValuePath = "IdMateriaYRama";
            }
            else
            {
                MostrarMensajePersonalizado("No se pudieron cargar las materias para la rama seleccionada.", DialogType.Warning);
                cmb_Materia.ItemsSource = null;
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

        private async void SubirPublicacion(object sender, RoutedEventArgs e)
        {
            RegresarBordeOriginal();

            if (!ValidarCamposVacios())
            {
                MostrarMensajePersonalizado("Por favor, llena todos los campos que se solicitan", DialogType.Warning);
                return;
            }

            var rutaArchivo = _rutaDocumento;
            if (string.IsNullOrEmpty(rutaArchivo)) return;

            var idDocumento = await CrearDocumentoAsync(rutaArchivo);
            if (idDocumento == null) return;

            await CrearPublicacionAsync(idDocumento.Value);
        }

        private async Task<int?> CrearDocumentoAsync(string filePath)
        {
            string token = PerfilSingleton.Instance.TokenJwt;

            var respuesta = await PublicacionServicio.CrearDocumentoAsync(token, txtb_Titulo.Text.Trim(), _rutaDocumento);

            
            if (respuesta.Resultado == (int)HttpStatusCode.Unauthorized)
            {
                    MostrarMensajePersonalizado("Tu sesión ha expirado. Por favor, inicia sesión nuevamente.", DialogType.Error);
                    NavigationService.Navigate(new Login());
                    PerfilSingleton.Instance.Reset();
                    return null;
            }
            if (respuesta.Resultado != (int)HttpStatusCode.Created)
            {
                MostrarMensajePersonalizado("Error a subir su documento. Intente más tarde", DialogType.Error);
                return null;
            }

            return respuesta.IdDocumento;
        }

        private async Task CrearPublicacionAsync(int idDocumento)
        {
            var publicacion = new Publicacion
            {
                ResuContenido = txtb_Contenido.Text.Trim(),
                IdDocumento = idDocumento,
                IdMateriaYRama = (int)cmb_Materia.SelectedValue,
                IdCategoria = (int)cmb_Categoria.SelectedValue,
                NivelEducativo = cmb_NivelEducativo.Text
            };

            string token = PerfilSingleton.Instance.TokenJwt;
            var respuesta = await PublicacionServicio.CrearPublicacionAsync(token, publicacion);

            switch (respuesta.Resultado)
            {
                case (int)HttpStatusCode.Created:
                    MostrarMensajePersonalizado("Documento subido con éxito", DialogType.Success);
                    EnviarNotificacion();
                    _frame.Navigate(new MisDocumentos(_frame));
                    break;
                case (int)HttpStatusCode.Unauthorized:
                    MostrarMensajePersonalizado("Tu sesión ha expirado. Por favor, inicia sesión nuevamente.", DialogType.Error);
                    NavigationService.Navigate(new Login());
                    PerfilSingleton.Instance.Reset();
                    break;
                case 500:
                    MostrarMensajePersonalizado("Error en el servidor. Intente más tarder", DialogType.Error);
                    break;

                default:
                    MostrarMensajePersonalizado("Error  al crear la publicación.", DialogType.Error);
                    break;
            }
        }

        private async void EnviarNotificacion()
        {
            try
            {
                string token = PerfilSingleton.Instance.TokenJwt;
                int idOrigen = PerfilSingleton.Instance.IdUsuarioRegistrado;
                string nombre = PerfilSingleton.Instance.NombreUsuario;
                var respuesta = await PerfilServicio.ObtenerSeguidores(token);

                if (respuesta?.Datos != null)
                {
                    List<int> idsSeguidores = respuesta.Datos
                        .Select(s => s.IdUsuarioRegistrado)
                        .ToList();

                    var notificacion = new
                    {
                        accion = "notificacion",
                        UsuarioOrigenId = idOrigen,
                        UsuarioDestinoId = respuesta,
                        Titulo = "Nuevo documento",
                        Mensaje = $"¡{PerfilSingleton.Instance.NombreUsuario} subio un documento que te puede interesar! 🎉",
                        Tipo = "publicación",
                        FechaCreacion = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")
                    };

                    string json = JsonConvert.SerializeObject(notificacion);
                    await App.SocketNotificaciones.EnviarMensajeAsync(json);


                }
            }
            catch (Exception ex)
            {
                _logger.LogError(ex);
                Console.WriteLine($"❌ Error enviando notificación: {ex.Message}");
            }

        }


        private async Task SubirArchivoPDFAsync(string rutaPDF)
        {
            try
            {
                byte[] pdfBytes = File.ReadAllBytes(rutaPDF);

                if (!EsPDFValido(pdfBytes))
                {
                    MostrarMensajePersonalizado("El archivo seleccionado no es un PDF.", DialogType.Error);
                    return;
                }

                string usuario = PerfilSingleton.Instance.NombreUsuario;
                string nombreArchivo = System.IO.Path.GetFileName(rutaPDF);

                var grpc = new FileServiceClientHandler();
                var resultado = await grpc.UploadPdfAsync(usuario, nombreArchivo, pdfBytes);

                if (string.IsNullOrWhiteSpace(resultado.filePath) || string.IsNullOrWhiteSpace(resultado.coverPath))
                {
                    MostrarMensajePersonalizado("Error al subir el archivo.", DialogType.Error);
                    return;
                }
                _rutaDocumento = resultado.filePath;
                MostrarPreviewDesdeRuta(resultado.coverPath);

            }
            catch (Grpc.Core.RpcException ex)
            {
                _logger.LogFatal(ex);
                MostrarMensajePersonalizado("El servidor de archivos no está disponible. Intenta más tarde.", DialogType.Error);
                LimpiarPreview();
            }
            catch (Exception ex)
            {
                _logger.LogFatal(ex);
                MostrarMensajePersonalizado("Ocurrió un error al subir el archivo.", DialogType.Error);
                LimpiarPreview();
            }
        }

        private bool EsPDFValido(byte[] bytes)
        {
            if (bytes == null || bytes.Length < 4)
                return false;

            return bytes[0] == 0x25 && bytes[1] == 0x50 && bytes[2] == 0x44 && bytes[3] == 0x46;
        }


        public void RegresarBordeOriginal()
        {
            SolidColorBrush verde = new((Color)ColorConverter.ConvertFromString("#16b555"));
            brd_Titulo.BorderBrush = verde;
            brd_Contenido.BorderBrush = verde;
            brd_Categoria.BorderBrush = verde;
            brd_NivelEducativo.BorderBrush = verde;
            brd_Rama.BorderBrush = verde;
            brd_Materia.BorderBrush = verde;
            brd_DropArea.BorderBrush = verde;
        }

        public bool ValidarCamposVacios()
        {
            bool titulo = !string.IsNullOrWhiteSpace(txtb_Titulo.Text) && txtb_Titulo.Text != "Escribe un título";

            bool contenido = !string.IsNullOrWhiteSpace(txtb_Contenido.Text) && txtb_Contenido.Text != "Escribe un resumen rápido: ¿De qué se trata este documento? ¿Dónde se originó? ¿Quién podría encontrar esta información útil? ¿Cuáles son los aspectos más destacados?";

            bool cmbNivelEducativo = cmb_NivelEducativo.SelectedItem != null;
            bool cmbCategoria = cmb_Categoria.SelectedItem != null;
            bool cmbMateria = cmb_Materia.SelectedItem != null;
            bool cmbRama = cmb_Rama.SelectedItem != null;

            if (!titulo) brd_Titulo.BorderBrush = Brushes.Red;
            if (!contenido) brd_Contenido.BorderBrush = Brushes.Red;

            if (!cmbNivelEducativo) brd_NivelEducativo.BorderBrush = Brushes.Red;
            if (!cmbCategoria) brd_Categoria.BorderBrush = Brushes.Red;
            if (!cmbMateria) brd_Materia.BorderBrush = Brushes.Red;
            if (!cmbRama) brd_Rama.BorderBrush = Brushes.Red;
            if (!_pdfCargado) brd_DropArea.BorderBrush = Brushes.Red;

            return titulo && contenido && cmbNivelEducativo && cmbCategoria
            && cmbMateria && cmbRama && _pdfCargado;
        }

        private void ResumenGotFocus(object sender, RoutedEventArgs e)
        {
            if (txtb_Contenido.Text == "Escribe un resumen rápido: ¿De qué se trata este documento? ¿Dónde se originó? ¿Quién podría encontrar esta información útil? ¿Cuáles son los aspectos más destacados?")
            {
                txtb_Contenido.Text = "";
                txtb_Contenido.Foreground = Brushes.Black;
            }
        }

        private void ResumenLostFocus(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtb_Contenido.Text))
            {
                txtb_Contenido.Text = "Escribe un resumen rápido: ¿De qué se trata este documento? ¿Dónde se originó? ¿Quién podría encontrar esta información útil? ¿Cuáles son los aspectos más destacados?";
                txtb_Contenido.Foreground = Brushes.Gray;
            }
        }

        private void TituloGotFocus(object sender, RoutedEventArgs e)
        {
            if (txtb_Titulo.Text == "Escribe un título")
            {
                txtb_Titulo.Text = "";
                txtb_Titulo.Foreground = Brushes.Black;
            }
        }

        private void TituloLostFocus(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtb_Contenido.Text))
            {
                txtb_Titulo.Text = "Escribe un título";
                txtb_Titulo.Foreground = Brushes.Gray;
            }
        }

        private void AbrirExplorador(object sender, MouseButtonEventArgs e)
        {
            if (!_pdfCargado)
            {
                AbrirExplorador();
            }
        }

        private void DropAreaDragEnter(object sender, DragEventArgs e)
        {
            if (_pdfCargado)
            {
                e.Effects = DragDropEffects.None;
                e.Handled = true;
                return;
            }

            if (e.Data.GetDataPresent(DataFormats.FileDrop))
                brd_DropArea.Background = new SolidColorBrush(Color.FromRgb(220, 255, 220));
        }


        private void DropAreaDragLeave(object sender, DragEventArgs e)
        {
            brd_DropArea.Background = new SolidColorBrush(Color.FromRgb(240, 240, 240));
        }

        private void DropAreaDrop(object sender, DragEventArgs e)
        {
            if (_pdfCargado)
                return; 

            brd_DropArea.Background = new SolidColorBrush(Color.FromRgb(240, 240, 240));
            if (e.Data.GetDataPresent(DataFormats.FileDrop))
            {
                string[] files = (string[])e.Data.GetData(DataFormats.FileDrop);
                if (files.Length > 0 && System.IO.Path.GetExtension(files[0]).ToLower() == ".pdf")
                {
                    ProcesarPDF(files[0]);
                }
            }
        }


        private void AbrirExplorador()
        {
            OpenFileDialog dlg = new OpenFileDialog
            {
                Filter = "Archivos PDF (*.pdf)|*.pdf"
            };

            if (dlg.ShowDialog() == true)
            {
                ProcesarPDF(dlg.FileName);
            }
        }

        private async void ProcesarPDF(string ruta)
        {
            FileInfo fileInfo = new FileInfo(ruta);
            long sizeInBytes = fileInfo.Length;
            long maxSizeInBytes = 20 * 1024 * 1024;

            if (sizeInBytes > maxSizeInBytes)
            {
                MostrarMensajePersonalizado("El archivo PDF excede el tamaño máximo permitido de 20 MB.", DialogType.Warning);
                return;
            }

            _rutaPDF = ruta;

            string nombreArchivo = System.IO.Path.GetFileNameWithoutExtension(ruta);
            nombreArchivo = SanitizarNombreArchivo(nombreArchivo);


            if (string.IsNullOrWhiteSpace(txtb_Titulo.Text) || txtb_Titulo.Text == "Escribe un título")
            {
                txtb_Titulo.Text = nombreArchivo;
                txtb_Titulo.Foreground = Brushes.Black;
            }

            await SubirArchivoPDFAsync(ruta);
        }

        private string SanitizarNombreArchivo(string nombre)
        {
            string limpio = nombre.Replace(' ', '_');

            limpio = new string(limpio
                .Where(c => char.IsLetterOrDigit(c) || c == '_')
                .ToArray());

            if (limpio.Length > 100)
                limpio = limpio.Substring(0, 100);

            return limpio;
        }


        private async void MostrarPreviewDesdeRuta(string portadaRelativePath)
        {
            try
            {
                _pdfCargado = true;
                brd_DropArea.Cursor = Cursors.Arrow;
                brd_DropArea.Background = Brushes.White;
                grd_DropContent.Children.Clear();

                FileServiceClientHandler grpcHandler = new();
                var (bytes, _) = await grpcHandler.DownloadCoverAsync(portadaRelativePath);

                if (bytes == null)
                {
                    MostrarMensajePersonalizado("No se pudo cargar la portada del documento.", DialogType.Warning);
                    return;
                }

                var portadaImage = new BitmapImage();
                using (var stream = new MemoryStream(bytes))
                {
                    portadaImage.BeginInit();
                    portadaImage.CacheOption = BitmapCacheOption.OnLoad;
                    portadaImage.StreamSource = stream;
                    portadaImage.EndInit();
                }

                var preview = new Image
                {
                    Source = portadaImage,
                    Width = 150,
                    Height = 150,
                    Margin = new Thickness(1),
                    Stretch = Stretch.Uniform,
                    HorizontalAlignment = HorizontalAlignment.Center,
                    VerticalAlignment = VerticalAlignment.Center,
                };

                var deleteIcon = new Button
                {
                    Content = "🗑",
                    Width = 24,
                    Height = 24,
                    Background = Brushes.Transparent,
                    Foreground = Brushes.Red,
                    BorderThickness = new Thickness(0),
                    FontSize = 16,
                    HorizontalAlignment = HorizontalAlignment.Right,
                    VerticalAlignment = VerticalAlignment.Top,
                    Cursor = Cursors.Hand,
                    ToolTip = "Eliminar archivo"
                };

                deleteIcon.Click += (s, e) => LimpiarPreview();

                var panel = new Grid();
                panel.Children.Add(preview);
                panel.Children.Add(deleteIcon);

                grd_DropContent.Children.Add(panel);
            }
            catch
            {
                MostrarMensajePersonalizado("Error al mostrar la portada del PDF.", DialogType.Error);
            }
        }


        private void LimpiarPreview()
        {
            _rutaPDF = null;
            _pdfCargado = false;
            _rutaDocumento = null;
            txtb_Titulo.Text = "Escribe un título";
            txtb_Titulo.Foreground = Brushes.Gray;

            SolidColorBrush gris = new((Color)ColorConverter.ConvertFromString("#f0f0f0"));
            brd_DropArea.Background = gris;
            brd_DropArea.Cursor = Cursors.Hand;

            grd_DropContent.Children.Clear();

            var sp = new StackPanel { HorizontalAlignment = HorizontalAlignment.Center, VerticalAlignment = VerticalAlignment.Center };
            sp.Children.Add(new Image
            {
                Source = new BitmapImage(new Uri("/Vistas/Recursos/Iconos/SubirPdf.png", UriKind.Relative)),
                Width = 80,
                Height = 80,
                Opacity = 0.6
            });
            sp.Children.Add(new TextBlock
            {
                Text = "Haz clic o arrastra aquí para subir tu PDF",
                FontFamily = new FontFamily("Calibri"),
                FontSize = 16,
                Foreground = Brushes.Gray,
                TextAlignment = TextAlignment.Center,
                Margin = new Thickness(10),
                TextWrapping = TextWrapping.Wrap
            });

            grd_DropContent.Children.Add(sp);
        }

    }
}
