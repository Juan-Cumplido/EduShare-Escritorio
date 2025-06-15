using EduShare_Escritorio.Modelos.Catalogos;
using EduShare_Escritorio.Utilidades;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using EduShare_Escritorio.Modelos;
using EduShare_Escritorio.Modelos.Usuarios;
using EduShare_Escritorio.Modelos.Perfil;
using System.Net.Http.Headers;
using System.Text.Json;

namespace EduShare_Escritorio.Servicio
{
    public class PerfilServicio
    {
        private static readonly LoggerManager _logger = new LoggerManager(typeof(CatalogosServicio));

        public static async Task<RespuestaPerfil<List<Perfil>>> BuscarPerfiles(string token)
        {
            var respuestaFinal = new RespuestaPerfil<List<Perfil>>();
            using (var httpClient = new HttpClient())
            {
                try
                {
                    httpClient.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", token);
                    var httpResponse = await httpClient.GetAsync($"{Resources.BASE_URL}perfil");
                    string json = await httpResponse.Content.ReadAsStringAsync();
                    var respuestaApi = JsonConvert.DeserializeObject<RespuestaPerfil<List<Perfil>>>(json);

                    if (respuestaApi != null)
                    {
                        respuestaFinal.Resultado = respuestaApi.Resultado;
                        respuestaFinal.Mensaje = respuestaApi.Mensaje;
                        respuestaFinal.Datos = respuestaApi.Resultado == 200 ? respuestaApi.Datos : new List<Perfil>();
                    }
                    else
                    {
                        respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                        respuestaFinal.Mensaje = "No se pudo procesar la respuesta del servidor.";
                        respuestaFinal.Datos = new List<Perfil>();
                    }
                }
                catch (HttpRequestException httpRequestException)
                {
                    respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                    respuestaFinal.Mensaje = $"Error de red: {httpRequestException.Message}";
                    _logger.LogFatal(httpRequestException);
                }
               
                catch (Exception ex)
                {
                    respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                    respuestaFinal.Mensaje = $"Error inesperado: {ex.Message}";
                    _logger.LogFatal(ex);
                }
            }

            return respuestaFinal;
        }

        public static async Task<RespuestaPerfil<Perfil>> BuscarPerfilPorId(int idUsuario, string token)
        {
            var respuestaFinal = new RespuestaPerfil<Perfil>();

            using (var httpClient = new HttpClient())
            {
                try
                {
                    httpClient.DefaultRequestHeaders.Authorization =
                        new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", token);

                    var httpResponse = await httpClient.GetAsync($"{Resources.BASE_URL}perfil/{idUsuario}");
                    string json = await httpResponse.Content.ReadAsStringAsync();

                    var respuestaApi = JsonConvert.DeserializeObject<RespuestaPerfil<Perfil>>(json);

                    if (respuestaApi != null)
                    {
                        respuestaFinal.Resultado = respuestaApi.Resultado;
                        respuestaFinal.Mensaje = respuestaApi.Mensaje;
                        respuestaFinal.Datos = respuestaApi.Resultado == 200 ? respuestaApi.Datos : null;
                    }
                    else
                    {
                        respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                        respuestaFinal.Mensaje = "No se pudo procesar la respuesta del servidor.";
                        respuestaFinal.Datos = null;
                    }
                }
                catch (HttpRequestException httpRequestException)
                {
                    respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                    respuestaFinal.Mensaje = $"Error de red: {httpRequestException.Message}";
                    _logger.LogFatal(httpRequestException);
                }
               
                catch (Exception ex)
                {
                    respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                    respuestaFinal.Mensaje = $"Error inesperado: {ex.Message}";
                    _logger.LogFatal(ex);
                }
            }

            return respuestaFinal;
        }

        public static async Task<RespuestaApi> SeguirUsuario(int idUsuarioSeguido, string token)
        {
            var respuesta = new RespuestaApi();
            using (var httpClient = new HttpClient())
            {
                try
                {

                    httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);
                    var contenido = new StringContent(JsonConvert.SerializeObject(new { idUsuarioSeguido }), Encoding.UTF8, "application/json");

                    var resultado = await httpClient.PostAsync($"{Resources.BASE_URL}seguimiento/seguir", contenido);
                    string json = await resultado.Content.ReadAsStringAsync();

                    respuesta = JsonConvert.DeserializeObject<RespuestaApi>(json);

                    
                }
                catch (HttpRequestException httpRequestException)
                {
                    respuesta.Estado = (int)HttpStatusCode.InternalServerError;
                    respuesta.Mensaje = $"Error de red: {httpRequestException.Message}";
                    _logger.LogFatal(httpRequestException);
                }
                catch (Exception ex)
                {
                    respuesta.Estado = (int)HttpStatusCode.InternalServerError;
                    respuesta.Mensaje = $"Error inesperado: {ex.Message}";
                    _logger.LogFatal(ex);
                }
               
            }
            return respuesta;
        }

        public static async Task<RespuestaApi> DejarDeSeguirUsuario(int idUsuarioSeguido, string token)
        {
            var respuesta = new RespuestaApi();
            using (var httpClient = new HttpClient())
            {
                try
                {
                    httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);
                    var contenido = new StringContent(JsonConvert.SerializeObject(new { idUsuarioSeguido }), Encoding.UTF8, "application/json");

                    var request = new HttpRequestMessage(HttpMethod.Delete, $"{Resources.BASE_URL}seguimiento/dejar-seguir")
                    {
                        Content = contenido
                    };

                    var resultado = await httpClient.SendAsync(request);
                    string json = await resultado.Content.ReadAsStringAsync();

                    respuesta = JsonConvert.DeserializeObject<RespuestaApi>(json);
                }
                    catch (HttpRequestException httpRequestException)
                    {
                    respuesta.Estado = (int)HttpStatusCode.InternalServerError;
                    respuesta.Mensaje = $"Error de red: {httpRequestException.Message}";
                    _logger.LogFatal(httpRequestException);
                }
                 
                    catch (Exception ex)
                    {
                    respuesta.Estado = (int)HttpStatusCode.InternalServerError;
                    respuesta.Mensaje = $"Error inesperado: {ex.Message}";
                    _logger.LogFatal(ex);
                }
        }
            return respuesta;
        }

        public static async Task<RespuestaApi<List<UsuarioSeguimiento>>> ObtenerSeguidores(string token)
        {
            var respuesta = new RespuestaApi<List<UsuarioSeguimiento>>();
            using (var httpClient = new HttpClient())
            {
                try
                {

                    httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);
                    var resultado = await httpClient.GetAsync($"{Resources.BASE_URL}seguimiento/seguidores");

                    string json = await resultado.Content.ReadAsStringAsync();
                    respuesta = JsonConvert.DeserializeObject<RespuestaApi<List<UsuarioSeguimiento>>>(json);



                }
                catch (HttpRequestException httpRequestException)
                {
                    respuesta.Estado = (int)HttpStatusCode.InternalServerError;
                    respuesta.Mensaje = $"Error de red: {httpRequestException.Message}";
                    _logger.LogFatal(httpRequestException);
                }
                catch (Exception ex)
                {
                    respuesta.Estado = (int)HttpStatusCode.InternalServerError;
                    respuesta.Mensaje = $"Error inesperado: {ex.Message}";
                    _logger.LogFatal(ex);
                }
            }
            return respuesta;
        }

        public static async Task<RespuestaApi<List<UsuarioSeguimiento>>> ObtenerSeguidos(string token)
        {
            var respuesta = new RespuestaApi<List<UsuarioSeguimiento>>();
            using (var httpClient = new HttpClient())
            {
                try
                {

                    httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);
                    var resultado = await httpClient.GetAsync($"{Resources.BASE_URL}seguimiento/seguidos");

                    string json = await resultado.Content.ReadAsStringAsync();
                    respuesta = JsonConvert.DeserializeObject<RespuestaApi<List<UsuarioSeguimiento>>>(json);



                }
                catch (HttpRequestException httpRequestException)
                {
                    respuesta.Estado = (int)HttpStatusCode.InternalServerError;
                    respuesta.Mensaje = $"Error de red: {httpRequestException.Message}";
                    _logger.LogFatal(httpRequestException);
                }
                catch (Exception ex)
                {
                    respuesta.Estado = (int)HttpStatusCode.InternalServerError;
                    respuesta.Mensaje = $"Error inesperado: {ex.Message}";
                    _logger.LogFatal(ex);
                }

                
            }
            return respuesta;
        }

        public static async Task<RespuestaApi> VerificarSeguimiento(int idUsuarioSeguido, string token)
        {
            var respuesta = new RespuestaApi();
            using (var httpClient = new HttpClient())
            {
                try
                {

                    httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);
                    var resultado = await httpClient.GetAsync($"{Resources.BASE_URL}seguimiento/verificar/{idUsuarioSeguido}");

                    string json = await resultado.Content.ReadAsStringAsync();
                    respuesta = JsonConvert.DeserializeObject<RespuestaApi>(json);



                }
                catch (HttpRequestException httpRequestException)
                {
                    respuesta.Estado = (int)HttpStatusCode.InternalServerError;
                    respuesta.Mensaje = $"Error de red: {httpRequestException.Message}";
                    _logger.LogFatal(httpRequestException);
                }
                catch (Exception ex)
                {
                    respuesta.Estado = (int)HttpStatusCode.InternalServerError;
                    respuesta.Mensaje = $"Error inesperado: {ex.Message}";
                    _logger.LogFatal(ex);
                }


            }
            return respuesta;
        }


    }
}
