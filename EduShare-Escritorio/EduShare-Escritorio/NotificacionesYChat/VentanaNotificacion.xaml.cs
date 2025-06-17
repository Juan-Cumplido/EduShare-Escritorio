using System;
using System.Windows;
using System.Windows.Media.Animation;
using EduShare_Escritorio.NotificacionesYChat;

namespace EduShare_Escritorio.NotificacionesYChat
{
    public partial class VentanaNotificacion : Window
    {
        public VentanaNotificacion(NotificacionModel notificacion)
        {
            InitializeComponent();

            TituloTexto.Text = notificacion.Titulo;
            MensajeTexto.Text = notificacion.Mensaje;

            var mainWindow = Application.Current.MainWindow;

            if (mainWindow != null)
            {
                var offset = 10;
                var mainLeft = mainWindow.Left;
                var mainTop = mainWindow.Top;
                var mainWidth = mainWindow.ActualWidth;
                var mainHeight = mainWindow.ActualHeight;

                Left = mainLeft + mainWidth - Width - offset;
                Top = mainTop + mainHeight - Height - offset;
            }


            Topmost = true;
            ShowInTaskbar = false;
            WindowStyle = WindowStyle.None;
            ResizeMode = ResizeMode.NoResize;
            AllowsTransparency = true;
            Background = null;

            Loaded += (s, e) =>
            {
                Opacity = 0;
                var fadeIn = new DoubleAnimation(0, 1, TimeSpan.FromSeconds(1));
                BeginAnimation(OpacityProperty, fadeIn);

                var fadeOut = new DoubleAnimation(1, 0, TimeSpan.FromSeconds(2))
                {
                    BeginTime = TimeSpan.FromSeconds(5)
                };
                fadeOut.Completed += (s2, e2) => Close();
                BeginAnimation(OpacityProperty, fadeOut);
            };
        }
    }

}
