using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EduShare_Escritorio.Modelos.Catalogos
{
    public class Rama
    {
        [JsonProperty("idRama")]
        public int IdRama { get; set; }

        [JsonProperty("nombreRama")]
        public string NombreRama { get; set; } = string.Empty;

    }
}
