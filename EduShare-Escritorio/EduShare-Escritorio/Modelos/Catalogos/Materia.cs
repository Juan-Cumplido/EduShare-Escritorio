using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EduShare_Escritorio.Modelos.Catalogos
{
    public class Materia
    {
        [JsonProperty("idMateria")]
        public int IdMateria { get; set; }

        [JsonProperty("nombreMateria")]
        public string NombreMateria { get; set; } = string.Empty;

        [JsonProperty("idRama")]
        public string IdRama { get; set; } = string.Empty;

        [JsonProperty("nombreRama")]
        public string NombreRama { get; set; } = string.Empty;

        [JsonProperty("idMateriaYRama")]
        public string IdMateriaYRama { get; set; } = string.Empty;

    }
}
