using EduShare_Escritorio.NotificacionesYChat;
using EduShare_Escritorio.Utilidades;
using EduShare_Escritorio.Vistas.ModuloDocumentos;
using EduShare_Escritorio.Vistas.ModuloLogin;
using EduShare_Escritorio.Vistas.ModuloUsuario;
using System;
using System.Collections.Generic;
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

namespace EduShare_Escritorio.Vistas.ModuloChats
{
    public partial class ListaChst : Page
    {
        private static readonly LoggerManager _logger = new LoggerManager(typeof(Login));
        private Frame _frame;
        public ListaChst(Frame frame)
        {
            InitializeComponent();
            _frame = frame;

            var servicioSocket = App.SocketNotificaciones;
            servicioSocket.OnMisChatsRecibidos += CargarMisChats;
            servicioSocket.OnChatsActivosRecibidos += CargarChatsActivos;
            servicioSocket.OnNotificacionRecibida += ManejarNotificaciones;

            servicioSocket.ObtenerMisChatsAsync(PerfilSingleton.Instance.IdUsuarioRegistrado.ToString());
            servicioSocket.ObtenerChatsActivosAsync();


        }

        private async void ManejarNotificaciones(NotificacionModel noti)
        {
            if (noti.Tipo == "notificacion_chat_inicio")
            {
              await  App.SocketNotificaciones.ObtenerMisChatsAsync(PerfilSingleton.Instance.IdUsuarioRegistrado.ToString());
            }
        }

        private void CargarMisChats(List<ChatInfoModel> chats)
        {
            Dispatcher.Invoke(() =>
            {
                var misChats = new List<ChatVista>();

                foreach (var chat in chats)
                {
                    if (chat.Estado == "Activo" || chat.Estado == "Programado")
                    {
                        misChats.Add(new ChatVista
                        {
                            IdChat = chat.IdChat,
                            IdAutor = chat.IdAutor,
                            Autor = chat.Autor,
                            Titulo = chat.Titulo,
                            NivelEducativo = chat.NivelEducativo,
                            Rama = chat.Rama,
                            Materia = chat.Materia,
                            Descripcion = chat.Descripcion,
                            Fecha = chat.Fecha,
                            Hora = chat.Hora,
                            Estado = chat.Estado
                        });
                    }
                }

                item_MisChats.ItemsSource = misChats;
            });
        }

        private void CargarChatsActivos(List<ChatInfoModel> chats)
        {
            Dispatcher.Invoke(() =>
            {
                var activos = new List<ChatVista>();

                foreach (var chat in chats)
                {
                    if (chat.Estado == "Activo")
                    {
                        activos.Add(new ChatVista
                        {
                            IdChat = chat.IdChat,
                            IdAutor = chat.IdAutor,
                            Autor = chat.Autor,
                            Titulo = chat.Titulo,
                            NivelEducativo = chat.NivelEducativo,
                            Rama = chat.Rama,
                            Materia = chat.Materia,
                            Descripcion = chat.Descripcion,
                            Fecha = chat.Fecha,
                            Hora = chat.Hora,
                            Estado = chat.Estado
                        });
                    }
                }

                item_Conversasiones.ItemsSource = activos;
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

        private async void UnirseAlChat(object sender, RoutedEventArgs e)
        {
            if (sender is Button button && button.Tag is ChatVista chatVista)
            {
                _frame.Navigate(new Chat(chatVista, _frame, chatVista.IdChat));
            }
        }

        private void CrearChat(object sender, MouseButtonEventArgs e)
        {
            _frame.Navigate(new CrearChat(_frame));
        }



    }
}
