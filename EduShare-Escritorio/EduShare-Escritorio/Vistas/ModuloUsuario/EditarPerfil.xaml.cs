using EduShare_Escritorio.Modelos;
using EduShare_Escritorio.Modelos.Catalogos;
using EduShare_Escritorio.Modelos.Perfil;
using EduShare_Escritorio.Servicio;
using EduShare_Escritorio.Utilidades;
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
    public partial class EditarPerfil : Page
    {
        private Frame _frame;
        private bool _cargandoDatos = false;
        private List<Institucion> _todasLasInstituciones = new();

        public EditarPerfil(Frame frame)
        {
            InitializeComponent();
            this.Loaded += ActualizarUsuarioLoaded;
            _frame = frame;
        }
        private async void ActualizarUsuarioLoaded(object sender, RoutedEventArgs e)
        {
            await InicializarCombosAsync();
            var perfil = PerfilSingleton.Instance;
            txtb_Nombre.Text = perfil.Nombre;
            txtb_PrimerApellido.Text = perfil.PrimerApellido;
            txtb_SegundoApellido.Text = perfil.SegundoApellido;
            txtb_Correo.Text = perfil.Correo;
            txtb_Usuario.Text = perfil.NombreUsuario;
        }

        private async Task InicializarCombosAsync()
        {
            _cargandoDatos = true;

            List<string> niveles = new() { "Preparatoria", "Universidad" };

            cmb_NivelEducativo.ItemsSource = null;
            cmb_NivelEducativo.Items.Clear();
            cmb_NivelEducativo.ItemsSource = niveles;

            var respuesta = await CatalogosServicio.ObtenerInstitucionesAsync();

            if (respuesta.Resultado != (int)HttpStatusCode.OK || respuesta.Datos == null)
            {
                MostrarMensajePersonalizado("No se pudieron cargar las instituciones. Actualice su cuenta más tarde.", DialogType.Error);
                _frame.Navigate(new Perfil(_frame));
                return;
            }

            _todasLasInstituciones = respuesta.Datos;

            cmb_Institución.ItemsSource = null;
            cmb_Institución.Items.Clear();
            cmb_Institución.ItemsSource = _todasLasInstituciones;
            cmb_Institución.DisplayMemberPath = "NombreInstitucion";
            cmb_Institución.SelectedValuePath = "IdInstitucion";

            var perfil = PerfilSingleton.Instance;
            cmb_NivelEducativo.SelectedItem = perfil.NivelEducativo;
            cmb_Institución.SelectedValue = perfil.IdInstitucion;

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

        private void RegresarAlPerfil(object sender, MouseButtonEventArgs e)
        {
            _frame.Navigate(new Perfil(_frame));

        }

        private bool HayCambiosEnElPerfil()
        {
            var perfil = PerfilSingleton.Instance;
            return txtb_Nombre.Text != perfil.Nombre ||
                   txtb_PrimerApellido.Text != perfil.PrimerApellido ||
                   txtb_SegundoApellido.Text != perfil.SegundoApellido ||
                   txtb_Correo.Text != perfil.Correo ||
                   txtb_Usuario.Text != perfil.NombreUsuario ||
                   (cmb_NivelEducativo.SelectedItem as string) != perfil.NivelEducativo ||
                   ((Institucion)cmb_Institución.SelectedItem)?.IdInstitucion != perfil.IdInstitucion;
        }

        private void ActualizarPerfilSingleton()
        {
            var perfil = PerfilSingleton.Instance;

            perfil.Nombre = txtb_Nombre.Text;
            perfil.PrimerApellido = txtb_PrimerApellido.Text;
            perfil.SegundoApellido = txtb_SegundoApellido.Text;
            perfil.Correo = txtb_Correo.Text;
            perfil.NombreUsuario = txtb_Usuario.Text;
            perfil.NivelEducativo = cmb_NivelEducativo.SelectedItem as string;

            if (cmb_Institución.SelectedItem is Institucion institucion)
            {
                perfil.IdInstitucion = institucion.IdInstitucion;
            }
        }


        private void ActualizarPerfil(object sender, RoutedEventArgs e)
        {

            RegresarBordeOriginal();
            if (ValidarCamposVacios())
            {
                if (!HayCambiosEnElPerfil())
                {
                    MostrarMensajePersonalizado("No has modificado ningún dato del perfil.", DialogType.Warning);
                    return;
                }
                if (VerificarCampos())
                {
                    UsuarioRegistro usuarioActualizado = CrearPerfil();
                    RespuestaDeLaAPI(usuarioActualizado);
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

        private async void RespuestaDeLaAPI(UsuarioRegistro usuarioActualizado)
        {
            var token = PerfilSingleton.Instance.TokenJwt;
            Respuesta respuesta = await UsuarioServicio.ActualizarPerfil(token, usuarioActualizado);
            
            switch (respuesta.Codigo)
            {
                case (int)HttpStatusCode.OK:
                    ActualizarPerfilSingleton();
                    MostrarMensajePersonalizado("¡Perfil actualizado con éxito!", DialogType.Success);
                    _frame.Navigate(new Perfil(_frame));
                    break;

                case 400:
                    MostrarMensajePersonalizado("Datos inválidos. Verifica los campos y vuelve a intentarlo.", DialogType.Warning);
                    break;
                case 404:
                    MostrarMensajePersonalizado("Usuario no encontrado. Reautentica tu sesión.", DialogType.Error);
                    break;
                case 409:
                    MostrarMensajePersonalizado("El nombre de usuario ya está en uso. Prueba con otro.", DialogType.Warning);
                    break;
                case 500:
                    MostrarMensajePersonalizado("Hubo un error interno al actualizar el perfil. Inténtalo más tarde.", DialogType.Error);
                    break;
                case (int)HttpStatusCode.Unauthorized:
                    MostrarMensajePersonalizado("Tu sesión ha expirado. Por favor, inicia sesión nuevamente.", DialogType.Error);
                    NavigationService.Navigate(new Login());
                    PerfilSingleton.Instance.Reset();
                    break;
                default:
                    MostrarMensajePersonalizado("Hubo un error interno al actualizar el perfil", DialogType.Error);
                    break;

            }
        }

        private UsuarioRegistro CrearPerfil()
        {

            UsuarioRegistro datosActualizados = new()
            {
                Nombre = txtb_Nombre.Text,
                PrimerApellido = txtb_PrimerApellido.Text,
                SegundoApellido = txtb_SegundoApellido.Text,
                Correo = txtb_Correo.Text,
                NombreUsuario = txtb_Usuario.Text,
                IdInstitucion = ((Institucion)cmb_Institución.SelectedItem).IdInstitucion
            };

            return datosActualizados;
        }

        public void RegresarBordeOriginal()
        {
            SolidColorBrush verde = new((Color)ColorConverter.ConvertFromString("#16b555"));
            brd_Nombre.BorderBrush = verde;
            brd_PrimerApellido.BorderBrush = verde;
            brd_SegundoApellido.BorderBrush = verde;
            brd_Correo.BorderBrush = verde;
            brd_Usuario.BorderBrush = verde;
            brd_NivelEducativo.BorderBrush = verde;
            brd_Institucion.BorderBrush = verde;

        }

        public bool VerificarCampos()
        {
            bool nombre = Validador.ValidarNombre(txtb_Nombre.Text);
            bool primerApellido = Validador.ValidarNombre(txtb_PrimerApellido.Text);
            bool segundoApellido = Validador.ValidarSegundoApellido(txtb_SegundoApellido.Text);
            bool usuario = Validador.ValidarUsuario(txtb_Usuario.Text);
            bool correo = Validador.ValidarCorreo(txtb_Correo.Text);

            if (!nombre) brd_Nombre.BorderBrush = Brushes.Red;
            if (!primerApellido) brd_PrimerApellido.BorderBrush = Brushes.Red;
            if (!segundoApellido) brd_SegundoApellido.BorderBrush = Brushes.Red;
            if (!usuario) brd_Usuario.BorderBrush = Brushes.Red;
            if (!correo) brd_Correo.BorderBrush = Brushes.Red;

            return nombre && primerApellido && segundoApellido && correo && usuario;
        }

        public bool ValidarCamposVacios()
        {
            bool nombre = !string.IsNullOrWhiteSpace(txtb_Nombre.Text);
            bool primerApellido = !string.IsNullOrWhiteSpace(txtb_PrimerApellido.Text);
            bool usuario = !string.IsNullOrWhiteSpace(txtb_Usuario.Text);
            bool correo = !string.IsNullOrWhiteSpace(txtb_Correo.Text);

            bool cmbNivelEducativo = cmb_NivelEducativo.SelectedItem != null;
            bool cmbInstitucion = cmb_Institución.SelectedItem != null;


            if (!nombre) brd_Nombre.BorderBrush = Brushes.Red;
            if (!primerApellido) brd_PrimerApellido.BorderBrush = Brushes.Red;
            if (!correo) brd_Correo.BorderBrush = Brushes.Red;
            if (!usuario) brd_Usuario.BorderBrush = Brushes.Red;

            if (!cmbNivelEducativo) brd_NivelEducativo.BorderBrush = Brushes.Red;
            if (!cmbInstitucion) brd_Institucion.BorderBrush = Brushes.Red;

            return nombre && primerApellido && correo && usuario
            && cmbNivelEducativo && cmbInstitucion;
        }
    }
}
