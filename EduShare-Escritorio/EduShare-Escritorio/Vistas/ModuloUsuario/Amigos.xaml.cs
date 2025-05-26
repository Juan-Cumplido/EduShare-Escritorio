using EduShare_Escritorio.Utilidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Metadata;
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

namespace EduShare_Escritorio.Vistas.ModuloUsuario
{
    /// <summary>
    /// Lógica de interacción para Amigos.xaml
    /// </summary>
    public partial class Amigos : Page
    {
        public Amigos()
        {
            InitializeComponent();
            CargarUsuariosSimulados();
        }

         private void BuscarAmigo(object sender, MouseButtonEventArgs e)
        {

        }

        private void CargarUsuariosSimulados()
        {

            var usuarios = new List<UsuarioPerfil>
        {
            new UsuarioPerfil
            {
                Nombre = "Ana",
                ApellidoPaterno = "López",
                ApellidoMaterno = "García",
                NombreUsuario = "Carlos123",
                NivelEducativo = "Licenciatura en Pedagogía",
                Institucion = "Universidad Nacional",
                Imagen = "/Vistas/Recursos/Fondos/Arte.jpg"
            },
            new UsuarioPerfil
            {
                Nombre = "Carlos",
                ApellidoPaterno = "Ramírez",
                ApellidoMaterno = "Morales",
                NombreUsuario = "Ana123",
                NivelEducativo = "Ingeniería en Sistemas",
                Institucion = "Tecnológico de Monterrey",
                Imagen = "/Vistas/Recursos/Fondos/Derecho.jpg"
            },
            new UsuarioPerfil
            {
                Nombre = "María",
                ApellidoPaterno = "Fernández",
                ApellidoMaterno = "Ortiz",
                NombreUsuario = "Maria1334",
                NivelEducativo = "Maestría en Educación",
                Institucion = "UNAM",
                Imagen = "/Vistas/Recursos/Fondos/Ingenieria.jpg"
            },
            new UsuarioPerfil
            {
                Nombre = "Luis",
                ApellidoPaterno = "Sánchez",
                ApellidoMaterno = "Martínez",
                NombreUsuario = "Luis123",
                NivelEducativo = "Doctorado en Ciencias de la Computación",
                Institucion = "IPN",
                Imagen = "/Vistas/Recursos/Fondos/Arte.jpg"
            },
            new UsuarioPerfil
            {
                Nombre = "Paola",
                ApellidoPaterno = "Vega",
                ApellidoMaterno = "Domínguez",
                NombreUsuario = "Paola1233",
                NivelEducativo = "Licenciatura en Psicología",
                Institucion = "Universidad Autónoma de Puebla",
                Imagen = "/Vistas/Recursos/Fondos/Arte.jpg"
            }
        };


            ListaComentarios.ItemsSource = usuarios;
        }

        private void TextBox_GotFocus(object sender, RoutedEventArgs e)
        {
            if (txtb_BuscarTextBox.Text == "Buscar Amigos")
            {
                txtb_BuscarTextBox.Text = "";
                txtb_BuscarTextBox.Foreground = Brushes.Black;
            }
        }

        private void TextBox_LostFocus(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtb_BuscarTextBox.Text))
            {
                txtb_BuscarTextBox.Text = "Buscar Amigos";
                txtb_BuscarTextBox.Foreground = Brushes.Gray;
            }
        }

        private void DejarDeSeguir(object sender, RoutedEventArgs e)
        {
            if (sender is Button boton && boton.Tag is UsuarioPerfil amigo)
            {
                var confirmacion = new VentanaEmergentePersonalizada(
                    $"¿Deseas dejar de seguir a {amigo.Nombre} {amigo.ApellidoPaterno}?",
                    VentanaEmergentePersonalizada.DialogType.Confirmation);

                bool? resultado = confirmacion.ShowDialog();

                if (resultado == true)
                {
                    var lista = ListaComentarios.ItemsSource as List<UsuarioPerfil>;
                    if (lista != null)
                    {
                        lista.Remove(amigo);
                        ListaComentarios.ItemsSource = null;
                        ListaComentarios.ItemsSource = lista;
                    }
                }
            }
        }

    }
}
