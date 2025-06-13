using EduShare_Escritorio.Utilidades;
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
    public partial class RevisarPublicaciones : Page
    {
       
        private Frame _frame;
        public RevisarPublicaciones(Frame frame)
        {
            InitializeComponent();
            _frame = frame;
            CargarDocumentosFake();
        }

        private void CargarDocumentosFake()
        {
            var documentos = new List<Documento>
        {
            new () {
                Titulo = "HILOS",
                Descripcion = "Este documento describe los diferentes tipos de hilos, incluyendo hilos de filamentos lisos e hilados, hilos texturizados voluminizados, elásticos y estabilizados, y hilos hilados de fibras …",
                Autor = "Max Kmacho",
                Fecha = "13 de septiembre de 2019",
                ImagenRuta = "/Vistas/Recursos/Fondos/Arte.jpg",

            },
            new () {
                Titulo = "Tecnología Textil Hilos",
                Descripcion = "Explica los métodos de hilatura como la continua por anillos...",
                Autor = "Andrea Vázquez",
                Fecha = "4 de abril de 2023",
                ImagenRuta = "/Vistas/Recursos/Fondos/Derecho.jpg",

            },
            new () {
                Titulo = "Fibra Textil",
                Descripcion = "Se analiza la estructura de las fibras textiles utilizadas...",
                Autor = "Carlos Rivera",
                Fecha = "10 de marzo de 2022",
                ImagenRuta = "/Vistas/Recursos/Fondos/Ingenieria.jpg",

            },
            new () {
                Titulo = "Análisis de Tejidos",
                Descripcion = "Clasificación, tipos y propiedades de tejidos modernos...",
                Autor = "Laura Méndez",
                Fecha = "22 de junio de 2020",
                ImagenRuta = "/Vistas/Recursos/Iconos/A.jpg",

            },
            new () {
                Titulo = "Manual de Hilatura",
                Descripcion = "Guía completa del proceso de hilado desde la materia prima...",
                Autor = "Jorge Escobar",
                Fecha = "15 de enero de 2021",
                ImagenRuta = "/Vistas/Recursos/Fondos/Ingenieria.jpg",
            },
        };

            itmc_DocumentosControl.ItemsSource = documentos;
        }

        private void VerDetallesDocumento(object sender, MouseButtonEventArgs e)
        {
            var border = sender as Border;
            if (border?.DataContext is Documento doc)
            {
                var paginaDetalle = new EvaluarPublicacion(doc, _frame);
                NavigationService?.Navigate(paginaDetalle, _frame);
            }
        }
    }
}
