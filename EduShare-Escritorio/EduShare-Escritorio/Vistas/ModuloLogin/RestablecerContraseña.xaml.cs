﻿using EduShare_Escritorio.Modelos;
using EduShare_Escritorio.Modelos.Perfil;
using EduShare_Escritorio.Servicio;
using EduShare_Escritorio.Utilidades;
using EduShare_Escritorio.Vistas.Menus;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Text.RegularExpressions;
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
    public partial class RestablecerContraseña : Page
    {
        private bool _isPasswordVisible1 = false;
        private bool _isPasswordVisible2 = false;
        private readonly string _correo;
        public RestablecerContraseña(string correo)
        {
            InitializeComponent();
            _correo = correo;
        }   


        private void MostrarMensajePersonalizado(string message, DialogType type)
        {
            var dialog = new VentanaEmergentePersonalizada(message, type)
            {
                Owner = Window.GetWindow(this)
            };
            dialog.ShowDialog();
        }

        private bool ValidarEntrada()
        {
            string contraseña = pwb_Contraseña.Password;
            string confirmarContraseña = pwb_ConfirmarContraseña.Password;
            string codigo = txtb_Codigo.Text.Trim();
            bool esValido = true;

            if (string.IsNullOrWhiteSpace(contraseña) || string.IsNullOrWhiteSpace(confirmarContraseña) )
            {
                MostrarMensajePersonalizado("¡Campos vacíos!\r\nPor favor, complete ambos campos de contraseña.", DialogType.Warning);
                esValido = false;
            }
            else if (contraseña != confirmarContraseña)
            {
                MostrarMensajePersonalizado("Las contraseñas no coinciden. Por favor, verifíquelas.", DialogType.Warning);
                esValido = false;
            }
            else if (!Validador.ValidarContraseña(contraseña))
            {
                MostrarMensajePersonalizado("La contraseña no cumple con los requisitos especificados abajo", DialogType.Warning);

                esValido = false;
            }else if (string.IsNullOrEmpty(codigo) || codigo == "Código de Verificación")
            {
                MostrarMensajePersonalizado("¡Campos vacíos!\r\nPor favor, ingrese el código de verificación que se le envio", DialogType.Warning);
                esValido = false;
            }
            return esValido;
        }


        private async void CambiarContraseña(object sender, RoutedEventArgs e)
        {
            if (ValidarEntrada())
            {
                string contrasenia = _isPasswordVisible1 ? txt_ContraseñaVisible.Text : pwb_Contraseña.Password;
                string contraseniaHashed = Hasher.HashToSHA2(contrasenia);
                string codigo = txtb_Codigo.Text.Trim();

                var solicitud = new SolicitudCambioContrasena
                {
                    Correo = _correo,
                    Codigo = codigo,
                    NuevaContrasenia = contraseniaHashed
                };

                Respuesta respuesta = await UsuarioServicio.VerificarCodigoYCambiarContrasenaAsync(solicitud);
                switch (respuesta.Codigo)
                {
                    case (int)HttpStatusCode.OK:
                        MostrarMensajePersonalizado("¡Éxito!\r\nContraseña restablecida correctamente, ya podrá iniciar sesión", DialogType.Warning);
                        Login login = new();
                        this.NavigationService.Navigate(login);
                        break;
                    case (int)HttpStatusCode.NotFound:
                        MostrarMensajePersonalizado("¡No hay una solicitud de recuperación para este correo o ha expirado", DialogType.Warning);
                        break;
                    case (int)HttpStatusCode.BadRequest:
                        MostrarMensajePersonalizado("¡El código de verificación es incorrecto", DialogType.Warning);
                        break;
                    case (int)HttpStatusCode.Unauthorized:
                        MostrarMensajePersonalizado("¡El código de verificación ha expirado", DialogType.Warning);
                        break;
                    case (int)HttpStatusCode.InternalServerError:
                        MostrarMensajePersonalizado("¡Correo no enviado!\r\nError interno del servidor. Inténtelo más tarde.", DialogType.Error);
                        break;
                }

            }

        }

        private void UserIdTextBox_GotFocus(object sender, RoutedEventArgs e)
        {
            if (txtb_Codigo.Text == "Código de Verificación")
            {
                txtb_Codigo.Text = "";
                txtb_Codigo.Foreground = Brushes.Black;
            }
        }

        private void UserIdTextBox_LostFocus(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtb_Codigo.Text))
            {
                txtb_Codigo.Text = "Código de Verificación";
                txtb_Codigo.Foreground = Brushes.Gray;
            }
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

        
        private void PasswordBoxGotFocus1(object sender, RoutedEventArgs e)
        {
            txtb_Contraseña.Visibility = Visibility.Collapsed;
        }

        private void PasswordBoxLostFocus1(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(pwb_Contraseña.Password))
            {
                txtb_Contraseña.Visibility = Visibility.Visible;
            }
        }

        private void PasswordBoxGotFocus2(object sender, RoutedEventArgs e)
        {
            txtb_ConfirmarContraseña.Visibility = Visibility.Collapsed;
        }

        private void PasswordBoxLostFocus2(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(pwb_ConfirmarContraseña.Password))
            {
                txtb_ConfirmarContraseña.Visibility = Visibility.Visible;
            }
        }

        private void ContraseñaCambiada1(object sender, RoutedEventArgs e)
        {
            txtb_Contraseña.Visibility = string.IsNullOrEmpty(pwb_Contraseña.Password) ? Visibility.Visible : Visibility.Collapsed;
        }


        private void ContraseñaCambiada2(object sender, RoutedEventArgs e)
        {
            txtb_ConfirmarContraseña.Visibility = string.IsNullOrEmpty(pwb_ConfirmarContraseña.Password) ? Visibility.Visible : Visibility.Collapsed;
        }

        private void ActivarDesactivarVisibilidad1(object sender, MouseButtonEventArgs e)
        {
            _isPasswordVisible1 = !_isPasswordVisible1;

            if (_isPasswordVisible1)
            {
                txt_ContraseñaVisible.Text = pwb_Contraseña.Password;
                txt_ContraseñaVisible.Visibility = Visibility.Visible;
                pwb_Contraseña.Visibility = Visibility.Collapsed;
            }
            else
            {
                pwb_Contraseña.Password = txt_ContraseñaVisible.Text;
                pwb_Contraseña.Visibility = Visibility.Visible;
                txt_ContraseñaVisible.Visibility = Visibility.Collapsed;
            }
        }

        private void ActivarDesactivarVisibilidad2(object sender, MouseButtonEventArgs e)
        {
            _isPasswordVisible2 = !_isPasswordVisible2;

            if (_isPasswordVisible2)
            {
                txt_ConfirmarContraseñaVisible.Text = pwb_ConfirmarContraseña.Password;
                txt_ConfirmarContraseñaVisible.Visibility = Visibility.Visible;
                pwb_ConfirmarContraseña.Visibility = Visibility.Collapsed;
            }
            else
            {
                pwb_ConfirmarContraseña.Password = txt_ConfirmarContraseñaVisible.Text;
                pwb_ConfirmarContraseña.Visibility = Visibility.Visible;
                txt_ConfirmarContraseñaVisible.Visibility = Visibility.Collapsed;
            }
        }

        private void VisiblePasswordTextChanged1(object sender, TextChangedEventArgs e)
        {
            if (_isPasswordVisible1)
            {
                pwb_Contraseña.Password = txt_ContraseñaVisible.Text;
            }
        }

        private void VisiblePasswordTextChanged2(object sender, TextChangedEventArgs e)
        {
            if (_isPasswordVisible2)
            {
                pwb_ConfirmarContraseña.Password = txt_ConfirmarContraseñaVisible.Text;
            }
        }

        private void CodigoPreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            e.Handled = !Regex.IsMatch(e.Text, "^[0-9]+$");
        }

        private void CodigoPreviewKeyDown(object sender, KeyEventArgs e)
        {
            TextBox textBox = sender as TextBox;

            if (e.Key == Key.Space ||
                (e.Key == Key.V && Keyboard.Modifiers == ModifierKeys.Control) ||
                (e.Key == Key.C && Keyboard.Modifiers == ModifierKeys.Control) ||
                (e.Key == Key.X && Keyboard.Modifiers == ModifierKeys.Control))
            {
                e.Handled = true;
            }
        }

    }
}
