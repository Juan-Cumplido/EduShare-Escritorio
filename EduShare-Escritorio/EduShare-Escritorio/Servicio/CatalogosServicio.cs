using EduShare_Escritorio.Modelos.Catalogos;
using EduShare_Escritorio.Utilidades;
using EduShare_Escritorio.Vistas;
using log4net.Repository.Hierarchy;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using static EduShare_Escritorio.Vistas.VentanaEmergentePersonalizada;

namespace EduShare_Escritorio.Servicio
{
    public class CatalogosServicio
    {
        private static readonly string URL = string.Concat(Resources.BASE_URL, "catalogo/instituciones");
        private static readonly LoggerManager _logger = new LoggerManager(typeof(CatalogosServicio));

        public static async Task<RespuestaInstitucion<List<Institucion>>> ObtenerInstitucionesAsync(string? nivel = null)
        {

            var respuestaFinal = new RespuestaInstitucion<List<Institucion>>();

            using (HttpClient client = new HttpClient())
            {
                try
                {
                    string urlFinal = nivel != null ? $"{URL}?nivel={nivel}" : URL;
                    HttpResponseMessage response = await client.GetAsync(urlFinal);
                    string json = await response.Content.ReadAsStringAsync();

                    var respuestaApi = JsonConvert.DeserializeObject<RespuestaInstitucion<List<Institucion>>>(json);

                    if (respuestaApi != null)
                    {
                        respuestaFinal.Resultado = respuestaApi.Resultado;
                        respuestaFinal.Mensaje = respuestaApi.Mensaje;
                        respuestaFinal.Datos = respuestaApi.Resultado == 200 ? respuestaApi.Datos : new List<Institucion>();
                    }
                    else
                    {
                        respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                        respuestaFinal.Mensaje = "No se pudo procesar la respuesta del servidor.";
                        respuestaFinal.Datos = new List<Institucion>();
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

        public static async Task<RespuestaCatalogos<List<Categoria>>> ObtenerCategoriasAsync()
        {

            var respuestaFinal = new RespuestaCatalogos<List<Categoria>>();

            using (HttpClient client = new HttpClient())
            {
                try
                {
                    string urlFinal = string.Concat(Resources.BASE_URL, "catalogo/categorias");
                    HttpResponseMessage response = await client.GetAsync(urlFinal);
                    string json = await response.Content.ReadAsStringAsync();

                    var respuestaApi = JsonConvert.DeserializeObject<RespuestaCatalogos<List<Categoria>>>(json);

                    if (respuestaApi != null)
                    {
                        respuestaFinal.Resultado = respuestaApi.Resultado;
                        respuestaFinal.Mensaje = respuestaApi.Mensaje;
                        respuestaFinal.Datos = respuestaApi.Resultado == 200 ? respuestaApi.Datos : new List<Categoria>();
                    }
                    else
                    {
                        respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                        respuestaFinal.Mensaje = "No se pudo procesar la respuesta del servidor.";
                        respuestaFinal.Datos = new List<Categoria>();
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

        public static async Task<RespuestaCatalogos<List<Rama>>> ObtenerRamasAsync()
        {

            var respuestaFinal = new RespuestaCatalogos<List<Rama>>();

            using (HttpClient client = new HttpClient())
            {
                try
                {
                    string urlFinal = string.Concat(Resources.BASE_URL, "catalogo/ramas");
                    HttpResponseMessage response = await client.GetAsync(urlFinal);
                    string json = await response.Content.ReadAsStringAsync();

                    var respuestaApi = JsonConvert.DeserializeObject<RespuestaCatalogos<List<Rama>>>(json);

                    if (respuestaApi != null)
                    {
                        respuestaFinal.Resultado = respuestaApi.Resultado;
                        respuestaFinal.Mensaje = respuestaApi.Mensaje;
                        respuestaFinal.Datos = respuestaApi.Resultado == 200 ? respuestaApi.Datos : new List<Rama>();
                    }
                    else
                    {
                        respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                        respuestaFinal.Mensaje = "No se pudo procesar la respuesta del servidor.";
                        respuestaFinal.Datos = new List<Rama>();
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

        public static async Task<RespuestaCatalogos<List<Materia>>> ObtenerMateriaPorRamaAsync(int idRama)
        {

            var respuestaFinal = new RespuestaCatalogos<List<Materia>>();

            using (HttpClient client = new HttpClient())
            {
                try
                {
                    var url = $"{Resources.BASE_URL}catalogo/materias?idRama={idRama}";
                    var httpResponseMessage = await client.GetAsync(url);

                    string json = await httpResponseMessage.Content.ReadAsStringAsync();

                    var respuestaApi = JsonConvert.DeserializeObject<RespuestaCatalogos<List<Materia>>>(json);

                    if (respuestaApi != null)
                    {
                        respuestaFinal.Resultado = respuestaApi.Resultado;
                        respuestaFinal.Mensaje = respuestaApi.Mensaje;
                        respuestaFinal.Datos = respuestaApi.Resultado == 200 ? respuestaApi.Datos : new List<Materia>();
                    }
                    else
                    {
                        respuestaFinal.Resultado = (int)HttpStatusCode.InternalServerError;
                        respuestaFinal.Mensaje = "No se pudo procesar la respuesta del servidor.";
                        respuestaFinal.Datos = new List<Materia>();
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

    }
}
