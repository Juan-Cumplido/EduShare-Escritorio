using System;
using System.Windows;
using System.Windows.Media.Animation;

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
                var mainLeft = mainWindow.Left;
                var mainTop = mainWindow.Top;
                var mainWidth = mainWindow.ActualWidth;

                Left = mainLeft + (mainWidth - Width) / 2;
                Top = mainTop - Height; 
            }

            Topmost = true;
            ShowInTaskbar = false;
            WindowStyle = WindowStyle.None;
            ResizeMode = ResizeMode.NoResize;
            AllowsTransparency = true;
            Background = null;

            Loaded += (s, e) =>
            {
                 var slideIn = new DoubleAnimation
                {
                    From = Top,
                    To = Top + Height + 20,
                    Duration = TimeSpan.FromSeconds(0.5),
                    EasingFunction = new QuadraticEase { EasingMode = EasingMode.EaseOut }
                };

                slideIn.Completed += (s1, e1) =>
                {
                  
                    var wait = new System.Windows.Threading.DispatcherTimer
                    {
                        Interval = TimeSpan.FromSeconds(3)
                    };
                    wait.Tick += (s2, e2) =>
                    {
                        wait.Stop();
                             var slideOut = new DoubleAnimation
                        {
                            From = Top,
                            To = Top - Height - 20,
                            Duration = TimeSpan.FromSeconds(0.5),
                            EasingFunction = new QuadraticEase { EasingMode = EasingMode.EaseIn }
                        };
                        slideOut.Completed += (s3, e3) => Close();
                        BeginAnimation(Window.TopProperty, slideOut);
                    };
                    wait.Start();
                };

                BeginAnimation(Window.TopProperty, slideIn);
            };
        }
    }
}
