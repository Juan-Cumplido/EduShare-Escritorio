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

namespace EduShare_Escritorio.Servicio
{
    public class UsuarioServicio
    {
        private static readonly string URL = string.Concat(Resources.BASE_URL, "acceso/");
        private static readonly LoggerManager _logger = new LoggerManager(typeof(UsuarioServicio));
        public static void MostrarMensaje(string mensaje, VentanaEmergentePersonalizada.DialogType tipo)
        {
            var ventana = new VentanaEmergentePersonalizada(mensaje, tipo);
            ventana.ShowDialog();
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

    }
}
