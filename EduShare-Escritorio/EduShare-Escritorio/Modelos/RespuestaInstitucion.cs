using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EduShare_Escritorio.Modelos
{
    public class RespuestaInstitucion<T>
    {
        [JsonProperty("resultado")]
        public int Resultado { get; set; }

        [JsonProperty("mensaje")]
        public string Mensaje { get; set; } = string.Empty;

        [JsonProperty("datos")]
        public T? Datos { get; set; }
    }
}
