using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net;
using System.Security.Policy;
using System.Security.Principal;
using System.Text;
using System.Threading.Tasks;
using System.Net.Http.Json;
using System.Threading.Tasks;
using EduShare_Escritorio.Modelos;
using EduShare_Escritorio.Vistas;
using static EduShare_Escritorio.Vistas.VentanaEmergentePersonalizada;
using System.Windows;
using EduShare_Escritorio.Utilidades;
using EduShare_Escritorio.Modelos.Perfil;
using EduShare_Escritorio.Modelos.Usuarios;
using System.Net.Http.Headers;

namespace EduShare_Escritorio.Servicio
{
    public class UsuarioServicio
    {
        private static readonly string URL = string.Concat(Resources.BASE_URL, "acceso/");
        private static readonly LoggerManager _logger = new LoggerManager(typeof(UsuarioServicio));

        public static class SesionActual
        {
            public static DatosUsuario Usuario { get; set; }
        }

        public static async Task<UsuarioLoginRespuesta?> IniciarSesionAsync(UsuarioLogin credenciales)
        {
            UsuarioLoginRespuesta resultado = new();
            try
            {
                using (var httpClient = new HttpClient())
                {
                    var contenido = new StringContent(JsonConvert.SerializeObject(credenciales), Encoding.UTF8, "application/json");
                    var respuesta = await httpClient.PostAsync($"{Resources.BASE_URL}acceso/login", contenido);

                    string json = await respuesta.Content.ReadAsStringAsync();
                    resultado = JsonConvert.DeserializeObject<UsuarioLoginRespuesta>(json);

                    if (resultado != null && !resultado.Error)
                    {
                        SesionActual.Usuario = resultado.Datos;
                    }

                    return resultado;
                }
            }
            catch (Exception ex)
            {
                _logger.LogFatal(ex);
                resultado.Estado = (int)HttpStatusCode.InternalServerError;
                resultado.Mensaje = $"Error de red: {ex.Message}";
            }

            return resultado;
        }

        public static async Task<Respuesta> RegistrarUsuarioAsync(UsuarioRegistro usuario)
        {
            Respuesta respuesta = new ();
            using (var httpClient = new HttpClient())
            {
                try
                {
                    var httpRequestMessage = new HttpRequestMessage()
                    {
                        Content = new StringContent(JsonConvert.SerializeObject(usuario), Encoding.UTF8, "application/json"),
                        Method = HttpMethod.Post,
                        RequestUri = new Uri(string.Concat(URL, "registro"))
                    };

                    HttpResponseMessage httpResponseMessage = await httpClient.SendAsync(httpRequestMessage);

                    if (httpResponseMessage != null)
                    {
                        string json = await httpResponseMessage.Content.ReadAsStringAsync();
                        respuesta = JsonConvert.DeserializeObject<Respuesta>(json);
                        respuesta.Codigo = (int)httpResponseMessage.StatusCode;
                    }
                    else
                    {
                        respuesta.Codigo = (int)HttpStatusCode.InternalServerError;
                        respuesta.Mensaje = "No se recibió respuesta del servidor.";
                    }
                }
                catch (HttpRequestException httpRequestException)
                {
                    respuesta.Codigo = (int)HttpStatusCode.InternalServerError;
                    respuesta.Mensaje = $"Error de red: {httpRequestException.Message}";
                    _logger.LogFatal(httpRequestException);

                }
                catch (JsonException jsonException)
                {
                    respuesta.Codigo = (int)HttpStatusCode.InternalServerError;
                    respuesta.Mensaje = $"Error al procesar la respuesta JSON: {jsonException.Message}";
                    _logger.LogFatal(jsonException);
                }
                catch (Exception ex)
                {
                    respuesta.Codigo = (int)HttpStatusCode.InternalServerError;
                    respuesta.Mensaje = $"Error inesperado: {ex.Message}";
                    _logger.LogFatal(ex);
                }
            }
            return respuesta;
        }

        public static async Task<Respuesta> EnviarCodigoACorreo(string correo)
        {
            Respuesta respuesta = new();
            using (var httpClient = new HttpClient())
            {
                try
                {
                    var payload = new { correo = correo };
                    var contenido = new StringContent(JsonConvert.SerializeObject(payload), Encoding.UTF8, "application/json");

                    var httpResponseMessage = await httpClient.PostAsync(string.Concat(URL, "recuperarContrasena"), contenido);

                    if (httpResponseMessage != null)
                    {
                        string json = await httpResponseMessage.Content.ReadAsStringAsync();
                        respuesta = JsonConvert.DeserializeObject<Respuesta>(json);
                        respuesta.Codigo = (int)httpResponseMessage.StatusCode;
                    }
                    else
                    {
                        respuesta.Codigo = (int)HttpStatusCode.InternalServerError;
                        respuesta.Mensaje = "No se recibió respuesta del servidor.";
                    }
                }
                catch (HttpRequestException httpRequestException)
                {
                    respuesta.Codigo = (int)HttpStatusCode.InternalServerError;
                    respuesta.Mensaje = $"Error de red: {httpRequestException.Message}";
                    _logger.LogFatal(httpRequestException);
                }
                catch (JsonException jsonException)
                {
                    respuesta.Codigo = (int)HttpStatusCode.InternalServerError;
                    respuesta.Mensaje = $"Error al procesar la respuesta JSON: {jsonException.Message}";
                    _logger.LogFatal(jsonException);
                }
                catch (Exception ex)
                {
                    respuesta.Codigo = (int)HttpStatusCode.InternalServerError;
                    respuesta.Mensaje = $"Error inesperado: {ex.Message}";
                    _logger.LogFatal(ex);
                }
            }
            return respuesta;
        }

        public static async Task<Respuesta> VerificarCodigoYCambiarContrasenaAsync(SolicitudCambioContrasena datos)
        {
            Respuesta respuesta = new();
            using (var httpClient = new HttpClient())
            {
                try
                {
                    var contenido = new StringContent(JsonConvert.SerializeObject(datos), Encoding.UTF8, "application/json");
                    var httpResponse = await httpClient.PostAsync($"{Resources.BASE_URL}acceso/verificarCodigoYCambiarContrasena", contenido);

                    if (httpResponse != null)
                    {
                        string json = await httpResponse.Content.ReadAsStringAsync();
                        respuesta = JsonConvert.DeserializeObject<Respuesta>(json);
                        respuesta.Codigo = (int)httpResponse.StatusCode;
                    }
                    else
                    {
                        respuesta.Codigo = (int)HttpStatusCode.InternalServerError;
                        respuesta.Mensaje = "No se recibió respuesta del servidor.";
                    }
                }
                catch (HttpRequestException httpRequestException)
                {
                    respuesta.Codigo = (int)HttpStatusCode.InternalServerError;
                    respuesta.Mensaje = $"Error de red: {httpRequestException.Message}";
                    _logger.LogFatal(httpRequestException);
                }
                catch (JsonException jsonException)
                {
                    respuesta.Codigo = (int)HttpStatusCode.InternalServerError;
                    respuesta.Mensaje = $"Error al procesar la respuesta JSON: {jsonException.Message}";
                    _logger.LogFatal(jsonException);
                }
                catch (Exception ex)
                {
                    respuesta.Codigo = (int)HttpStatusCode.InternalServerError;
                    respuesta.Mensaje = $"Error inesperado: {ex.Message}";
                    _logger.LogFatal(ex);
                }
            }
            return respuesta;
        }

        public static async Task<PerfilPropio?> ObtenerPerfilAsync(string token)
        {
            PerfilPropio? respuesta = new();
            using (var httpClient = new HttpClient())
            {
                try
                {
                    httpClient.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", token);

                    var httpResponse = await httpClient.GetAsync($"{Resources.BASE_URL}perfil/me");

                    if (httpResponse != null)
                    {
                        string json = await httpResponse.Content.ReadAsStringAsync();
                        respuesta = JsonConvert.DeserializeObject<PerfilPropio>(json);
                        respuesta.Codigo = (int)httpResponse.StatusCode;
                    }
                    else
                    {
                        respuesta = new PerfilPropio
                        {
                            Codigo = (int)HttpStatusCode.InternalServerError,
                            Mensaje = "No se recibió respuesta del servidor"
                        };
                    }
                }
                catch (HttpRequestException httpRequestException)
                {
                    respuesta.Codigo = (int)HttpStatusCode.InternalServerError;
                    respuesta.Mensaje = $"Error de red: {httpRequestException.Message}";
                    _logger.LogFatal(httpRequestException);
                }
                catch (JsonException jsonException)
                {
                    respuesta.Codigo = (int)HttpStatusCode.InternalServerError;
                    respuesta.Mensaje = $"Error al procesar la respuesta JSON: {jsonException.Message}";
                    _logger.LogFatal(jsonException);
                }
                catch (Exception ex)
                {
                    respuesta.Codigo = (int)HttpStatusCode.InternalServerError;
                    respuesta.Mensaje = $"Error inesperado: {ex.Message}";
                    _logger.LogFatal(ex);
                }
            }

            return respuesta;
        }

        public static async Task<Respuesta> BanearUsuarioAsync(string token, int idUsuarioRegistrado)
        {
            var respuestaFinal = new Respuesta();

            using (var httpClient = new HttpClient())
            {
                try
                {
                    httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);

                    var solicitud = new SolicitudBaneo
                    {
                        IdUsuarioRegistrado = idUsuarioRegistrado
                    };

                    var contenido = new StringContent(JsonConvert.SerializeObject(solicitud), Encoding.UTF8, "application/json");

                    var httpResponse = await httpClient.PostAsync($"{Resources.BASE_URL}acceso/banearUsuario", contenido);

                    string json = await httpResponse.Content.ReadAsStringAsync();

                    if (!httpResponse.IsSuccessStatusCode)
                    {
                        respuestaFinal.Resultado = (int)httpResponse.StatusCode;
                        respuestaFinal.Mensaje = $"Error del servidor: {(int)httpResponse.StatusCode} {httpResponse.ReasonPhrase}";
                        respuestaFinal.Error = true;
                        return respuestaFinal;
                    }

                    var respuestaApi = JsonConvert.DeserializeObject<Respuesta>(json);

                    if (respuestaApi != null)
                    {
                        respuestaFinal.Resultado = respuestaApi.Codigo;
                        respuestaFinal.Mensaje = respuestaApi.Mensaje;
                        respuestaFinal.Error = respuestaApi.Error;
                    }
                    else
                    {
                        respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                        respuestaFinal.Mensaje = "No se pudo procesar la respuesta del servidor.";
                        respuestaFinal.Error = true;
                    }
                }
                catch (HttpRequestException httpRequestException)
                {
                    respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                    respuestaFinal.Mensaje = $"Error de red: {httpRequestException.Message}";
                    respuestaFinal.Error = true;
                    _logger.LogFatal(httpRequestException);
                }
                catch (JsonException jsonException)
                {
                    respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                    respuestaFinal.Mensaje = $"Error al procesar la respuesta JSON: {jsonException.Message}";
                    respuestaFinal.Error = true;
                    _logger.LogFatal(jsonException);
                }
                catch (Exception ex)
                {
                    respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                    respuestaFinal.Mensaje = $"Error inesperado: {ex.Message}";
                    respuestaFinal.Error = true;
                    _logger.LogFatal(ex);
                }
            }

            return respuestaFinal;
        }


        public static async Task<Respuesta> ActualizarAvatarAsync(string token, string rutaImagen)
        {
            Respuesta respuesta = new();
            using var httpClient = new HttpClient();

            try
            {
                httpClient.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", token);

                var payload = new
                {
                    datos = new
                    {
                        fotoPerfil = rutaImagen
                    }
                };

                var contenido = new StringContent(JsonConvert.SerializeObject(payload), Encoding.UTF8, "application/json");
                var url = $"{Resources.BASE_URL}perfil/me/avatar";

                var httpResponseMessage = await httpClient.PutAsync(url, contenido);

                if (httpResponseMessage != null)
                {
                    string json = await httpResponseMessage.Content.ReadAsStringAsync();
                    respuesta = JsonConvert.DeserializeObject<Respuesta>(json) ?? new Respuesta();
                    respuesta.Codigo = (int)httpResponseMessage.StatusCode;
                }
                else
                {
                    respuesta.Codigo = (int)HttpStatusCode.InternalServerError;
                    respuesta.Mensaje = "No se recibió respuesta del servidor.";
                }
            }
            catch (HttpRequestException httpRequestException)
            {
                respuesta.Codigo = (int)HttpStatusCode.InternalServerError;
                respuesta.Mensaje = $"Error de red: {httpRequestException.Message}";
                _logger.LogFatal(httpRequestException);
            }
            catch (JsonException jsonException)
            {
                respuesta.Codigo = (int)HttpStatusCode.InternalServerError;
                respuesta.Mensaje = $"Error al procesar la respuesta JSON: {jsonException.Message}";
                _logger.LogFatal(jsonException);
            }
            catch (Exception ex)
            {
                respuesta.Codigo = (int)HttpStatusCode.InternalServerError;
                respuesta.Mensaje = $"Error inesperado: {ex.Message}";
                _logger.LogFatal(ex);
            }

            return respuesta;
        }

        public static async Task<Respuesta> ActualizarPerfil(string token, UsuarioRegistro usuario)
        {
            Respuesta respuesta = new();

            using (var httpClient = new HttpClient())
            {
                try
                {
                   
                    httpClient.DefaultRequestHeaders.Authorization =
                        new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", token);

                    var contenido = new StringContent(
                        JsonConvert.SerializeObject(usuario),
                        Encoding.UTF8,
                        "application/json"
                    );

                    var requestUri = new Uri(string.Concat(Resources.BASE_URL, "perfil/me")); 

                    HttpRequestMessage httpRequestMessage = new HttpRequestMessage
                    {
                        Method = HttpMethod.Put,
                        RequestUri = requestUri,
                        Content = contenido
                    };

                    HttpResponseMessage httpResponseMessage = await httpClient.SendAsync(httpRequestMessage);

                    if (httpResponseMessage != null)
                    {
                        string json = await httpResponseMessage.Content.ReadAsStringAsync();
                        respuesta = JsonConvert.DeserializeObject<Respuesta>(json);
                        respuesta.Codigo = (int)httpResponseMessage.StatusCode;
                    }
                    else
                    {
                        respuesta.Codigo = (int)HttpStatusCode.InternalServerError;
                        respuesta.Mensaje = "No se recibió respuesta del servidor.";
                    }
                }
                catch (HttpRequestException httpRequestException)
                {
                    respuesta.Codigo = (int)HttpStatusCode.InternalServerError;
                    respuesta.Mensaje = $"Error de red: {httpRequestException.Message}";
                    _logger.LogFatal(httpRequestException);
                }
                catch (JsonException jsonException)
                {
                    respuesta.Codigo = (int)HttpStatusCode.InternalServerError;
                    respuesta.Mensaje = $"Error al procesar la respuesta JSON: {jsonException.Message}";
                    _logger.LogFatal(jsonException);
                }
                catch (Exception ex)
                {
                    respuesta.Codigo = (int)HttpStatusCode.InternalServerError;
                    respuesta.Mensaje = $"Error inesperado: {ex.Message}";
                    _logger.LogFatal(ex);
                }
            }

            return respuesta;
        }

    }
}
