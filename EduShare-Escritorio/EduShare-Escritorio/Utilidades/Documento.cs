using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EduShare_Escritorio.Utilidades
{
    public class Documento
    {
        public string Titulo { get; set; }
        public string Descripcion { get; set; }
        public string Autor { get; set; }
        public string Fecha { get; set; }
        public string ImagenRuta { get; set; }
        public string Vistas { get; set; }
        public string Descargas { get; set; }
        public string Likes { get; set; }

        public Documento()
        {
            Titulo = string.Empty;
            Descripcion = string.Empty;
            Autor = string.Empty;
            Fecha = string.Empty;
            ImagenRuta = string.Empty;
            Vistas = string.Empty;
            Descargas = string.Empty;
            Likes = string.Empty;
        }
    }


}
