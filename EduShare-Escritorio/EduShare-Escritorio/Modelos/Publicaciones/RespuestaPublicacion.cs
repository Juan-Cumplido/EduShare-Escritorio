using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EduShare_Escritorio.Modelos.Publicaciones
{
    public class RespuestaPublicacion<T>
    {
            [JsonProperty("estado")]
            public int Resultado { get; set; }
                [JsonProperty("resultado")]
                public int Estado { get; set; }

        [JsonProperty("mensaje")]
            public string Mensaje { get; set; } = string.Empty;

            [JsonProperty("datos")]
            public T? Datos { get; set; }
    }

    public class RespuestaSimple
    {
        [JsonProperty("estado")]
        public int Resultado { get; set; }

        [JsonProperty("mensaje")]
        public string Mensaje { get; set; } = string.Empty;
    }

    public class RespuestaLike
    {
        [JsonProperty("estado")]
        public int Resultado { get; set; }

        [JsonProperty("mensaje")]
        public string Mensaje { get; set; } = string.Empty;
    }
}
