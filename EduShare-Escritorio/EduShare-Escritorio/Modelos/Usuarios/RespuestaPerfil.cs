using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EduShare_Escritorio.Modelos.Usuarios
{
    public class RespuestaPerfil<T>
    {
        [JsonProperty("estado")]
        public int Resultado { get; set; }

        [JsonProperty("mensaje")]
        public string Mensaje { get; set; } = string.Empty;

        [JsonProperty("datos")]
        public T? Datos { get; set; }
    }
}
