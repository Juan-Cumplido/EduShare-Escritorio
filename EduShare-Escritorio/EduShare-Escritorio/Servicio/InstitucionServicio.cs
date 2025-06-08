using EduShare_Escritorio.Modelos;
using EduShare_Escritorio.Utilidades;
using EduShare_Escritorio.Vistas;
using log4net.Repository.Hierarchy;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using static EduShare_Escritorio.Vistas.VentanaEmergentePersonalizada;

namespace EduShare_Escritorio.Servicio
{
    public class InstitucionServicio
    {
        private static readonly string URL = string.Concat(Resources.BASE_URL, "catalogo/instituciones");
        private static readonly LoggerManager _logger = new LoggerManager(typeof(InstitucionServicio));

        public static void MostrarMensaje(string mensaje, VentanaEmergentePersonalizada.DialogType tipo)
        {
            var ventana = new VentanaEmergentePersonalizada(mensaje, tipo);
            ventana.ShowDialog();
        }


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


    }
}
