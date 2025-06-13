using EduShare_Escritorio.Modelos.Perfil;
using EduShare_Escritorio.Servicio;
using EduShare_Escritorio.Utilidades;
using EduShare_Escritorio.Vistas.Menus;
using EduShare_Escritorio.Vistas.ModuloUsuario;
using System;
using System.Collections.Generic;
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

namespace EduShare_Escritorio.Vistas.ModuloLogin
{
    public partial class Login : Page
    {
        private static readonly LoggerManager _logger = new LoggerManager(typeof(CatalogosServicio));
        public Login()
        {
            InitializeComponent();

        }

        private void MostrarMensajePersonalizado(string message, DialogType type)
        {
            var dialog = new VentanaEmergentePersonalizada(message, type)
            {
                Owner = Window.GetWindow(this)
            };
            dialog.ShowDialog();
        }

        private void RegresarAlMenuPrincipal(object sender, MouseButtonEventArgs e)
        {
            MenuPrincipal menuPrincipal = new();
            this.NavigationService.Navigate(menuPrincipal);
        }

        private void IrARegistrarse(object sender, RoutedEventArgs e)
        {
            RegistrarUsuario registrarUsuario = new ();
            this.NavigationService.Navigate(registrarUsuario);
        }

        private void IrARecuperarContraseña(object sender, RoutedEventArgs e)
        {
            RecuperarContraseña recuperarContraseña = new ();
            this.NavigationService.Navigate(recuperarContraseña);
        }

        private void UserIdTextBox_GotFocus(object sender, RoutedEventArgs e)
        {
            if (txtb_Usuario.Text == "Ingrese su correo o usuario")
            {
                txtb_Usuario.Text = "";
                txtb_Usuario.Foreground = Brushes.Black;
            }
        }

        private void UserIdTextBox_LostFocus(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtb_Usuario.Text))
            {
                txtb_Usuario.Text = "Ingrese su correo o usuario";
                txtb_Usuario.Foreground = Brushes.Gray;
            }
        }

        private void PasswordBox_GotFocus(object sender, RoutedEventArgs e)
        {
            txtb_Contraseña.Visibility = Visibility.Collapsed;
        }

        private void PasswordBox_LostFocus(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(pwb_PasswordBox.Password))
            {
                txtb_Contraseña.Visibility = Visibility.Visible;
            }
        }

        private void PasswordBox_PasswordChanged(object sender, RoutedEventArgs e)
        {
            txtb_Contraseña.Visibility = string.IsNullOrEmpty(pwb_PasswordBox.Password) ? Visibility.Visible : Visibility.Collapsed;
        }
        private bool isPasswordVisible = false;

        private void ActivarDesactivarVisibilidad(object sender, MouseButtonEventArgs e)
        {
            isPasswordVisible = !isPasswordVisible;

            if (isPasswordVisible)
            {
                txt_ContraseñaVisible.Text = pwb_PasswordBox.Password;
                txt_ContraseñaVisible.Visibility = Visibility.Visible;
                pwb_PasswordBox.Visibility = Visibility.Collapsed;
            }
            else
            {
                pwb_PasswordBox.Password = txt_ContraseñaVisible.Text;
                pwb_PasswordBox.Visibility = Visibility.Visible;
                txt_ContraseñaVisible.Visibility = Visibility.Collapsed;
            }
        }

        private void VisiblePassword_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (isPasswordVisible)
            {
                pwb_PasswordBox.Password = txt_ContraseñaVisible.Text;
            }
        }

        private bool VerificarCampos()
        {
            bool usuario = !string.IsNullOrWhiteSpace(txtb_Usuario.Text) && txtb_Usuario.Text != "Ingrese su correo o usuario";

            string contraseña = isPasswordVisible ? txt_ContraseñaVisible.Text : pwb_PasswordBox.Password;
            bool contrasenaValida = !string.IsNullOrWhiteSpace(contraseña) && txtb_Contraseña.Text == "Ingrese su contraseña";

            if (!usuario) brd_Usuario.BorderBrush = Brushes.Red;
            if (!contrasenaValida) brd_Contraseña.BorderBrush = Brushes.Red;

            return usuario && contrasenaValida;
        }

        private void RegresarBordeNormal()
        {
            SolidColorBrush verde = new((Color)ColorConverter.ConvertFromString("#16b555"));
            brd_Usuario.BorderBrush = verde;
            brd_Contraseña.BorderBrush= verde;
        }

        private void BtnLoginClick(object sender, RoutedEventArgs e)
        {
            RegresarBordeNormal();

            if (VerificarCampos())
            {
                string usuario = txtb_Usuario.Text;
                string contrasenia = isPasswordVisible ? txt_ContraseñaVisible.Text : pwb_PasswordBox.Password;
                string contraseniaHashed = Hasher.HashToSHA2(contrasenia);

                var credenciales = new UsuarioLogin { Identifier = usuario, Contrasenia = contraseniaHashed };

                RespuestaLogin(credenciales);
            }
            else
            {
                MostrarMensajePersonalizado("Por favor, asegúrate de ingresar usuario y contraseña.", DialogType.Warning);
               
            }

        }

        private async void RespuestaLogin(UsuarioLogin login)
        {
            btn_Login.IsEnabled = false;
            img_Loading.Visibility = Visibility.Visible;

            try
            {
                var respuesta = await UsuarioServicio.IniciarSesionAsync(login);

                switch (respuesta.Estado)
                {
                    case (int)HttpStatusCode.OK:
                        await CrearPerfilSingletonAsync(respuesta.Datos, respuesta.Token);
                        DesplegarMenu(respuesta.Datos.TipoAcceso);
                        break;
                    case (int)HttpStatusCode.Unauthorized:
                    case (int)HttpStatusCode.BadRequest:
                        MostrarMensajePersonalizado("Usuario o contraseña incorrectos. Revisa tus credenciales.", DialogType.Warning);
                        break;
                    case (int)HttpStatusCode.Forbidden:
                        MostrarMensajePersonalizado("Estimado estudiante, su cuenta fue agregada a la lista negra por incumplir las normas en un documento", DialogType.Warning);
                        break;
                    case (int)HttpStatusCode.InternalServerError:
                        MostrarMensajePersonalizado("Error interno del servidor. Inténtalo más tarde.", DialogType.Error);
                        break;
                }
            }
            catch (Exception ex)
            {
                MostrarMensajePersonalizado("Ocurrió un error inesperado: " + ex.Message, DialogType.Error);
            }
            finally
            {
                btn_Login.IsEnabled = true;
                img_Loading.Visibility = Visibility.Collapsed;
            }
        }




        private async Task CrearPerfilSingletonAsync(DatosUsuario datos, string token)
        {
            var perfil = PerfilSingleton.Instance;
            perfil.IdUsuarioRegistrado = datos.IdUsuario;
            perfil.Nombre = datos.Nombre;
            perfil.PrimerApellido = datos.PrimerApellido;
            perfil.SegundoApellido = datos.SegundoApellido;
            perfil.NombreUsuario = datos.NombreUsuario;
            perfil.Correo = datos.Correo;
            perfil.TokenJwt = token;

            if (!string.IsNullOrEmpty(datos.FotoPerfil))
            {
                try
                {
                    var grpcClient = new FileServiceClientHandler();
                    var (fotoBinaria, _) = await grpcClient.DownloadImageAsync(datos.FotoPerfil);

                    perfil.FotoPerfilBinaria = fotoBinaria ?? Array.Empty<byte>();
                }
                catch (Exception ex)
                {
                    perfil.FotoPerfilBinaria = Array.Empty<byte>();

                    _logger.LogFatal(ex);
                    MostrarMensajePersonalizado("Error interno del servidor. Su foto de perfil no se pudo recuperar", DialogType.Warning);
                }
            }
        }



        private void DesplegarMenu(string role)
        {
            switch (role)
            {
                case "Registrado":
                    NavigationService.Navigate(new MenuPrincipal());
                    break;

                case "Administrador":
                    NavigationService.Navigate(new MenuAdministrador());
                    break;
            }
        }
    }
}
