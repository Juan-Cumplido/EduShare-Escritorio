using EduShare_Escritorio.Utilidades;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
using static EduShare_Escritorio.Vistas.VentanaEmergentePersonalizada;

namespace EduShare_Escritorio.Vistas.ModuloUsuario
{
    public partial class VisualizarPerfilAmigo : Page
    {
        private Frame _frame;
        private UsuarioPerfil _usuario;
        private ObservableCollection<Documento> documentos;
        public VisualizarPerfilAmigo(Frame frame, UsuarioPerfil usuario)
        {
            InitializeComponent();
            _frame = frame;
            _usuario = usuario;
            MostrarInformacionPerfil();
            CargarDocumentosFake();
        }

        private void CargarDocumentosFake()
        {
            documentos = new ObservableCollection<Documento>
            {
                new() {
                    Titulo = "HILOS",
                    Descripcion = "Este documento describe los diferentes tipos de hilos...",
                    Autor = "Max Kmacho",
                    Fecha = "13 de septiembre de 2019",
                    ImagenRuta = "/Vistas/Recursos/Fondos/Arte.jpg",
                    Vistas = 365,
                    Descargas = 40,
                    Likes = 2
                },
                new() {
                    Titulo = "Tecnología Textil Hilos",
                    Descripcion = "Explica los métodos de hilatura como la continua por anillos...",
                    Autor = "Andrea Vázquez",
                    Fecha = "4 de abril de 2023",
                    ImagenRuta = "/Vistas/Recursos/Fondos/Derecho.jpg",
                    Vistas = 77,
                    Descargas = 63,
                    Likes = 1
                }
            };

            itmc_DocumentosControl.ItemsSource = documentos;
        }

        private void MostrarInformacionPerfil()
        {
            //img_FotoPerfil.ImageSource = new BitmapImage(new Uri(_usuario.Imagen, UriKind.Relative));

            txt_NombreCompleto.Text = $"{_usuario.Nombre} {_usuario.ApellidoPaterno} {_usuario.ApellidoMaterno}";
            txt_Usuario.Text = $"@{_usuario.NombreUsuario}";
            txt_NivelEducativo.Text = _usuario.NivelEducativo;
            txt_Institucion.Text = _usuario.Institucion;
        }


        private void RegresarAlLaComunidad(object sender, MouseButtonEventArgs e)
        {
            _frame.Navigate(new BuscarPerfil(_frame));

        }
    
        private void SeguirPerfil(object sender, RoutedEventArgs e)
        {
            brd_Seguir.Visibility = Visibility.Collapsed;
        }
    }
}
