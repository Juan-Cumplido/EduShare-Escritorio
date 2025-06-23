using EduShare_Escritorio.NotificacionesYChat;
using EduShare_Escritorio.Utilidades;
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
            SocketNotificaciones.OnNotificacionRecibida += MostrarNotificacion;
        }

        private async void App_Exit(object sender, ExitEventArgs e)
        {

            BusquedaSingleton.Instance.LimpiarBusqueda();
            PerfilSingleton.Instance.Reset();
        }

        public static void NotificarCierreAplicacion()
        {
           var listenersActuales = new List<ICierreAplicacionListener>(_listeners);

            foreach (var listener in listenersActuales)
            {
                try
                {
                    listener.OnAplicacionCerrando();
                }
                catch (Exception ex)
                {
                    
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
