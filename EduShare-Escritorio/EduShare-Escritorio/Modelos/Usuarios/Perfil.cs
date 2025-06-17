using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EduShare_Escritorio.Modelos.Usuarios
{
    public class Perfil
    {
        [JsonProperty("idUsuarioRegistrado")]
        public int IdUsuarioRegistrado { get; set; } 

        [JsonProperty("nombre")]
        public string Nombre { get; set; } = string.Empty;


        [JsonProperty("nombreUsuario")]
        public string NombreUsuario { get; set; } = string.Empty;


        [JsonProperty("primerApellido")]
        public string PrimerApellido { get; set; } = string.Empty;


        [JsonProperty("segundoApellido")]
        public string SegundoApellido { get; set; } = string.Empty;

        [JsonProperty("fotoPerfil")]
        public string FotoPerfil { get; set; } = string.Empty;

        [JsonProperty("numeroPublicaciones")]
        public int NumeroPublicaciones { get; set; } 

        [JsonProperty("numeroSeguidores")]
        public int NumeroSeguidores { get; set; } 

        [JsonProperty("nivelEducativo")]
        public string NivelEducativo { get; set; } = string.Empty;

        [JsonProperty("idInstitucion")]
        public int IdInstitucion { get; set; }

        [JsonProperty("nombreInstitucion")]
        public string NombreInstitucion { get; set; } = string.Empty;

        [JsonProperty("numeroSeguidos")]
        public int NumeroSeguidos { get; set; }

    }
}
