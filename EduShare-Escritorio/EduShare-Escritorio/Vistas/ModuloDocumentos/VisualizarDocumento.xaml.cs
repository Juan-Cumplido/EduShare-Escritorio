using EduShare_Escritorio.Utilidades;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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

namespace EduShare_Escritorio.Vistas.ModuloDocumentos
{
    public partial class VisualizarDocumento : Page
    {
        public class Comentario
        {
            public required string Usuario { get; set; }
            public required string Texto { get; set; }
            public required string Imagen { get; set; }
            public string Alineacion => EsPropio ? "Right" : "Left";
            public bool EsPropio { get; set; }
        }

        private ObservableCollection<Comentario> comentarios = new ObservableCollection<Comentario>();

        public VisualizarDocumento(Documento doc)
        {
            InitializeComponent();
            this.Loaded += VerificarSiInicioSesion;
            
            ListaComentarios.ItemsSource = comentarios;
            comentarios.Add(new Comentario { Usuario = "Ana", Texto = "Este documento es muy útil", Imagen = "/Vistas/Recursos/Fondos/Arte.jpg", EsPropio = false });
            comentarios.Add(new Comentario { Usuario = "Luis", Texto = "¿Hay una versión en inglés?", Imagen = "/Vistas/Recursos/Fondos/Derecho.jpg", EsPropio = false });
            comentarios.Add(new Comentario { Usuario = "Juan", Texto = "Muy claro el contenido", Imagen = "/Vistas/Recursos/Fondos/Ingenieria.jpg", EsPropio = false });
            comentarios.Add(new Comentario { Usuario = "María", Texto = "Podrías subir más material como este?", Imagen = "/Vistas/Recursos/Iconos/a.jpg", EsPropio = false });
            comentarios.Add(new Comentario { Usuario = "Abdiel", Texto = "Claro, pronto subiré otro documento sobre el tema.", Imagen = "/Vistas/Recursos/Fondos/Arte.jpg", EsPropio = false });

            ActualizarVisibilidadComentarios();
        }

        private void VerificarSiInicioSesion(object sender, RoutedEventArgs e)
        {
            var perfil = PerfilSingleton.Instance;

            if (!string.IsNullOrEmpty(perfil.Correo))
            {
                InicializarWebView2();
                txtb_Frase.Visibility = Visibility.Collapsed;
                img_Visualizar.Visibility = Visibility.Collapsed;
                PdfWebView.Visibility = Visibility.Visible;
                stckp_Accesorios.Visibility = Visibility.Visible;
                elp_Perfil.Visibility = Visibility.Visible;
                brd_Comentarios.Visibility = Visibility.Visible;

                SolidColorBrush verde = new((Color)ColorConverter.ConvertFromString("#16b555"));
                brd_Descargar.Background = verde;
                btn_Descargar.IsEnabled = true;
                brd_Descargar.Cursor = Cursors.Hand;
            }
        }

        private async void InicializarWebView2()
        {
            await PdfWebView.EnsureCoreWebView2Async();

            var settings = PdfWebView.CoreWebView2.Settings;
            settings.IsScriptEnabled = false;
            settings.AreDevToolsEnabled = false;
            settings.IsZoomControlEnabled = false;
            settings.AreDefaultContextMenusEnabled = false; 
            settings.IsBuiltInErrorPageEnabled = false;


            PdfWebView.NavigationStarting += (s, e) =>
            {
                if (!e.Uri.EndsWith(".pdf"))
                {
                    e.Cancel = true;
                }
            };

            string rutaPdf = "file:///C:/Users/cumpl/Downloads/Presentacion_Proyecto_Final_EduShare.pdf";
            PdfWebView.Source = new Uri(rutaPdf);
        }


        private void AgregarComentario_Click(object sender, RoutedEventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(txtb_NuevoComentario.Text))
            {
                comentarios.Add(new Comentario
                {
                    Usuario = "Tú",
                    Texto = txtb_NuevoComentario.Text,
                    Imagen = "/Vistas/Recursos/Iconos/A.jpg",
                    EsPropio = true
                });

                txtb_NuevoComentario.Text = string.Empty;
                ActualizarVisibilidadComentarios();
            }
        }

        private void EnviarComentario(object sender, MouseButtonEventArgs e)
        {
            AgregarComentario_Click(sender, e);
        }


        private void TxtbNuevoComentario(object sender, TextChangedEventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(txtb_NuevoComentario.Text))
            {
                img_EnviarComentario.Source = new BitmapImage(new Uri("/Vistas/Recursos/Iconos/EnviarActivado.png", UriKind.Relative));
                img_EnviarComentario.Cursor = Cursors.Hand;
            }
            else
            {
                img_EnviarComentario.Source = new BitmapImage(new Uri("/Vistas/Recursos/Iconos/EnviarDesactivado.png", UriKind.Relative));
                img_EnviarComentario.Cursor = Cursors.No;
            }
        }


        private void EliminarComentario(object sender, RoutedEventArgs e)
        {
            if (sender is Button btn && btn.Tag is Comentario comentario)
            {
                comentarios.Remove(comentario);
                ActualizarVisibilidadComentarios();
            }
        }

        private void ActualizarVisibilidadComentarios()
        {
            bool hayComentarios = comentarios.Count > 0;
            txtb_SinComentarios.Visibility = hayComentarios ? Visibility.Collapsed : Visibility.Visible;
            txtb_Comentarios.Visibility = hayComentarios ? Visibility.Visible : Visibility.Collapsed;
        }


    }
}
