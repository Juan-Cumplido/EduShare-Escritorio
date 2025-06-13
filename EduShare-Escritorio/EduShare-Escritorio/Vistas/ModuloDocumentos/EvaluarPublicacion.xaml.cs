using EduShare_Escritorio.Utilidades;
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

namespace EduShare_Escritorio.Vistas.ModuloDocumentos
{
    public partial class EvaluarPublicacion : Page
    {
        private Frame _frame;
        public EvaluarPublicacion(Documento doc, Frame frame)
        {
            InitializeComponent();
            _frame = frame;
        }

        private void MostrarPantallaPrincipal(object sender, MouseButtonEventArgs e)
        {
            _frame.Navigate(new RevisarPublicaciones(_frame));
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
    }
}
