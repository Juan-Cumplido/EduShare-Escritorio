using Newtonsoft.Json;

namespace EduShare_Escritorio.Modelos.Catalogos
{
    public class Institucion
    {
        [JsonProperty("idInstitucion")]
        public int IdInstitucion { get; set; }

        [JsonProperty("nombreInstitucion")]
        public string NombreInstitucion { get; set; } = string.Empty;

        [JsonProperty("nivelEducativo")]
        public string NivelEducativo { get; set; } = string.Empty;
    }
}
