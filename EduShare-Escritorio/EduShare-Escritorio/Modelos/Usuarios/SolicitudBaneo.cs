using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EduShare_Escritorio.Modelos.Usuarios
{
    public class SolicitudBaneo
    {
        [JsonProperty("idUsuarioRegistrado")]
        public int IdUsuarioRegistrado { get; set; }
    }

}
