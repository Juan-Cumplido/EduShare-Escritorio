using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media.Imaging;

namespace EduShare_Escritorio.Utilidades
{
    public class PublicacionVista
    {
        public string Titulo { get; set; } = string.Empty;
        public string Descripcion { get; set; } = string.Empty;
        public int IdCategoria { get; set; }
        public int IdUsuario { get; set; }
        public int IdRama { get; set; }
        public string NivelEducativo { get; set; } = string.Empty;
        public string Autor { get; set; } = string.Empty;   
        public string Fecha { get; set; } = string.Empty;
        public int Likes { get; set; }   
        public int Descargas { get; set; }
        public int Vistas { get; set; } 
        public string Estado { get; set; } = string.Empty;
        public string Ruta { get; set; } = string.Empty;
        public string NombreCompletoAutor { get; set; } = string.Empty;
        public int IdPublicacion { get; set; }

        public BitmapImage Imagen { get; set; }     
    }
}
