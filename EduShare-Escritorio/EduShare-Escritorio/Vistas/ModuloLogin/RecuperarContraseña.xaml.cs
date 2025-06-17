using EduShare_Escritorio.Modelos;
using EduShare_Escritorio.Servicio;
using EduShare_Escritorio.Utilidades;
using EduShare_Escritorio.Vistas.Menus;
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
    public partial class RecuperarContraseña : Page
    {
        public RecuperarContraseña()
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
            MenuPrincipal menuPrincipal = new ();
            this.NavigationService.Navigate(menuPrincipal);
        }

        private void RegresarLogin(object sender, MouseButtonEventArgs e)
        {
            Login login = new ();
            this.NavigationService.Navigate(login);
        }

        private void EnviarCorreo(object sender, RoutedEventArgs e)
        {
            string correo = txtb_Correo.Text.Trim();

            if (EsUnCorreo(correo))
            {
                MandarCorreo(correo);
            }

        }

        private bool EsUnCorreo(string correo)
        {
            bool resultado;

            if (string.IsNullOrEmpty(correo) || correo == "Correo electrónico*")
            {
                MostrarMensajePersonalizado("¡Campos vacíos!\r\nPor favor, ingrese un correo", DialogType.Warning);
                resultado = false;
            }
            else if (!(Validador.ValidarCorreo(correo)))
            {
                MostrarMensajePersonalizado("¡Correo invalido!\r\nPor favor, ingrese un correo valido", DialogType.Warning);
                resultado=false;
            }
            else
            {
                resultado = true;
            }
            return resultado;
        }

        private async void MandarCorreo(string correo)
        {
            Respuesta respuesta = await UsuarioServicio.EnviarCodigoACorreo(correo);

            switch (respuesta.Codigo)
            {
                case (int)HttpStatusCode.OK:
                    MostrarMensajePersonalizado("¡Código enviado!\r\nEl código se a enviado exitosamente a su correo", DialogType.Success);
                    NavigationService.Navigate(new RestablecerContraseña(correo));
                    break;
                case (int)HttpStatusCode.NotFound:
                     MostrarMensajePersonalizado("¡Correo no encontrado!\r\nNo se encontró el email ingresado. Intenta nuevamente", DialogType.Warning);
                    break;
                case (int)HttpStatusCode.InternalServerError:
                    MostrarMensajePersonalizado("¡Correo no enviado!\r\nError interno del servidor. Inténtelo más tarde.", DialogType.Error);
                    break;
            }
        }


        private void UserIdTextBox_GotFocus(object sender, RoutedEventArgs e)
        {
            if (txtb_Correo.Text == "Correo electrónico*")
            {
                txtb_Correo.Text = "";
                txtb_Correo.Foreground = Brushes.Black;
            }
        }

        private void UserIdTextBox_LostFocus(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtb_Correo.Text))
            {
                txtb_Correo.Text = "Correo electrónico*";
                txtb_Correo.Foreground = Brushes.Gray;
            }
        }
    }
}
