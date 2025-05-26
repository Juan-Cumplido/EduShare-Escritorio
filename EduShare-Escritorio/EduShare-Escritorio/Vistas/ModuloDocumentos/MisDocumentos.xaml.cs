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
using static EduShare_Escritorio.Vistas.VentanaEmergentePersonalizada;

namespace EduShare_Escritorio.Vistas.ModuloDocumentos
{
    public partial class MisDocumentos : Page
    {
        private Frame _frame;
        private ObservableCollection<Documento> documentos;
        public MisDocumentos(Frame frame)
        {
            InitializeComponent();
            _frame = frame;
            CargarDocumentosFake();
        }

        private void MostrarMensajePersonalizado(string message, DialogType type)
        {
            var dialog = new VentanaEmergentePersonalizada(message, type)
            {
                Owner = Window.GetWindow(this)
            };
            dialog.ShowDialog();
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

        private void EliminarDocumento_Click(object sender, RoutedEventArgs e)
        {
            if (sender is Button boton && boton.Tag is Documento documento)
            {
                var confirmacion = new VentanaEmergentePersonalizada(
                    $"¿Desea eliminar el documento?\r\nEsto eliminará el documento \"{documento.Titulo}\" de EduShare?",
                    VentanaEmergentePersonalizada.DialogType.Confirmation);

                bool? resultado = confirmacion.ShowDialog();

                if (resultado == true)
                {
                    documentos.Remove(documento);
                }
            }
        }



    }
}
