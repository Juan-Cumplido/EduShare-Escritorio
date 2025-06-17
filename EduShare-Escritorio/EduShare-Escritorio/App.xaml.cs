using EduShare_Escritorio.NotificacionesYChat;
using System.Configuration;
using System.Data;
using System.Windows;

namespace EduShare_Escritorio
{
    public partial class App : Application
    {
        public static NotificacionSocketService SocketNotificaciones { get; set; } = new NotificacionSocketService();


        protected override void OnStartup(StartupEventArgs e)
        {
            base.OnStartup(e);

            SocketNotificaciones.OnNotificacionRecibida += MostrarNotificacion;
        }

        private static void MostrarNotificacion(NotificacionModel notificacion)
        {
            Current.Dispatcher.Invoke(() =>
            {
                try
                {
                    var ventanaNotificacion = new VentanaNotificacion(notificacion);
                    ventanaNotificacion.Show();
                }
                catch (System.Exception ex)
                {
                    System.Console.WriteLine($"❌ Error al mostrar notificación: {ex.Message}");
                }
            });
        }

    }

}
