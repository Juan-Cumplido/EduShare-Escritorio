using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using EduShare_Escritorio.Utilidades;
using EduShare_Escritorio.Vistas;
namespace EduShare_Escritorio
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            fra_NavigationFrame.Navigate(new Vistas.Menus.MenuPrincipal());
            this.Closing += MainWindow_Closing;
        }

        private void MainWindow_Closing(object? sender, System.ComponentModel.CancelEventArgs e)
        {
            PerfilSingleton.Instance.Reset();

        }
        private void NavigationFrame_Navigating(object sender, NavigatingCancelEventArgs e)
        {
            var storyb_FadeOutAnimation = new DoubleAnimation(1, 0, TimeSpan.FromSeconds(0.5));
            fra_NavigationFrame.BeginAnimation(Frame.OpacityProperty, storyb_FadeOutAnimation);
        }

        private void NavigationFrame_Navigated(object sender, NavigationEventArgs e)
        {
            var storyb_FadeInAnimation = new DoubleAnimation(0, 1, TimeSpan.FromSeconds(0.5));
            fra_NavigationFrame.BeginAnimation(Frame.OpacityProperty, storyb_FadeInAnimation);
        }
    }
}