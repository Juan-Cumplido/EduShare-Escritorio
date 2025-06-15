using EduShare_Escritorio.Modelos.Perfil;
using EduShare_Escritorio.Servicio;
using EduShare_Escritorio.Utilidades;
using EduShare_Escritorio.Vistas.ModuloDocumentos;
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

namespace EduShare_Escritorio.Vistas.ModuloUsuario
{
    public partial class BuscarPerfil : Page
    {
        private List<UsuarioPerfil> _todosLosPerfiles = new List<UsuarioPerfil>();
        private static readonly LoggerManager _logger = new LoggerManager(typeof(Login));
        private Frame _frame;  
        public BuscarPerfil(Frame frame)
        {
            InitializeComponent();
            _frame = frame;
            CargarUsuarios();
        }


        private void MostrarMensajePersonalizado(string message, DialogType type)
        {
            var dialog = new VentanaEmergentePersonalizada(message, type)
            {
                Owner = Window.GetWindow(this)
            };
            dialog.ShowDialog();
        }

        private void BuscarAmigo(object sender, MouseButtonEventArgs e)
        {

        }

        private async void CargarUsuarios()
        {
            ListaComentarios.ItemsSource = null;

            try
            {
                string token = PerfilSingleton.Instance.TokenJwt;

                var respuesta = await PerfilServicio.BuscarPerfiles(token);

                switch (respuesta.Resultado)
                {
                    case 200:
                        var listaPerfiles = new List<UsuarioPerfil>();

                        foreach (var perfil in respuesta.Datos)
                        {
                        
                            if (perfil.IdUsuarioRegistrado == PerfilSingleton.Instance.IdUsuarioRegistrado)
                                continue;

                            byte[] imagenBinaria = Array.Empty<byte>();
                            try
                            {
                                var grpc = new FileServiceClientHandler();
                                var (imagen, _) = await grpc.DownloadImageAsync(perfil.FotoPerfil);
                                imagenBinaria = imagen ?? Array.Empty<byte>();
                            }
                            catch (Exception ex)
                            {
                                _logger.LogError(ex);
                                MostrarMensajePersonalizado("Error del servidor. No se pudieron recuperar las fotos de perfiles.", DialogType.Error);
                            }

                            listaPerfiles.Add(new UsuarioPerfil
                            {
                                IdUsuarioRegistrado = perfil.IdUsuarioRegistrado,
                                Nombre = perfil.Nombre,
                                PrimerApellido = perfil.PrimerApellido,
                                SegundoApellido = perfil.SegundoApellido,
                                NombreUsuario = perfil.NombreUsuario,
                                NivelEducativo = perfil.NivelEducativo,
                                Seguidore = perfil.NumeroSeguidores,
                                Publicaciones = perfil.NumeroPublicaciones,
                                FotoPerfilRuta = perfil.FotoPerfil,
                                Imagen = ConvertirABitmap(imagenBinaria)
                            });
                        }

                        _todosLosPerfiles = listaPerfiles;
                        ListaComentarios.ItemsSource = listaPerfiles;
                        break;

                    case 500:
                        MostrarMensajePersonalizado("Error del servidor. No se pudieron recuperar los perfiles.", DialogType.Error);
                        break;

                    case (int)HttpStatusCode.Unauthorized:
                        MostrarMensajePersonalizado("Tu sesión ha expirado. Por favor, inicia sesión nuevamente.", DialogType.Error);
                        NavigationService.Navigate(new Login());
                        PerfilSingleton.Instance.Reset();
                        break;

                    default:
                        MostrarMensajePersonalizado($"Error: {respuesta.Mensaje}", DialogType.Warning);
                        break;
                }
            }
            catch (Exception ex)
            {
                _logger.LogFatal(ex);
                MostrarMensajePersonalizado("Ocurrió un error inesperado.", DialogType.Error);
            }
        }

        private void TextBox_GotFocus(object sender, RoutedEventArgs e)
        {
            if (txtb_BuscarTextBox.Text == "Buscar perfil")
            {
                txtb_BuscarTextBox.Text = "";
                txtb_BuscarTextBox.Foreground = Brushes.Black;
            }
        }

        private void TextBox_LostFocus(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtb_BuscarTextBox.Text))
            {
                txtb_BuscarTextBox.Text = "Buscar perfil";
                txtb_BuscarTextBox.Foreground = Brushes.Gray;
            }
        }

        private void IrADetallesPerfil(object sender, RoutedEventArgs e)
        {
            if (sender is Button button && button.Tag is UsuarioPerfil usuario)
            {
                _frame.Navigate(new VisualizarPerfilAmigo(_frame, usuario));
            }
        }

        private void BuscarPerfil_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (_todosLosPerfiles == null || _todosLosPerfiles.Count == 0)
                return;

            var texto = txtb_BuscarTextBox.Text?.Trim().ToLower() ?? "";

            if (string.IsNullOrWhiteSpace(texto) || texto == "buscar perfil")
            {
                ListaComentarios.ItemsSource = _todosLosPerfiles;
                return;
            }

            var resultadosFiltrados = _todosLosPerfiles.Where(p =>
                (!string.IsNullOrWhiteSpace(p.Nombre) && p.Nombre.ToLower().Contains(texto)) ||
                (!string.IsNullOrWhiteSpace(p.PrimerApellido) && p.PrimerApellido.ToLower().Contains(texto)) ||
                (!string.IsNullOrWhiteSpace(p.SegundoApellido) && p.SegundoApellido.ToLower().Contains(texto)) ||
                (!string.IsNullOrWhiteSpace(p.NombreUsuario) && p.NombreUsuario.ToLower().Contains(texto))
            ).ToList();

            ListaComentarios.ItemsSource = resultadosFiltrados;
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
