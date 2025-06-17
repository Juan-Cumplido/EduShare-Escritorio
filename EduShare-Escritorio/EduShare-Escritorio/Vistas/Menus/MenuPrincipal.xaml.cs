using EduShare_Escritorio.Modelos.Catalogos;
using EduShare_Escritorio.NotificacionesYChat;
using EduShare_Escritorio.Utilidades;
using EduShare_Escritorio.Vistas.ModuloChats;
using EduShare_Escritorio.Vistas.ModuloDocumentos;
using EduShare_Escritorio.Vistas.ModuloLogin;
using EduShare_Escritorio.Vistas.ModuloUsuario;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Net.Sockets;
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
            BusquedaSingleton.Instance.LimpiarBusqueda();
        }

        private void IrAMisDocumentos(object sender, RoutedEventArgs e)
        {
            fra_Menu.Navigate(new MisDocumentos(fra_Menu));
            BusquedaSingleton.Instance.LimpiarBusqueda();
        }

        private void IrAChats(object sender, RoutedEventArgs e)
        {
            fra_Menu.Navigate(new ListaChst(fra_Menu));
            BusquedaSingleton.Instance.LimpiarBusqueda();
        }


        private void IrALaCuenta(object sender, MouseButtonEventArgs e)
        {
            fra_Menu.Navigate(new Perfil(fra_Menu));
            BusquedaSingleton.Instance.LimpiarBusqueda();
        }

        private void IrALaComunidad(object sender, MouseButtonEventArgs e)
        {
            fra_Menu.Navigate(new BuscarPerfil(fra_Menu));
            BusquedaSingleton.Instance.LimpiarBusqueda();
        }
        private void IrATusAmigos(object sender, MouseButtonEventArgs e)
        {
            fra_Menu.Navigate(new Amigos());
            BusquedaSingleton.Instance.LimpiarBusqueda();
        }
        

        private void MostrarPantallaPrincipal(object sender, MouseButtonEventArgs e)
        {
            fra_Menu.Source = new System.Uri("SubMenu.xaml", System.UriKind.Relative);
            BusquedaSingleton.Instance.LimpiarBusqueda();
        }

        private void BuscarRecurso(object sender, MouseButtonEventArgs e)
        {
            string texto = txtb_BuscarTextBox.Text.Trim();

            if (string.IsNullOrWhiteSpace(texto) || texto == "Buscar")
            {
                return;
            }

            string tipoBusqueda = "PorNombre";
            int id = 0;

            
            BusquedaSingleton.Instance.EstablecerBusqueda(tipoBusqueda, texto, id);

            fra_Menu.Navigate(new ExplorarDocumentos(texto, tipoBusqueda, id));
        }


        private void Categoria_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (sender is TextBlock tb && int.TryParse(tb.Tag?.ToString(), out int categoriaId))
            {
                string texto = "";
                string tipoBusqueda = "Categoria";
                int id = categoriaId;
                BusquedaSingleton.Instance.EstablecerBusqueda(tipoBusqueda, texto, id);
                fra_Menu.Navigate(new ExplorarDocumentos(texto, tipoBusqueda, id));
               

            }
        }

        private void Rama_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (sender is TextBlock tb && int.TryParse(tb.Tag?.ToString(), out int ramaId))
            {
                string texto = "";
                string tipoBusqueda = "Rama";
                int id = ramaId;
                BusquedaSingleton.Instance.EstablecerBusqueda(tipoBusqueda, texto, id);
                fra_Menu.Navigate(new ExplorarDocumentos(texto, tipoBusqueda, id));
              
            }
        }

        private void NivelEducativo_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (sender is TextBlock tb)
            {

                string nombreRama = tb.Text.Trim();
                string tipoBusqueda = "NivelEducativo";
                int id = 0;
                BusquedaSingleton.Instance.EstablecerBusqueda(tipoBusqueda, nombreRama, id);
                fra_Menu.Navigate(new ExplorarDocumentos(nombreRama, tipoBusqueda, id));

            }
        }

        private void Popularidad_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (sender is TextBlock tb)
            {

                string nombreRama = tb.Text.Trim();
                string tipoBusqueda = "Popularidad";
                int id = 0;
                BusquedaSingleton.Instance.EstablecerBusqueda(tipoBusqueda, nombreRama, id);
                fra_Menu.Navigate(new ExplorarDocumentos(nombreRama, tipoBusqueda, id));

                
            }
        }

        private async void CerrarSesion(object sender, MouseButtonEventArgs e)
        {
            await App.SocketNotificaciones.DesconectarAsync(PerfilSingleton.Instance.IdUsuarioRegistrado.ToString());
            PerfilSingleton.Instance.Reset();

            Login login = new Login();
            this.NavigationService.Navigate(login);
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
