using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EduShare_Escritorio.Modelos.Comentario
{
    public class Comentario
    {
        [JsonProperty("idComentario")]
        public int IdComentario { get; set; }
        [JsonProperty("contenido")]
        public string Contenido { get; set; }
        [JsonProperty("fecha")]
        public DateTime Fecha { get; set; }
        [JsonProperty("idPublicacion")]
        public int IdPublicacion { get; set; }
        [JsonProperty("idUsuarioRegistrado")]
        public int IdUsuarioRegistrado { get; set; }
        [JsonProperty("nombre")]
        public string Nombre { get; set; }
        [JsonProperty("primerApellido")]
        public string PrimerApellido { get; set; }
        [JsonProperty("segundoApellido")]
        public string SegundoApellido { get; set; }
        [JsonProperty("fotoPerfil")]
        public string FotoPerfil { get; set; }
        [JsonProperty("nombreUsuario")]
        public string NombreUsuario { get; set; }


        public string NombreCompleto => $"{Nombre} {PrimerApellido} {SegundoApellido}".Trim();
        public string FechaFormateada => Fecha.ToString("dd/MM/yyyy HH:mm");
    }
}
