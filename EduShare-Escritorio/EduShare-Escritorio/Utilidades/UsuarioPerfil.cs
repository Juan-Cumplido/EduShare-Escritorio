using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media.Imaging;

namespace EduShare_Escritorio.Utilidades
{
    public class UsuarioPerfil
    {
        public string NombreCompleto => $"{Nombre} {PrimerApellido} {SegundoApellido}".Trim();
        public string Nombre { get; set; } = string.Empty;
        public string PrimerApellido { get; set; } = string.Empty;
        public string SegundoApellido { get; set; } = string.Empty;
        public string NombreUsuario { get; set; } = string.Empty;
        public string NombreInstitucion { get; set; } = string.Empty;
        public int Seguidos { get; set; }
        public string NivelEducativo { get; set; } = string.Empty;
        public int Seguidore { get; set; }
        public int Publicaciones { get; set; }
        public BitmapImage? Imagen { get; set; }
        public string FotoPerfilRuta { get; set; } = string.Empty;
        public int IdUsuarioRegistrado { get; set; }

    }


}