using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media.Imaging;

    namespace EduShare_Escritorio.Modelos.ComentarioRespuesta
    {
        public class CrearComentarioRequest
        {
        [JsonProperty("contenido")]
        public string Contenido { get; set; }
        [JsonProperty("idPublicacion")]
        public int IdPublicacion { get; set; }
        }



        public class RespuestaComentario<T>
        {
        [JsonProperty("estado")]
        public int Resultado { get; set; }
        [JsonProperty("mensaje")]
        public string Mensaje { get; set; }
        [JsonProperty("datos")]
        public T Datos { get; set; }
        }
    }

