using EduShare_Escritorio.Utilidades;
using EduShare_Escritorio.Vistas.ModuloDocumentos;
using EduShare_Escritorio.Vistas.ModuloLogin;
using EduShare_Escritorio.Vistas.ModuloUsuario;
using System;
using System.Collections.Generic;
using System.ComponentModel;
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
        public MenuPrincipal()
        {
            InitializeComponent();
            PerfilSingleton.Instance.PropertyChanged += Perfil_PropertyChanged;

            this.Loaded += VerificarSiInicioSesion;
        }

        private void Perfil_PropertyChanged(object? sender, PropertyChangedEventArgs e)
        {
            Dispatcher.Invoke(() =>
            {
                tgbtn_MenuPerfil.ApplyTemplate();

                if (e.PropertyName == nameof(PerfilSingleton.FotoPerfilBinaria))
                {
                    var foto = PerfilSingleton.Instance.FotoPerfilBinaria;
                    var bitmap = ConvertirFotoABitmap(foto);

                    if (tgbtn_MenuPerfil.Template.FindName("img_Perfil", tgbtn_MenuPerfil) is ImageBrush brush)
                    {
                        brush.ImageSource = bitmap;
                    }
                }

                if (e.PropertyName == nameof(PerfilSingleton.NombreUsuario))
                {
                    if (tgbtn_MenuPerfil.Template.FindName("txtb_Perfil", tgbtn_MenuPerfil) is TextBlock textBlock)
                    {
                        textBlock.Text = PerfilSingleton.Instance.NombreUsuario;
                    }
                }
            });
        }

        private void MostrarMensajePersonalizado(string message, DialogType type)
        {
            var dialog = new VentanaEmergentePersonalizada(message, type)
            {
                Owner = Window.GetWindow(this)
            };
            dialog.ShowDialog();
        }

        ~MenuPrincipal()
        {
            PerfilSingleton.Instance.PropertyChanged -= Perfil_PropertyChanged;
        }

        private void VerificarSiInicioSesion(object sender, RoutedEventArgs e)
        {
            var perfil = PerfilSingleton.Instance;

            if (!string.IsNullOrEmpty(perfil.Correo))
            {
                tgbtn_Registrarse.Visibility = Visibility.Collapsed;
                tgbtn_MenuLogin.Visibility = Visibility.Collapsed;
                tgbtn_SubirArchivo.Visibility = Visibility.Visible;
                tgbtn_MenuPerfil.Visibility = Visibility.Visible;

                tgbtn_MenuPerfil.ApplyTemplate();
                var textBlock = (TextBlock)tgbtn_MenuPerfil.Template.FindName("txtb_Perfil", tgbtn_MenuPerfil);
                if (textBlock != null)
                {
                    textBlock.Text = perfil.NombreUsuario;
                }

                if (tgbtn_MenuPerfil.Template.FindName("img_Perfil", tgbtn_MenuPerfil) is ImageBrush brush)
                {
                    brush.ImageSource = ConvertirFotoABitmap(perfil.FotoPerfilBinaria);
                }
            }
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
            fra_Menu.Navigate(new SubirDocumento(fra_Menu));
        }

        private void IrAMisDocumentos(object sender, RoutedEventArgs e)
        {
            fra_Menu.Navigate(new MisDocumentos(fra_Menu));
        }
        

        private void IrALaCuenta(object sender, MouseButtonEventArgs e)
        {
            fra_Menu.Navigate(new Perfil(fra_Menu));

        }

        private void IrALaComunidad(object sender, MouseButtonEventArgs e)
        {
            fra_Menu.Navigate(new BuscarPerfil(fra_Menu));

        }
        private void IrATusAmigos(object sender, MouseButtonEventArgs e)
        {
            fra_Menu.Navigate(new Amigos());

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
