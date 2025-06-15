
using Newtonsoft.Json;
using System.Windows.Media.Imaging;

namespace EduShare_Escritorio.Modelos.Publicaciones
{
    public class Publicacion
    {


        [JsonProperty("idCategoria")]
        public int IdCategoria { get; set; }

        [JsonProperty("resuContenido")]
        public string ResuContenido { get; set; } = string.Empty;

        [JsonProperty("nivelEducativo")]
        public string NivelEducativo { get; set; } = string.Empty ;

        [JsonProperty("idMateriaYRama")]
        public int IdMateriaYRama { get; set; }

        [JsonProperty("idDocumento")]
        public int IdDocumento { get; set; }

        [JsonProperty("idPublicacion")]
        public int IdPublicacion { get; set; }


        [JsonProperty("fecha")]
        public DateTime Fecha { get; set; }

        [JsonProperty("estado")]
        public string Estado { get; set; } = string.Empty;

        [JsonProperty("numeroLiker")]
        public int NumeroLiker { get; set; }

        [JsonProperty("numeroVisualizaciones")]
        public int NumeroVisualizaciones { get; set; }

        [JsonProperty("numeroDescargas")]
        public int NumeroDescargas { get; set; }

        [JsonProperty("idUsuarioRegistrado")]
        public int IdUsuarioRegistrado { get; set; }


        [JsonProperty("titulo")]
        public string Titulo { get; set; } = string.Empty;

        [JsonProperty("ruta")]
        public string Ruta { get; set; } = string.Empty;

        [JsonProperty("nombreCompleto")]
        public string NombreCompleto { get; set; } = string.Empty;

    }
}
