using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EduShare_Escritorio.Utilidades
{
    public class UsuarioPerfil
    {
        public string Nombre { get; set; }
        public  string ApellidoPaterno { get; set; }
        public  string ApellidoMaterno { get; set; }
        public  string NivelEducativo { get; set; }
        public  string NombreUsuario { get; set; }
        public  string Institucion { get; set; }
        public  string Imagen { get; set; }

        public string NombreCompleto => $"{Nombre} {ApellidoPaterno} {ApellidoMaterno}";
    }

}
