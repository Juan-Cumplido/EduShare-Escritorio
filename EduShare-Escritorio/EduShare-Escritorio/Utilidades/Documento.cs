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

        public int Vistas { get; set; }
        public int Descargas { get; set; }
        public int Likes { get; set; }


        public Documento()
        {
            Titulo = string.Empty;
            Descripcion = string.Empty;
            Autor = string.Empty;
            Fecha = string.Empty;
            ImagenRuta = string.Empty;
            Vistas = 0;
            Descargas = 0;
            Likes = 0;
        }
    }


}