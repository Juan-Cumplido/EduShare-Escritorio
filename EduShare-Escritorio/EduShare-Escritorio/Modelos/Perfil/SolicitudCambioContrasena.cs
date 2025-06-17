using Newtonsoft.Json;

namespace EduShare_Escritorio.Modelos.Perfil
{
    public class SolicitudCambioContrasena
    {
        [JsonProperty("correo")]
        public string Correo { get; set; } = string.Empty;

        [JsonProperty("codigo")]
        public string Codigo { get; set; } = string.Empty;

        [JsonProperty("nuevaContrasenia")]
        public string NuevaContrasenia { get; set; } = string.Empty;
    }

}
