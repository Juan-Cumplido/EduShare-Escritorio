using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EduShare_Escritorio.Modelos.Usuarios
{
    public class UsuarioSeguimiento
    {
        [JsonProperty("idUsuarioRegistrado")]
        public int IdUsuarioRegistrado { get; set; }

        [JsonProperty("nombre")]
        public string Nombre { get; set; } = string.Empty;

        [JsonProperty("primerApellido")]
        public string PrimerApellido { get; set; } = string.Empty;

        [JsonProperty("segundoApellido")]
        public string SegundoApellido { get; set; } = string.Empty ;

        [JsonProperty("fotoPerfil")]
        public string FotoPerfil { get; set; } = string .Empty ;

        [JsonProperty("nombreUsuario")]
        public string NombreUsuario { get; set; } = string.Empty;

        [JsonProperty("nombreInstitucion")]
        public string NombreInstitucion { get; set; } = string.Empty;

        [JsonProperty("nivelEducativo")]
        public string NivelEducativo { get; set; } = string.Empty;

        public string NombreCompleto => $"{Nombre} {PrimerApellido} {SegundoApellido}";
    }


    public class RespuestaApi
    {
        [JsonProperty("estado")]
        public int Estado { get; set; }

        [JsonProperty("mensaje")]
        public string Mensaje { get; set; } = string.Empty;
    }

    public class RespuestaApi<T> : RespuestaApi
    {
        public T Datos { get; set; }
    }

}
