using EduShare_Escritorio.Utilidades;
using EduShare_Escritorio.Vistas.ModuloLogin;
using EduShare_Escritorio.Vistas.ModuloUsuario;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
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

namespace EduShare_Escritorio.Vistas.Menus
{
    public partial class MenuPrincipal : Page
    {
        private string _origen;
        public MenuPrincipal(string _origen = "")
        {
            InitializeComponent();
            this._origen = _origen;
            this.Loaded += VerificarSiInicioSesion;

            if (_origen == "Login")
            {
                tgbtn_Registrarse.Visibility = Visibility.Collapsed;
                tgbtn_MenuLogin.Visibility = Visibility.Collapsed;
                tgbtn_SubirArchivo.Visibility = Visibility.Visible;
                tgbtn_MenuPerfil.Visibility = Visibility.Visible;
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

        private void VerificarSiInicioSesion(object sender, RoutedEventArgs e)
        {
            var perfil = PerfilSingleton.Instance;
            var textBlock = (TextBlock)tgbtn_MenuPerfil.Template.FindName("txtb_Perfil", tgbtn_MenuPerfil);
            if (textBlock != null)
            {
                if (!string.IsNullOrEmpty(perfil.Correo))
                {
                    
                    textBlock.Text = $"{perfil.NombreUsuario}";
                }
            }

            
        }


        private void TextBox_GotFocus(object sender, RoutedEventArgs e)
        {
            if (txtb_BuscarTextBox.Text == "Buscar")
            {
                txtb_BuscarTextBox.Text = "";
                txtb_BuscarTextBox.Foreground = Brushes.Black;
            }
        }

        private void TextBox_LostFocus(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtb_BuscarTextBox.Text))
            {
                txtb_BuscarTextBox.Text = "Buscar";
                txtb_BuscarTextBox.Foreground = Brushes.Gray;
            }
        }
        private void IrAlLogin(object sender, MouseButtonEventArgs e)
        {
            Login login = new Login();
            this.NavigationService.Navigate(login);
        }

        private void IrARegistrarse(object sender, RoutedEventArgs e)
        {
            RegistrarUsuario registrarUsuario = new RegistrarUsuario();
            this.NavigationService.Navigate(registrarUsuario);
        }

        private void IrASubirArchivo(object sender, RoutedEventArgs e)
        {

        }


        private void IrALaCuenta(object sender, MouseButtonEventArgs e)
        {
            fra_Menu.Navigate(new Perfil(fra_Menu));

        }

        private void MostrarPantallaPrincipal(object sender, MouseButtonEventArgs e)
        {
            fra_Menu.Source = new System.Uri("SubMenu.xaml", System.UriKind.Relative);
        }

        private void BuscarRecurso(object sender, MouseButtonEventArgs e)
        {
            string texto = txtb_BuscarTextBox.Text.Trim();

            if (string.IsNullOrWhiteSpace(texto) || texto == "Buscar")
            {
                 return;
            }

            fra_Menu.Navigate(new EduShare_Escritorio.Vistas.ModuloDocumentos.ExplorarDocumentos(texto));
        }


        private void CerrarSesion(object sender, MouseButtonEventArgs e)
        {
            PerfilSingleton.Instance.Reset();

            Login login = new Login();
            this.NavigationService.Navigate(login);
        }

        public static BitmapImage? ConvertirABitmap(byte[] datos)
        {
            if (datos == null || datos.Length == 0) return null;

            using (var stream = new MemoryStream(datos))
            {
                var image = new BitmapImage();
                image.BeginInit();
                image.CacheOption = BitmapCacheOption.OnLoad;
                image.StreamSource = stream;
                image.EndInit();
                return image;
            }
        }


    }
}
