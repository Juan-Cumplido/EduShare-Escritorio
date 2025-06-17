using Newtonsoft.Json;

namespace EduShare_Escritorio.Modelos.Perfil
{
    public class PerfilPropio
    {
        [JsonProperty("resultado")]
        public int Codigo { get; set; }

        [JsonProperty("mensaje")]
        public string Mensaje { get; set; } = string.Empty;

        [JsonProperty("datos")]
        public DatosPerfil Datos { get; set; }
    }

    public class DatosPerfil
    {
        [JsonProperty("idUsuarioRegistrado")]
        public string IdUsuarioRegistrado { get; set; } = string.Empty;

        [JsonProperty("nombre")]
        public string Nombre { get; set; } = string.Empty;

        [JsonProperty("primerApellido")]
        public string PrimerApellido { get; set; } = string.Empty;

        [JsonProperty("segundoApellido")]
        public string SegundoApellido { get; set; } = string.Empty;

        [JsonProperty("fotoPerfil")]
        public string FotoPerfil { get; set; } = string.Empty;

        [JsonProperty("correo")]
        public string Correo { get; set; } = string.Empty;

        [JsonProperty("nombreUsuario")]
        public string NombreUsuario { get; set; } = string.Empty;

        [JsonProperty("idInstitucion")]
        public string IdInstitucion { get; set; } = string.Empty;

        [JsonProperty("nombreInstitucion")]
        public string NombreInstitucion { get; set; } = string.Empty;

        [JsonProperty("nivelEducativo")]
        public string NivelEducativo { get; set; } = string.Empty;

        [JsonProperty("numeroSeguidores")]
        public string NumeroSeguidores { get; set; } = string.Empty;

        [JsonProperty("numeroSeguidos")]
        public string NumeroSeguidos { get; set; } = string.Empty;
    }
}
