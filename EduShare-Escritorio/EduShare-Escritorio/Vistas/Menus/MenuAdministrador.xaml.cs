using EduShare_Escritorio.Utilidades;
using EduShare_Escritorio.Vistas.ModuloDocumentos;
using EduShare_Escritorio.Vistas.ModuloLogin;
using EduShare_Escritorio.Vistas.ModuloMenus;
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

namespace EduShare_Escritorio.Vistas.Menus
{
    public partial class MenuAdministrador : Page
    {
        public MenuAdministrador()
        {
            InitializeComponent();
            CargarVentana();
        }
        
        private void CargarVentana()
        {
            fra_MenuAdmin.Navigate(new RevisarPublicaciones(fra_MenuAdmin));
        }

        private void MostrarPantallaPrincipal(object sender, MouseButtonEventArgs e)
        {
            fra_MenuAdmin.Navigate(new RevisarPublicaciones(fra_MenuAdmin));
        }

        private void CerrarSesion(object sender, MouseButtonEventArgs e)
        {
            
            PerfilSingleton.Instance.Reset();

            Login login = new Login();
            this.NavigationService.Navigate(login);
        }
    }
}
