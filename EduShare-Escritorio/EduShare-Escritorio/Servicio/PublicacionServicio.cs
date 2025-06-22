using EduShare_Escritorio.Modelos.Perfil;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using EduShare_Escritorio.Modelos;
using EduShare_Escritorio.Utilidades;
using EduShare_Escritorio.Modelos.Publicaciones;
using System.Windows;
using EduShare_Escritorio.Modelos.Usuarios;
using System.Net.Http.Headers;
using EduShare_Escritorio.Vistas;
using static EduShare_Escritorio.Vistas.VentanaEmergentePersonalizada;
using Newtonsoft.Json.Linq;

namespace EduShare_Escritorio.Servicio
{
    public class PublicacionServicio
    {
        private static readonly LoggerManager _logger = new LoggerManager(typeof(PublicacionServicio));

        public static async Task<Respuesta?> CrearDocumentoAsync(string token, string titulo, string ruta)
        {
            Respuesta respuesta = new();
            using var httpClient = new HttpClient();
            httpClient.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", token);

            var contenido = new
            {
                titulo,
                ruta
            };

            var json = JsonConvert.SerializeObject(contenido);
            var content = new StringContent(json, Encoding.UTF8, "application/json");

            try
            {
                var response = await httpClient.PostAsync($"{Resources.BASE_URL}publicaciones/documento", content);
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

        public static async Task<Respuesta?> CrearPublicacionAsync(string token, Publicacion datos)
        {
            Respuesta respuesta = new();
            using var httpClient = new HttpClient();
            httpClient.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", token);

            var json = JsonConvert.SerializeObject(datos);
            var content = new StringContent(json, Encoding.UTF8, "application/json");

            try
            {
                var response = await httpClient.PostAsync($"{Resources.BASE_URL}publicaciones", content);
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

        public static async Task<RespuestaPublicacion<List<Publicacion>>> BuscarPublicacionesPorUsuario(int idUsuario, string token)
        {
            var respuestaFinal = new RespuestaPublicacion<List<Publicacion>>();

            using (var httpClient = new HttpClient())
            {
                try
                {
                    httpClient.DefaultRequestHeaders.Authorization =
                        new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", token);

                    var httpResponse = await httpClient.GetAsync($"{Resources.BASE_URL}publicaciones/usuario/{idUsuario}");
                    string json = await httpResponse.Content.ReadAsStringAsync();

                    var respuestaApi = JsonConvert.DeserializeObject<RespuestaPublicacion<List<Publicacion>>>(json);

                    if (respuestaApi != null)
                    {
                        respuestaFinal.Resultado = respuestaApi.Resultado;
                        respuestaFinal.Mensaje = respuestaApi.Mensaje;
                        respuestaFinal.Datos = respuestaApi.Resultado == 200 ? respuestaApi.Datos : new List<Publicacion>();
                    }
                    else
                    {
                        respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                        respuestaFinal.Mensaje = "No se pudo procesar la respuesta del servidor.";
                        respuestaFinal.Datos = new List<Publicacion>();
                    }
                }
                catch (HttpRequestException httpRequestException)
                {
                    respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                    respuestaFinal.Mensaje = $"Error de red: {httpRequestException.Message}";
                    _logger.LogFatal(httpRequestException);
                }
                catch (JsonException jsonException)
                {
                    respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                    respuestaFinal.Mensaje = $"Error al procesar la respuesta JSON: {jsonException.Message}";
                    _logger.LogFatal(jsonException);
                }
                catch (System.Exception ex)
                {
                    respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                    respuestaFinal.Mensaje = $"Error inesperado: {ex.Message}";
                    _logger.LogFatal(ex);
                }
            }

            return respuestaFinal;
        }

        public static async Task<RespuestaPublicacion<Publicacion>> BuscarPublicacionesPorIdPublicacion(int idPublicacion)
        {
            var respuestaFinal = new RespuestaPublicacion<Publicacion>();

            using (var httpClient = new HttpClient())
            {
                try
                {
                   


                    var httpResponse = await httpClient.GetAsync($"{Resources.BASE_URL}publicaciones/{idPublicacion}");
                    string json = await httpResponse.Content.ReadAsStringAsync();

                    var respuestaApi = JsonConvert.DeserializeObject<RespuestaPublicacion<Publicacion>>(json);

                   

                    if (respuestaApi != null)
                    {
                        respuestaFinal.Resultado = respuestaApi.Resultado;
                        respuestaFinal.Mensaje = respuestaApi.Mensaje;
                        respuestaFinal.Datos = respuestaApi.Resultado == 200 ? respuestaApi.Datos : new Publicacion();
                    }
                    else
                    {
                        respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                        respuestaFinal.Mensaje = "No se pudo procesar la respuesta del servidor.";
                        respuestaFinal.Datos = new Publicacion();
                    }
                }
                catch (HttpRequestException httpRequestException)
                {
                    respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                    respuestaFinal.Mensaje = $"Error de red: {httpRequestException.Message}";
                    _logger.LogFatal(httpRequestException);
                }
                catch (JsonException jsonException)
                {
                    respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                    respuestaFinal.Mensaje = $"Error al procesar la respuesta JSON: {jsonException.Message}";
                    _logger.LogFatal(jsonException);
                }
                catch (System.Exception ex)
                {
                    respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                    respuestaFinal.Mensaje = $"Error inesperado: {ex.Message}";
                    _logger.LogFatal(ex);
                }
            }

            return respuestaFinal;
        }

        public static async Task<RespuestaPublicacion<List<Publicacion>>> ObtenerPublicacionesPropias(string token)
        {
            var respuestaFinal = new RespuestaPublicacion<List<Publicacion>>();

            using (var httpClient = new HttpClient())
            {
                try
                {
                    httpClient.DefaultRequestHeaders.Authorization =
                        new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", token);

                    var httpResponse = await httpClient.GetAsync($"{Resources.BASE_URL}publicaciones/me");
                    string json = await httpResponse.Content.ReadAsStringAsync();

                    var respuestaApi = JsonConvert.DeserializeObject<RespuestaPublicacion<List<Publicacion>>>(json);

                    if (respuestaApi != null)
                    {
                        respuestaFinal.Resultado = respuestaApi.Resultado;
                        respuestaFinal.Mensaje = respuestaApi.Mensaje;
                        respuestaFinal.Datos = respuestaApi.Resultado == 200 ? respuestaApi.Datos : new List<Publicacion>();
                    }
                    else
                    {
                        respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                        respuestaFinal.Mensaje = "No se pudo procesar la respuesta del servidor.";
                        respuestaFinal.Datos = new List<Publicacion>();
                    }
                }
                catch (HttpRequestException httpRequestException)
                {
                    respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                    respuestaFinal.Mensaje = $"Error de red: {httpRequestException.Message}";
                    _logger.LogFatal(httpRequestException);
                }
                catch (JsonException jsonException)
                {
                    respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                    respuestaFinal.Mensaje = $"Error al procesar la respuesta JSON: {jsonException.Message}";
                    _logger.LogFatal(jsonException);
                }
                catch (System.Exception ex)
                {
                    respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                    respuestaFinal.Mensaje = $"Error inesperado: {ex.Message}";
                    _logger.LogFatal(ex);
                }
            }

            return respuestaFinal;
        }

        public static async Task<Respuesta?> EliminarPublicacionAsync(string token, int idPublicacion)
        {
            Respuesta respuesta = new();
            using var httpClient = new HttpClient();
            httpClient.DefaultRequestHeaders.Authorization =
                new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", token);

            try
            {
                var response = await httpClient.DeleteAsync($"{Resources.BASE_URL}publicaciones/{idPublicacion}");
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

            public static async Task<RespuestaPublicacion<List<Publicacion>>> ObtenerPublicaciones()
            {
                var respuestaFinal = new RespuestaPublicacion<List<Publicacion>>();

                using (var httpClient = new HttpClient())
                {
                    try
                    {
                        var httpResponse = await httpClient.GetAsync($"{Resources.BASE_URL}publicaciones");
                        string json = await httpResponse.Content.ReadAsStringAsync();

                        var respuestaApi = JsonConvert.DeserializeObject<RespuestaPublicacion<List<Publicacion>>>(json);

                        if (respuestaApi != null)
                        {
                            respuestaFinal.Resultado = respuestaApi.Resultado;
                            respuestaFinal.Mensaje = respuestaApi.Mensaje;
                            respuestaFinal.Datos = respuestaApi.Resultado == 200 ? respuestaApi.Datos : new List<Publicacion>();
                        }
                        else
                        {
                            respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                            respuestaFinal.Mensaje = "No se pudo procesar la respuesta del servidor.";
                            respuestaFinal.Datos = new List<Publicacion>();
                        }
                    }
                    catch (HttpRequestException httpRequestException)
                    {
                        respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                        respuestaFinal.Mensaje = $"Error de red: {httpRequestException.Message}";
                        _logger.LogFatal(httpRequestException);
                    }
                    catch (JsonException jsonException)
                    {
                        respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                        respuestaFinal.Mensaje = $"Error al procesar la respuesta JSON: {jsonException.Message}";
                        _logger.LogFatal(jsonException);
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

        public static async Task<RespuestaPublicacion<List<Publicacion>>> ObtenerPublicacionesPendientes(string token)
        {
            var respuestaFinal = new RespuestaPublicacion<List<Publicacion>>();

            using (var httpClient = new HttpClient())
            {
                try
                {
                    httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);

                    var httpResponse = await httpClient.GetAsync($"{Resources.BASE_URL}publicaciones/pendientes");
                    string json = await httpResponse.Content.ReadAsStringAsync();
                    var respuestaApi = JsonConvert.DeserializeObject<RespuestaPublicacion<List<Publicacion>>>(json);


                    if (respuestaApi != null)
                    {
                        respuestaFinal.Resultado = respuestaApi.Resultado;
                        respuestaFinal.Mensaje = respuestaApi.Mensaje;
                        respuestaFinal.Datos = respuestaApi.Resultado == 200 ? respuestaApi.Datos : new List<Publicacion>();
                    }
                    else
                    {
                        respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                        respuestaFinal.Mensaje = "No se pudo procesar la respuesta del servidor.";
                        respuestaFinal.Datos = new List<Publicacion>();
                    }
                }
                catch (HttpRequestException httpRequestException)
                {
                    respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                    respuestaFinal.Mensaje = $"Error de red: {httpRequestException.Message}";
                    _logger.LogFatal(httpRequestException);
                }
                catch (JsonException jsonException)
                {
                    respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                    respuestaFinal.Mensaje = $"Error al procesar la respuesta JSON: {jsonException.Message}";
                    _logger.LogFatal(jsonException);
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


        public static async Task<RespuestaPublicacion<List<Publicacion>>> ObtenerPorCategoria(int categoriaId)
            {
                var respuestaFinal = new RespuestaPublicacion<List<Publicacion>>();

                using (var httpClient = new HttpClient())
                {
                    try
                    {
                        var httpResponse = await httpClient.GetAsync($"{Resources.BASE_URL}publicaciones/categoria/{categoriaId}");
                    string json = await httpResponse.Content.ReadAsStringAsync();
                    var respuestaApi = JsonConvert.DeserializeObject<RespuestaPublicacion<List<Publicacion>>>(json);
                    if (respuestaApi != null)
                    {
                        respuestaFinal.Resultado = respuestaApi.Resultado;
                        respuestaFinal.Mensaje = respuestaApi.Mensaje;
                        respuestaFinal.Datos = respuestaApi.Resultado == 200 ? respuestaApi.Datos : new List<Publicacion>();
                    }
                    else
                    {
                        respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                        respuestaFinal.Mensaje = "No se pudo procesar la respuesta del servidor.";
                        respuestaFinal.Datos = new List<Publicacion>();
                    }
                }
                catch (HttpRequestException httpRequestException)
                {
                    respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                    respuestaFinal.Mensaje = $"Error de red: {httpRequestException.Message}";
                    _logger.LogFatal(httpRequestException);
                }
                catch (JsonException jsonException)
                {
                    respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                    respuestaFinal.Mensaje = $"Error al procesar la respuesta JSON: {jsonException.Message}";
                    _logger.LogFatal(jsonException);
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

            public static async Task<RespuestaPublicacion<List<Publicacion>>> ObtenerPorRama(int ramaId)
            {
                var respuestaFinal = new RespuestaPublicacion<List<Publicacion>>();

                using (var httpClient = new HttpClient())
                {
                    try
                    {
                        var httpResponse = await httpClient.GetAsync($"{Resources.BASE_URL}publicaciones/rama/{ramaId}");
                    string json = await httpResponse.Content.ReadAsStringAsync();
                    var respuestaApi = JsonConvert.DeserializeObject<RespuestaPublicacion<List<Publicacion>>>(json);
                    if (respuestaApi != null)
                    {
                        respuestaFinal.Resultado = respuestaApi.Resultado;
                        respuestaFinal.Mensaje = respuestaApi.Mensaje;
                        respuestaFinal.Datos = respuestaApi.Resultado == 200 ? respuestaApi.Datos : new List<Publicacion>();

                    }
                    else
                    {
                        respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                        respuestaFinal.Mensaje = "No se pudo procesar la respuesta del servidor.";
                        respuestaFinal.Datos = new List<Publicacion>();
                    }
                }
                catch (HttpRequestException httpRequestException)
                {
                    respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                    respuestaFinal.Mensaje = $"Error de red: {httpRequestException.Message}";
                    _logger.LogFatal(httpRequestException);
                }
                catch (JsonException jsonException)
                {
                    respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                    respuestaFinal.Mensaje = $"Error al procesar la respuesta JSON: {jsonException.Message}";
                    _logger.LogFatal(jsonException);
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

           
            public static async Task<RespuestaPublicacion<List<Publicacion>>> ObtenerPorNivelEducativo(string nivelEducativo)
            {
                var respuestaFinal = new RespuestaPublicacion<List<Publicacion>>();

                using (var httpClient = new HttpClient())
                {
                    try
                    {
                       
                        if (nivelEducativo != "Preparatoria" && nivelEducativo != "Universidad")
                        {
                            respuestaFinal.Resultado = (int)HttpStatusCode.BadRequest;
                            respuestaFinal.Mensaje = "Nivel educativo inválido";
                            return respuestaFinal;
                        }

                        var httpResponse = await httpClient.GetAsync($"{Resources.BASE_URL}publicaciones/nivel/{nivelEducativo}");
                    string json = await httpResponse.Content.ReadAsStringAsync();
                    var respuestaApi = JsonConvert.DeserializeObject<RespuestaPublicacion<List<Publicacion>>>(json);
                    if (respuestaApi != null)
                    {
                        respuestaFinal.Resultado = respuestaApi.Resultado;
                        respuestaFinal.Mensaje = respuestaApi.Mensaje;
                        respuestaFinal.Datos = respuestaApi.Resultado == 200 ? respuestaApi.Datos : new List<Publicacion>();
                    }
                    else
                    {
                        respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                        respuestaFinal.Mensaje = "No se pudo procesar la respuesta del servidor.";
                        respuestaFinal.Datos = new List<Publicacion>();
                    }
                }
                catch (HttpRequestException httpRequestException)
                {
                    respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                    respuestaFinal.Mensaje = $"Error de red: {httpRequestException.Message}";
                    _logger.LogFatal(httpRequestException);
                }
                catch (JsonException jsonException)
                {
                    respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                    respuestaFinal.Mensaje = $"Error al procesar la respuesta JSON: {jsonException.Message}";
                    _logger.LogFatal(jsonException);
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

            // Dar like
            public static async Task<RespuestaSimple> DarLikeAsync(string token, int idPublicacion)
            {
                RespuestaSimple respuesta = new();
                using var httpClient = new HttpClient();
                httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);

                try
                {
                    var response = await httpClient.PostAsync(
                        $"{Resources.BASE_URL}publicaciones/{idPublicacion}/like",
                        null
                    );

                    var body = await response.Content.ReadAsStringAsync();
                    return JsonConvert.DeserializeObject<RespuestaSimple>(body) ?? respuesta;
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

            // Quitar like
            public static async Task<RespuestaSimple> QuitarLikeAsync(string token, int idPublicacion)
            {
                RespuestaSimple respuesta = new();
                using var httpClient = new HttpClient();
                httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);

                try
                {
                    var response = await httpClient.DeleteAsync(
                        $"{Resources.BASE_URL}publicaciones/{idPublicacion}/like"
                    );

                    var body = await response.Content.ReadAsStringAsync();
                    return JsonConvert.DeserializeObject<RespuestaSimple>(body) ?? respuesta;
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

        // Verificar like
        public static async Task<RespuestaLike> VerificarLikeAsync(string token, int idPublicacion)
            {
                var respuesta = new RespuestaLike();
                using var httpClient = new HttpClient();
                httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);

                try
                {
                    var response = await httpClient.GetAsync(
                        $"{Resources.BASE_URL}publicaciones/{idPublicacion}/like"
                    );

                    var body = await response.Content.ReadAsStringAsync();
                
                return JsonConvert.DeserializeObject<RespuestaLike>(body) ?? respuesta;
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

            public static async Task<RespuestaSimple> RegistrarVisualizacionAsync(int idPublicacion)
            {
                RespuestaSimple respuesta = new();
                using var httpClient = new HttpClient();

                try
                {
                    var response = await httpClient.PostAsync(
                        $"{Resources.BASE_URL}publicaciones/{idPublicacion}/vista",
                        null
                    );

                    var body = await response.Content.ReadAsStringAsync();
                    return JsonConvert.DeserializeObject<RespuestaSimple>(body) ?? respuesta;
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

            public static async Task<RespuestaSimple> RegistrarDescargaAsync(string token, int idPublicacion)
            {
                RespuestaSimple respuesta = new();
                using var httpClient = new HttpClient();
                httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);

                try
                {
                    var response = await httpClient.PostAsync(
                        $"{Resources.BASE_URL}publicaciones/{idPublicacion}/descarga",
                        null
                    );

                    var body = await response.Content.ReadAsStringAsync();
                    return JsonConvert.DeserializeObject<RespuestaSimple>(body) ?? respuesta;
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

            public static async Task<RespuestaSimple> AprobarPublicacionAsync(string token, int idPublicacion)
            {
                RespuestaSimple respuesta = new();
                using var httpClient = new HttpClient();
                httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);

                try
                {
                    var response = await httpClient.PatchAsync(
                        $"{Resources.BASE_URL}publicaciones/{idPublicacion}/aprobar",
                        null
                    );

                    var body = await response.Content.ReadAsStringAsync();
                    return JsonConvert.DeserializeObject<RespuestaSimple>(body) ?? respuesta;
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

            public static async Task<RespuestaSimple> RechazarPublicacionAsync(string token, int idPublicacion)
            {
                RespuestaSimple respuesta = new();
                using var httpClient = new HttpClient();
                httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);

                try
                {
                    var response = await httpClient.PatchAsync(
                        $"{Resources.BASE_URL}publicaciones/{idPublicacion}/rechazar",
                        null
                    );

                    var body = await response.Content.ReadAsStringAsync();
                    return JsonConvert.DeserializeObject<RespuestaSimple>(body) ?? respuesta;
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
