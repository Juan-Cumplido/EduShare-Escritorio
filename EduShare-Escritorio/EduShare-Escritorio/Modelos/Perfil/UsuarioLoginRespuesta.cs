using Newtonsoft.Json;

namespace EduShare_Escritorio.Modelos.Perfil
{
    public class UsuarioLoginRespuesta
    {
        [JsonProperty("error")]
        public bool Error { get; set; }

        [JsonProperty("estado")]
        public int Estado { get; set; }

        [JsonProperty("mensaje")]
        public string Mensaje { get; set; } = string.Empty;

        [JsonProperty("token")]
        public string Token { get; set; } = string.Empty;

        [JsonProperty("datos")]
        public DatosUsuario Datos { get; set; }
    }

    public class DatosUsuario
    {
        public int IdUsuario { get; set; }
        public string Nombre { get; set; } = string.Empty;
        public string FotoPerfil { get; set; } = string.Empty;
        public string Correo { get; set; } = string.Empty;
        public string NombreUsuario { get; set; } = string.Empty;
        public string PrimerApellido { get; set; } = string.Empty;
        public string SegundoApellido { get; set; } = string.Empty;
        public string TipoAcceso { get; set; } = string.Empty;
    }

}
