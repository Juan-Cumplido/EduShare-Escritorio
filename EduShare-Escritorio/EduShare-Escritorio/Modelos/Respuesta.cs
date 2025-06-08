using System;
using System.Collections.Generic;
using Newtonsoft.Json;

namespace EduShare_Escritorio.Modelos
{
    public class  Respuesta
    {

        [JsonProperty("error")]
        public bool Error { get; set; }

        [JsonProperty("estado")]
        public int Codigo { get; set; }

        [JsonProperty("mensaje")]
        public string Mensaje { get; set; } = string.Empty;
    }
}
