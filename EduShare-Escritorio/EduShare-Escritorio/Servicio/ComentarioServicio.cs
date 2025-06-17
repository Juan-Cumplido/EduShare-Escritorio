using EduShare_Escritorio.Modelos;
using EduShare_Escritorio.Modelos.Comentario;
using EduShare_Escritorio.Modelos.ComentarioRespuesta;
using EduShare_Escritorio.Utilidades;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace EduShare_Escritorio.Servicio
{
    public class ComentarioServicio
    {
        private static readonly LoggerManager _logger = new LoggerManager(typeof(ComentarioServicio));

        public static async Task<Respuesta?> CrearComentarioAsync(string token, CrearComentarioRequest datos)
        {
            Respuesta respuesta = new();
            using var httpClient = new HttpClient();
            httpClient.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", token);

            var json = JsonConvert.SerializeObject(datos);
            

            var content = new StringContent(json, Encoding.UTF8, "application/json");

            try
            {
                var response = await httpClient.PostAsync($"{Resources.BASE_URL}comentario", content);
                var body = await response.Content.ReadAsStringAsync();
                var resultado = JsonConvert.DeserializeObject<Respuesta>(body);
                resultado.Resultado = (int)response.StatusCode;
                return resultado;
            }
            catch (HttpRequestException httpRequestException)
            {
                respuesta.Resultado = (int)HttpStatusCode.InternalServerError;
                respuesta.Mensaje = $"Error de red: {httpRequestException.Message}";
                _logger.LogFatal(httpRequestException);
            }
            catch (JsonException jsonException)
            {
                respuesta.Resultado = (int)HttpStatusCode.InternalServerError;
                respuesta.Mensaje = $"Error al procesar la respuesta JSON: {jsonException.Message}";
                _logger.LogFatal(jsonException);
            }
            catch (Exception ex)
            {
                respuesta.Resultado = (int)HttpStatusCode.InternalServerError;
                respuesta.Mensaje = $"Error inesperado: {ex.Message}";
                _logger.LogFatal(ex);
            }
            return respuesta;
        }

        public static async Task<Respuesta?> EliminarComentarioAsync(string token, int idComentario)
        {
            Respuesta respuesta = new();
            using var httpClient = new HttpClient();
            httpClient.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", token);

            try
            {
                var response = await httpClient.DeleteAsync($"{Resources.BASE_URL}comentario/{idComentario}");
                var body = await response.Content.ReadAsStringAsync();

                var resultado = JsonConvert.DeserializeObject<Respuesta>(body);
                resultado.Resultado = (int)response.StatusCode;
                return resultado;
            }
            catch (HttpRequestException httpRequestException)
            {
                respuesta.Resultado = (int)HttpStatusCode.InternalServerError;
                respuesta.Mensaje = $"Error de red: {httpRequestException.Message}";
                _logger.LogFatal(httpRequestException);
            }
            catch (JsonException jsonException)
            {
                respuesta.Resultado = (int)HttpStatusCode.InternalServerError;
                respuesta.Mensaje = $"Error al procesar la respuesta JSON: {jsonException.Message}";
                _logger.LogFatal(jsonException);
            }
            catch (Exception ex)
            {
                respuesta.Resultado = (int)HttpStatusCode.InternalServerError;
                respuesta.Mensaje = $"Error inesperado: {ex.Message}";
                _logger.LogFatal(ex);
            }
            return respuesta;
        }

        public static async Task<RespuestaComentario<List<Comentario>>> ObtenerComentariosPorPublicacionAsync(int idPublicacion)
        {
            var respuestaFinal = new RespuestaComentario<List<Comentario>>();

            using (var httpClient = new HttpClient())
            {
                try
                {
                    var httpResponse = await httpClient.GetAsync($"{Resources.BASE_URL}comentario/publicacion/{idPublicacion}");
                    string json = await httpResponse.Content.ReadAsStringAsync();

                    var respuestaApi = JsonConvert.DeserializeObject<RespuestaComentario<List<Comentario>>>(json);
                    if (respuestaApi != null)
                    {
                        respuestaFinal.Resultado = (int)httpResponse.StatusCode;
                        respuestaFinal.Mensaje = respuestaApi.Mensaje;
                        respuestaFinal.Datos = respuestaApi.Resultado == 200 ? respuestaApi.Datos : new List<Comentario>();

                       
                    }
                    else
                    {
                        respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                        respuestaFinal.Mensaje = "No se pudo procesar la respuesta del servidor.";
                    }
                }
                catch (HttpRequestException httpRequestException)
                {
                    respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                    respuestaFinal.Mensaje = $"Error de red: {httpRequestException.Message}";
                   
                }
                catch (JsonException jsonException)
                {
                    respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                    respuestaFinal.Mensaje = $"Error al procesar la respuesta JSON: {jsonException.Message}";
                }
                catch (Exception ex)
                {
                    respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                    respuestaFinal.Mensaje = $"Error inesperado: {ex.Message}";
                }
            }

            return respuestaFinal;
        }


        public static async Task<Respuesta?> VerificarPropietarioComentarioAsync(string token, int idComentario)
        {
            Respuesta respuesta = new();
            using var httpClient = new HttpClient();
            httpClient.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", token);

            try
            {
                var response = await httpClient.GetAsync($"{Resources.BASE_URL}comentario/{idComentario}/verificar-propietario");
                var body = await response.Content.ReadAsStringAsync();

                var resultado = JsonConvert.DeserializeObject<Respuesta>(body);
                resultado.Resultado = (int)response.StatusCode;
                return resultado;
            }
            catch (HttpRequestException httpRequestException)
            {
                respuesta.Resultado = (int)HttpStatusCode.InternalServerError;
                respuesta.Mensaje = $"Error de red: {httpRequestException.Message}";
                _logger.LogFatal(httpRequestException);
            }
            catch (JsonException jsonException)
            {
                respuesta.Resultado = (int)HttpStatusCode.InternalServerError;
                respuesta.Mensaje = $"Error al procesar la respuesta JSON: {jsonException.Message}";
                _logger.LogFatal(jsonException);
            }
            catch (Exception ex)
            {
                respuesta.Resultado = (int)HttpStatusCode.InternalServerError;
                respuesta.Mensaje = $"Error inesperado: {ex.Message}";
                _logger.LogFatal(ex);
            }
            return respuesta;
        }
    }
}