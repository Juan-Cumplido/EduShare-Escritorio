using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows.Documents;

namespace EduShare_Escritorio.Utilidades
{
    public class PerfilSingleton
    {
        private static readonly PerfilSingleton _instanciaSingleton = new ();

        private PerfilSingleton()
        {
            Correo = string.Empty;
            NombreUsuario = string.Empty;
            IdUsuarioRegistrado = 0;
            Nombre = string.Empty;
            PrimerApellido = string.Empty;
            SegundoApellido = string.Empty;
            FotoPerfilBinaria = Array.Empty<byte>();
            TokenJwt = string.Empty;
            NivelEducativo = string.Empty;  
            IdInstitucion = 0;
        }

        public static PerfilSingleton Instance => _instanciaSingleton;
        public string Correo { get; set; }

        private string nombreUsuario;
        public string NombreUsuario
        {
            get => nombreUsuario;
            set => SetProperty(ref nombreUsuario, value);
        }
        public int IdUsuarioRegistrado { get; set; }
        public string Nombre { get; set; }
        public int IdInstitucion { get; set; }
        public string NivelEducativo { get; set; }
        public string PrimerApellido { get; set; }
        public string SegundoApellido { get; set; }
        private byte[] fotoPerfilBinaria;
        public byte[] FotoPerfilBinaria
        {
            get => fotoPerfilBinaria;
            set => SetProperty(ref fotoPerfilBinaria, value);
        }
        public string TokenJwt { get; set; }

        public event PropertyChangedEventHandler? PropertyChanged;

        protected void OnPropertyChanged([CallerMemberName] string? propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        protected bool SetProperty<T>(ref T field, T value, [CallerMemberName] string? propertyName = null)
        {
            if (Equals(field, value)) return false;
            field = value;
            OnPropertyChanged(propertyName);
            return true;
        }


        public void Reset()
        {
            Correo = string.Empty;
            NombreUsuario = string.Empty;
            IdUsuarioRegistrado = 0;
            Nombre = string.Empty;
            PrimerApellido = string.Empty;
            SegundoApellido = string.Empty;
            FotoPerfilBinaria = [];
            TokenJwt = string.Empty;
            NivelEducativo = string.Empty;
            IdInstitucion = 0;
        }

    }
}
