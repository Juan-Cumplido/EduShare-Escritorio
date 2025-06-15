using Newtonsoft.Json;
using System.IO.Packaging;


namespace EduShare_Escritorio.Modelos.Catalogos
{
    public class Categoria
    {
        [JsonProperty("idCategoria")]
        public int IdCategoria { get; set; }

        [JsonProperty("nombreCategoria")]
        public string NombreCategoria { get; set; } = string.Empty;

    }

}
