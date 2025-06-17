using EduShare_Escritorio.Modelos.Catalogos;
using EduShare_Escritorio.Modelos.Publicaciones;
using EduShare_Escritorio.NotificacionesYChat;
using EduShare_Escritorio.Servicio;
using EduShare_Escritorio.Utilidades;
using EduShare_Escritorio.Vistas.ModuloDocumentos;
using EduShare_Escritorio.Vistas.ModuloLogin;
using Newtonsoft.Json;
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

namespace EduShare_Escritorio.Vistas.ModuloChats
{
    public partial class CrearChat : Page
    {
        private Frame _frame;
        private static readonly LoggerManager _logger = new LoggerManager(typeof(Login));
        private List<Categoria> _todasLasCategorias = new();
        private List<Rama> _todasLasRamas = new();
        public CrearChat(Frame frame)
        {
            InitializeComponent();
            _frame = frame;
            this.Loaded += CargarComboBox;

            this.Loaded += CrearChat_Loaded;
            dp_Fecha.DisplayDateStart = DateTime.Today;
        }

        private void CrearChat_Loaded(object sender, RoutedEventArgs e)
        {
            rb_ProgramadoNo.IsChecked = true; 
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
                MostrarMensajePersonalizado("No hay conexion con el servidor. Intente más tarde crear su chat su documento.", DialogType.Error);
                return;
            }

            _todasLasCategorias = categorias.Datos;

            _todasLasRamas = ramas.Datos;
            cmb_Rama.ItemsSource = _todasLasRamas;
            cmb_Rama.DisplayMemberPath = "NombreRama";
            cmb_Rama.SelectedValuePath = "IdRama";
            cmb_Rama.Items.Refresh();

        }

        private void MostrarMensajePersonalizado(string message, DialogType type)
        {
            var dialog = new VentanaEmergentePersonalizada(message, type)
            {
                Owner = Window.GetWindow(this)
            };
            dialog.ShowDialog();
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
                cmb_Materia.SelectedValuePath = "IdMateriaYRama";
            }
            else
            {
                MostrarMensajePersonalizado("No se pudieron cargar las materias para la rama seleccionada.", DialogType.Warning);
                cmb_Materia.ItemsSource = null;
            }
        }

        private  void Crear(object sender, RoutedEventArgs e)
        {
            RegresarBordeOriginal();

            if (!ValidarCamposVacios())
            {
                MostrarMensajePersonalizado("Por favor, llena todos los campos que se solicitan", DialogType.Warning);
                return;
            }

            if (rb_ProgramadoSi.IsChecked == true)
            {
                if (dp_Fecha.SelectedDate == null || cmb_Hora.SelectedItem == null)
                {
                    MostrarMensajePersonalizado("Debes elegir una fecha y hora válidas.", DialogType.Warning);
                    return;
                }

                DateTime fechaHoraSeleccionada = dp_Fecha.SelectedDate.Value.Date +
                                                 TimeSpan.Parse(cmb_Hora.SelectedItem.ToString());

                if (fechaHoraSeleccionada < DateTime.Now.AddMinutes(15))
                {
                    MostrarMensajePersonalizado("La fecha y hora seleccionadas deben ser al menos 15 minutos en el futuro.", DialogType.Warning);
                    return;
                }

                GenerarProgramacion();
               
            }

            else
            {
                GenerarChat();
            }


        }


        private async void GenerarProgramacion()
        {
            try
            {
              
                if (App.SocketNotificaciones == null)
                {
                    MostrarMensajePersonalizado("ERROR: App.SocketNotificaciones es null", DialogType.Warning);
                    return;
                }

                var chatNuevo = new ChatInfoModel
                {
                    Autor = PerfilSingleton.Instance.NombreUsuario,
                    IdAutor = PerfilSingleton.Instance.IdUsuarioRegistrado.ToString(),
                    Titulo = txtb_Titulo.Text.Trim(),
                    NivelEducativo = cmb_NivelEducativo.Text,
                    Rama = (cmb_Rama.SelectedItem as Rama)?.NombreRama,
                    Materia = (cmb_Materia.SelectedItem as Materia)?.NombreMateria,
                    Descripcion = txtb_Descripcion.Text.Trim(),
                    Fecha = dp_Fecha.SelectedDate.Value.ToString("dd/MM/yyyy"),
                    Hora = cmb_Hora.SelectedItem.ToString()
                };

                var resultado = await App.SocketNotificaciones.CrearChatAsync(chatNuevo);


                if (resultado.Exito)
                {
                    MostrarMensajePersonalizado("Chat creado exitosamente", DialogType.Success);
                    _frame.Navigate(new ListaChst(_frame));
                    EnviarNotificacion();
                }
                else
                {
                    MostrarMensajePersonalizado("Error al crear chat: {resultado.Error}", DialogType.Warning);
                }

            }
            catch (Exception ex)
            {
                MostrarMensajePersonalizado($"EXCEPCIÓN: {ex.Message}", DialogType.Warning);
                MostrarMensajePersonalizado($"STACK TRACE: {ex.StackTrace}", DialogType.Warning);
            }
        }

        private async void GenerarChat()
        {
            var chatNuevo = new ChatInfoModel
            {
                Autor = PerfilSingleton.Instance.NombreUsuario,
                IdAutor = PerfilSingleton.Instance.IdUsuarioRegistrado.ToString(),
                Titulo = txtb_Titulo.Text.Trim(),
                NivelEducativo = cmb_NivelEducativo.Text,
                Rama = (cmb_Rama.SelectedItem as Rama)?.NombreRama,
                Materia = (cmb_Materia.SelectedItem as Materia)?.NombreMateria,
                Descripcion = txtb_Descripcion.Text.Trim(),
                Fecha = "",
                Hora = ""
            };

            var miChat = new ChatVista
            {
                Autor = PerfilSingleton.Instance.NombreUsuario,
                IdAutor = PerfilSingleton.Instance.IdUsuarioRegistrado.ToString(),
                Titulo = txtb_Titulo.Text.Trim(),
                NivelEducativo = cmb_NivelEducativo.Text,
                Rama = (cmb_Rama.SelectedItem as Rama)?.NombreRama,
                Materia = (cmb_Materia.SelectedItem as Materia)?.NombreMateria,
                Descripcion = txtb_Descripcion.Text.Trim(),
                Fecha = "",
                Hora = ""
            };

            var resultado = await App.SocketNotificaciones.CrearChatAsync(chatNuevo);
            if (resultado.Exito)
            {
                MostrarMensajePersonalizado("Chat creado exitosamente", DialogType.Success);
                _frame.Navigate(new Chat(miChat, _frame, resultado.IdChat));
                EnviarNotificacion();
            }
            else
            {
                MostrarMensajePersonalizado("Ocurrio un error al crear el chat. Intente más tarde", DialogType.Warning);
            }
        }

       
        private async void EnviarNotificacion()
        {
            try
            {
                string token = PerfilSingleton.Instance.TokenJwt;
                int idOrigen = PerfilSingleton.Instance.IdUsuarioRegistrado;
                var respuesta = await PerfilServicio.ObtenerSeguidores(token);

                if (respuesta?.Datos != null)
                {
                    List<int> idsSeguidores = respuesta.Datos
                        .Select(s => s.IdUsuarioRegistrado)
                        .ToList();

                    var notificacion = new
                    {
                        accion = "notificacion",
                        UsuarioOrigenId = idOrigen,
                        UsuarioDestinoId = idsSeguidores,
                        Titulo = "Nuevo chat creado",
                        Mensaje = $"¡{PerfilSingleton.Instance.NombreUsuario} creo un chat! 🎉",
                        Tipo = "Publicacion",
                        FechaCreacion = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")
                    };

                    string json = JsonConvert.SerializeObject(notificacion);
                    await App.SocketNotificaciones.EnviarMensajeAsync(json);


                }
            }
            catch (Exception ex)
            {
                _logger.LogError(ex);
                Console.WriteLine($"❌ Error enviando notificación: {ex.Message}");
            }

        }



        private void rb_ProgramadoSi_Checked(object sender, RoutedEventArgs e)
        {
            grd_Programado.Visibility = Visibility.Visible;

            cmb_Hora.Items.Clear();
            DateTime ahora = DateTime.Now;
            DateTime inicio = ahora.AddMinutes(15 - (ahora.Minute % 15));
            for (int i = 0; i < 96; i++) 
            {
                string hora = inicio.ToString("HH:mm");
                cmb_Hora.Items.Add(hora);
                inicio = inicio.AddMinutes(15);
                if (inicio.Date > ahora.Date) break;
            }
        }

        private void rb_ProgramadoNo_Checked(object sender, RoutedEventArgs e)
        {
            if (grd_Programado != null)
                grd_Programado.Visibility = Visibility.Collapsed;
        }

        public void RegresarBordeOriginal()
        {
            SolidColorBrush verde = new((Color)ColorConverter.ConvertFromString("#16b555"));
            brd_Titulo.BorderBrush = verde;
            brd_Descripcion.BorderBrush = verde;
            brd_NivelEducativo.BorderBrush = verde;
            brd_Rama.BorderBrush = verde;
            brd_Materia.BorderBrush = verde;
        }

        public bool ValidarCamposVacios()
        {
            bool titulo = !string.IsNullOrWhiteSpace(txtb_Titulo.Text) && txtb_Titulo.Text != "Escribe un título";

            bool contenido = !string.IsNullOrWhiteSpace(txtb_Descripcion.Text) && txtb_Descripcion.Text != "Escribe una descripción: ¿De qué se tratara en el chat? ¿Quién podría encontrar esta información útil? ¿De que se hablará?";

            bool cmbNivelEducativo = cmb_NivelEducativo.SelectedItem != null;
            bool cmbMateria = cmb_Materia.SelectedItem != null;
            bool cmbRama = cmb_Rama.SelectedItem != null;

            if (!titulo) brd_Titulo.BorderBrush = Brushes.Red;
            if (!contenido) brd_Descripcion.BorderBrush = Brushes.Red;
            if (!cmbNivelEducativo) brd_NivelEducativo.BorderBrush = Brushes.Red;
            if (!cmbMateria) brd_Materia.BorderBrush = Brushes.Red;
            if (!cmbRama) brd_Rama.BorderBrush = Brushes.Red;

            return titulo && contenido && cmbNivelEducativo && contenido
            && cmbMateria && cmbRama ;
        }

        private void ResumenGotFocus(object sender, RoutedEventArgs e)
        {
            if (txtb_Descripcion.Text == "Escribe una descripción: ¿De qué se tratara en el chat? ¿Quién podría encontrar esta información útil? ¿De que se hablará?")
            {
                txtb_Descripcion.Text = "";
                txtb_Descripcion.Foreground = Brushes.Black;
            }
        }

        private void ResumenLostFocus(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtb_Descripcion.Text))
            {
                txtb_Descripcion.Text = "Escribe una descripción: ¿De qué se tratara en el chat? ¿Quién podría encontrar esta información útil? ¿De que se hablará?";
                txtb_Descripcion.Foreground = Brushes.Gray;
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
            if (string.IsNullOrWhiteSpace(txtb_Titulo.Text))
            {
                txtb_Titulo.Text = "Escribe un título";
                txtb_Titulo.Foreground = Brushes.Gray;
            }
        }

    }
}
