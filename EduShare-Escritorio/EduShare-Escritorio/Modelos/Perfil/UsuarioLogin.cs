using Newtonsoft.Json;

namespace EduShare_Escritorio.Modelos.Perfil
{
    public class UsuarioLogin
    {
        [JsonProperty("identifier")]
        public string Identifier { get; set; } = string.Empty;
        [JsonProperty("contrasenia")]
        public string Contrasenia { get; set; } = string.Empty;
    }
}
