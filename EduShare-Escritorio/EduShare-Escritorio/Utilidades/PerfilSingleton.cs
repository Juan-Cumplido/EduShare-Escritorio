using System;

namespace EduShare_Escritorio.Utilidades
{
    public class PerfilSingleton
    {
        private static readonly PerfilSingleton _instanciaSingleton = new ();

        private PerfilSingleton()
        {
            Correo = string.Empty;
            NombreUsuario = string.Empty;
            Nombre = string.Empty;
            PrimerApellido = string.Empty;
            SegundoApellido = string.Empty;
            FotoPerfilBinaria = Array.Empty<byte>();
        }

        public static PerfilSingleton Instance => _instanciaSingleton;

        public int IdAcceso { get; set; }
        public string Correo { get; set; }
        public string NombreUsuario { get; set; }
        public int IdUsuarioRegistrado { get; set; }
        public string Nombre { get; set; }
        public string PrimerApellido { get; set; }
        public string SegundoApellido { get; set; }
        public byte[] FotoPerfilBinaria { get; set; }

        public void Reset()
        {
            IdAcceso = 0;
            Correo = string.Empty;
            NombreUsuario = string.Empty;
            IdUsuarioRegistrado = 0;
            Nombre = string.Empty;
            PrimerApellido = string.Empty;
            SegundoApellido = string.Empty;
            FotoPerfilBinaria = [];
        }
    }
}
