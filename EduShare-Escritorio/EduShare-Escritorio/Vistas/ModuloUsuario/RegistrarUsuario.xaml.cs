using EduShare_Escritorio.Modelos;
using EduShare_Escritorio.Modelos.Catalogos;
using EduShare_Escritorio.Modelos.Perfil;
using EduShare_Escritorio.Servicio;
using EduShare_Escritorio.Utilidades;
using EduShare_Escritorio.Vistas.Menus;
using EduShare_Escritorio.Vistas.ModuloLogin;
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

namespace EduShare_Escritorio.Vistas.ModuloUsuario
{
    public partial class RegistrarUsuario : Page
    {
        private List<Institucion> _todasLasInstituciones = new();
        private bool _cargandoDatos = false;

        public RegistrarUsuario()
        {
            InitializeComponent();
            this.Loaded += RegistrarUsuarioLoaded;

        }

        private async void RegistrarUsuarioLoaded(object sender, RoutedEventArgs e)
        {
            await InicializarCombosAsync();
        }

        private async Task InicializarCombosAsync()
        {
            _cargandoDatos = true;

            List<string> niveles = new() { "Preparatoria", "Universidad" };
            cmb_NivelEducativo.ItemsSource = niveles;

            var respuesta = await CatalogosServicio.ObtenerInstitucionesAsync();

            if (respuesta.Resultado != (int)HttpStatusCode.OK || respuesta.Datos == null)
            {
                MostrarMensajePersonalizado("No se pudieron cargar las instituciones. Intente más tarde.", DialogType.Error);
                Login login = new();
                this.NavigationService?.Navigate(login);
                return;
            }

            _todasLasInstituciones = respuesta.Datos;

            cmb_Institución.ItemsSource = _todasLasInstituciones;
            cmb_Institución.DisplayMemberPath = "NombreInstitucion";
            cmb_Institución.SelectedValuePath = "IdInstitucion";

            _cargandoDatos = false;
        }

        private void Cmb_NivelEducativoSeleccion(object sender, SelectionChangedEventArgs e)
        {
            if (_cargandoDatos) return;

            string nivelSeleccionado = cmb_NivelEducativo.SelectedItem as string;
            if (!string.IsNullOrEmpty(nivelSeleccionado))
            {
                var filtradas = _todasLasInstituciones
                    .Where(i => i.NivelEducativo == nivelSeleccionado)
                    .ToList();
                grd_Institucion.Visibility = Visibility.Visible;  
                cmb_Institución.ItemsSource = filtradas;
                cmb_Institución.SelectedIndex = -1;
            }
        }

        private void Cmb_InstitucionSeleccion(object sender, SelectionChangedEventArgs e)
        {
            if (_cargandoDatos) return;

            if (cmb_Institución.SelectedItem is Institucion seleccionada)
            {
                cmb_NivelEducativo.SelectedItem = seleccionada.NivelEducativo;
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

        private void BtnRegistrar(object sender, RoutedEventArgs e)
        {
            RegresarBordeOriginal();
            if (ValidarCamposVacios())
            {
                
                if (VerificarCampos())
                {
                    UsuarioRegistro nuevoUsuario = CrearPerfil();
                    RespuestaDeLaAPI(nuevoUsuario);
                }
                else
                {
                    MostrarMensajePersonalizado("La información de algunos campos es incorrecto, por favor verifique e intentelo de nuevo.", DialogType.Warning);
                }
            }
            else
            {
                MostrarMensajePersonalizado("Por favor, llena todos los campos que se solicitan", DialogType.Warning);
            }

          
        }

        private async void RespuestaDeLaAPI(UsuarioRegistro usuarioRegistro)
        {
            Respuesta respuesta = await UsuarioServicio.RegistrarUsuarioAsync(usuarioRegistro);
            switch (respuesta.Codigo)
            {
                case (int) HttpStatusCode.OK:
                    MostrarMensajePersonalizado("¡Registro exitoso!\r\nAhora puedes disfrutar de todo lo que EduShare tiene para ofrecer. ¡Bienvenido a la comunidad!", DialogType.Success);
                    Login login = new();
                    this.NavigationService.Navigate(login);
                    break;

                case (int) HttpStatusCode.Conflict:
                    MostrarMensajePersonalizado($"{respuesta.Mensaje} Pruebe con otro por favor ", DialogType.Warning);
                    break;
                case (int) HttpStatusCode.InternalServerError:
                    MostrarMensajePersonalizado("Error interno del servidor. Inténtelo más tarde.", DialogType.Error);
                    break;

                default:
                    MostrarMensajePersonalizado(respuesta.Mensaje,
                        DialogType.Error
                    );
                    break;

            }
        }

        private UsuarioRegistro CrearPerfil()
        {
            UsuarioRegistro perfil = new();
            perfil.Correo = txtb_Correo.Text;
            string contrasenia = isPasswordVisible ? txt_ContraseñaVisible.Text : pwb_PasswordBox.Password;
            string hashedPassword = Hasher.HashToSHA2(contrasenia);
            perfil.Contrasenia = hashedPassword;
            perfil.NombreUsuario = txtb_Usuario.Text.Trim();
            perfil.Nombre = txtb_Nombre.Text.Trim();   
            perfil.PrimerApellido = txtb_PrimerApellido.Text.Trim();
            perfil.SegundoApellido = txtb_SegundoApellido.Text.Trim();
            string fotoPorDefecto = "Imagen/porDefecto/1.png";
            perfil.FotoPerfil = fotoPorDefecto;
            if (cmb_Institución.SelectedItem is Institucion seleccionada)
            {
                perfil.IdInstitucion = seleccionada.IdInstitucion;
            }

            return perfil;
        }

        public void RegresarBordeOriginal()
        {
            SolidColorBrush verde = new ((Color)ColorConverter.ConvertFromString("#16b555"));
            brd_Nombre.BorderBrush = verde;
            brd_PrimerApellido.BorderBrush = verde;
            brd_SegundoApellido.BorderBrush = verde;
            brd_Correo.BorderBrush = verde;
            brd_Usuario.BorderBrush = verde;
            brd_Contraseña.BorderBrush = verde;
            brd_NivelEducativo.BorderBrush = verde;
            brd_Institucion.BorderBrush = verde;

        }

        public bool VerificarCampos()
        {
            bool nombre = Validador.ValidarNombre(txtb_Nombre.Text);
            bool primerApellido = Validador.ValidarNombre(txtb_PrimerApellido.Text);
            bool segundoApellido = Validador.ValidarSegundoApellido(txtb_SegundoApellido.Text);
            bool correo = Validador.ValidarCorreo(txtb_Correo.Text);
            bool usuario = Validador.ValidarUsuario(txtb_Usuario.Text);
            string contraseña = isPasswordVisible ? txt_ContraseñaVisible.Text : pwb_PasswordBox.Password;
            bool contrasenaValida = Validador.ValidarContraseña(contraseña);

            if (!nombre) brd_Nombre.BorderBrush = Brushes.Red;
            if (!primerApellido) brd_PrimerApellido.BorderBrush = Brushes.Red;
            if (!segundoApellido) brd_SegundoApellido.BorderBrush = Brushes.Red;
            if (!correo) brd_Correo.BorderBrush = Brushes.Red;
            if (!usuario) brd_Usuario.BorderBrush = Brushes.Red;
            if (!contrasenaValida) brd_Contraseña.BorderBrush = Brushes.Red;

            return nombre && primerApellido && segundoApellido && correo && usuario && contrasenaValida;
        }

        public bool ValidarCamposVacios()
        {
            bool nombre = !string.IsNullOrWhiteSpace(txtb_Nombre.Text);
            bool primerApellido = !string.IsNullOrWhiteSpace(txtb_PrimerApellido.Text);
            bool usuario = !string.IsNullOrWhiteSpace(txtb_Usuario.Text);
            bool correo = !string.IsNullOrWhiteSpace(txtb_Correo.Text);

            string contraseña = isPasswordVisible ? txt_ContraseñaVisible.Text : pwb_PasswordBox.Password;
            bool contrasenaValida = !string.IsNullOrWhiteSpace(contraseña);

            bool cmbNivelEducativo = cmb_NivelEducativo.SelectedItem != null;
            bool cmbInstitucion = cmb_Institución.SelectedItem != null;



            if (!nombre) brd_Nombre.BorderBrush = Brushes.Red;
            if (!primerApellido) brd_PrimerApellido.BorderBrush = Brushes.Red;
            if (!correo) brd_Correo.BorderBrush = Brushes.Red;
            if (!usuario) brd_Usuario.BorderBrush = Brushes.Red;
            if (!contrasenaValida) brd_Contraseña.BorderBrush = Brushes.Red;

            if (!cmbNivelEducativo) brd_NivelEducativo.BorderBrush = Brushes.Red;
            if (!cmbInstitucion) brd_Institucion.BorderBrush = Brushes.Red;

            return nombre && primerApellido && correo && usuario && contrasenaValida
            && cmbNivelEducativo && cmbInstitucion;
        }

        private void RegresarAlMenuPrincipal(object sender, MouseButtonEventArgs e)
        {
            MenuPrincipal menuPrincipal = new ();
            this.NavigationService.Navigate(menuPrincipal);
        }

        private void IrAlLogin(object sender, MouseButtonEventArgs e)
        {
            Login login = new ();
            this.NavigationService.Navigate(login);
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

    }
}
