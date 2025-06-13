using EduShare_Escritorio.Modelos.Catalogos;
using EduShare_Escritorio.Servicio;
using EduShare_Escritorio.Utilidades;
using EduShare_Escritorio.Vistas.Menus;
using EduShare_Escritorio.Vistas.ModuloLogin;
using EduShare_Escritorio.Vistas.ModuloUsuario;
using Microsoft.Win32;
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

namespace EduShare_Escritorio.Vistas.ModuloDocumentos
{
    public partial class SubirDocumento : Page
    {
        private List<Categoria> _todasLasCategorias = new();
        private List<Rama> _todasLasRamas = new();

        private string _rutaPDF;
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

        private void Cmb_CategoriaSeleccion(object sender, SelectionChangedEventArgs e)
        {
       
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
                cmb_Materia.SelectedValuePath = "idMateriaYRama";
            }
            else
            {
                MostrarMensajePersonalizado("No se pudieron cargar las materias para la rama seleccionada.", DialogType.Warning);
                cmb_Materia.ItemsSource = null;
            }
        }


        private void Cmb_MateriaSeleccion(object sender, SelectionChangedEventArgs e)
        {

        }

        private void Cmb_NivelEducativoSeleccion(object sender, SelectionChangedEventArgs e)
        {

        }


        private void MostrarMensajePersonalizado(string message, DialogType type)
        {
            var dialog = new VentanaEmergentePersonalizada(message, type)
            {
                Owner = Window.GetWindow(this)
            };
            dialog.ShowDialog();
        }

        private void SubirPublicacion(object sender, RoutedEventArgs e)
        {
            RegresarBordeOriginal();
            if (ValidarCamposVacios())
            {
                MostrarMensajePersonalizado("Documento subido con exito", DialogType.Success);
                _frame.Navigate(new MisDocumentos(_frame));
            }
            else
            {
                MostrarMensajePersonalizado("Por favor, llena todos los campos que se solicitan", DialogType.Warning);
            }
        }

        private async Task<bool> SubirArchivoPDFAsync()
        {
            try
            {
                if (string.IsNullOrEmpty(_rutaPDF) || !File.Exists(_rutaPDF))
                {
                    MostrarMensajePersonalizado("Archivo no encontrado.", DialogType.Error);
                    return false;
                }

                byte[] pdfBytes = File.ReadAllBytes(_rutaPDF);

                if (!EsPDFValido(pdfBytes))
                {
                    MostrarMensajePersonalizado("El archivo seleccionado no es un PDF.", DialogType.Error);
                    return false;
                }

                string usuario = PerfilSingleton.Instance.NombreUsuario;

                string nombreArchivo = System.IO.Path.GetFileName(_rutaPDF);

                var grpc = new FileServiceClientHandler();

                var resultado = await grpc.UploadPdfAsync(usuario, nombreArchivo, pdfBytes);

                if (string.IsNullOrWhiteSpace(resultado.filePath) || string.IsNullOrWhiteSpace(resultado.coverPath))
                {
                    MostrarMensajePersonalizado("Error al subir el archivo.", DialogType.Error);
                    return false;
                }

                return true;
            }
            catch (Grpc.Core.RpcException ex)
            {
                MostrarMensajePersonalizado("El servidor de archivos no está disponible. Intenta más tarde.", DialogType.Error);
                return false;
            }
            catch (Exception ex)
            {
                MostrarMensajePersonalizado("Ocurrió un error al subir el archivo.", DialogType.Error);
                return false;
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

        private void ProcesarPDF(string ruta)
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

            MostrarPreview();
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
                    Width = 130,
                    Height = 130,
                    Margin = new Thickness(5),
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
