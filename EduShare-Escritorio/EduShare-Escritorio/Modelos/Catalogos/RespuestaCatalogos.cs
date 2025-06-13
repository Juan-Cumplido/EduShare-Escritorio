using Newtonsoft.Json;

namespace EduShare_Escritorio.Modelos.Catalogos
{
    public class RespuestaCatalogos<T>
    {
        [JsonProperty("estado")]
        public int Resultado { get; set; }

        [JsonProperty("mensaje")]
        public string Mensaje { get; set; } = string.Empty;

        [JsonProperty("datos")]
        public T? Datos { get; set; }
    }
}
