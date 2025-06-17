using Newtonsoft.Json;

namespace EduShare_Escritorio.Modelos.Perfil
{
    public class UsuarioRegistro
    {
        [JsonProperty("correo")]
        public string Correo { get; set; } = string.Empty;
        [JsonProperty("contrasenia")]
        public string Contrasenia { get; set; } = string.Empty;
        [JsonProperty("nombreUsuario")]
        public string NombreUsuario { get; set; } = string.Empty;
        [JsonProperty("nombre")]
        public string Nombre { get; set; } = string.Empty;
        [JsonProperty("primerApellido")]
        public string PrimerApellido { get; set; } = string.Empty;
        [JsonProperty("segundoApellido")]
        public string SegundoApellido { get; set; } = string.Empty;
        [JsonProperty("fotoPerfil")]
        public string FotoPerfil { get; set; } = string.Empty;
        [JsonProperty("idInstitucion")]
        public int IdInstitucion { get; set; }
    }
}
