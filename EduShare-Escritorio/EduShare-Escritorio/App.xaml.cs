using EduShare_Escritorio.NotificacionesYChat;
using System.Configuration;
using System.Data;
using System.Windows;
using static EduShare_Escritorio.Vistas.ModuloChats.Chat;

namespace EduShare_Escritorio
{
    public partial class App : Application
    {
        public static NotificacionSocketService SocketNotificaciones { get; set; } = new NotificacionSocketService();

        private static List<ICierreAplicacionListener> _listeners = new List<ICierreAplicacionListener>();

        protected override void OnStartup(StartupEventArgs e)
        {
            base.OnStartup(e);
           
            this.Exit += App_Exit;
            this.SessionEnding += App_SessionEnding;
            SocketNotificaciones.OnNotificacionRecibida += MostrarNotificacion;
        }

        private async void App_SessionEnding(object sender, SessionEndingCancelEventArgs e)
        {
            await NotificarCierreAsync();
        }

        private async void App_Exit(object sender, ExitEventArgs e)
        {
            await NotificarCierreAsync();
            EduShare_Escritorio.Utilidades.PerfilSingleton.Instance.Reset();
        }

        private async Task NotificarCierreAsync()
        {
            var listenersToNotify = _listeners.ToList();

            foreach (var listener in listenersToNotify)
            {
                try
                {
                    listener.OnAplicacionCerrando();
                }
                catch (Exception ex)
                {
                    System.Console.WriteLine($"❌ Error al notificar cierre: {ex.Message}");
                }
            }
        }


        public static void RegistrarListener(ICierreAplicacionListener listener)
        {
            if (!_listeners.Contains(listener))
            {
                _listeners.Add(listener);
            }
        }

        public static void DesregistrarListener(ICierreAplicacionListener listener)
        {
            _listeners.Remove(listener);
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
                        System.Console.WriteLine($"Error al mostrar notificación: {ex.Message}");
                    }
                });
            }

        }

}
