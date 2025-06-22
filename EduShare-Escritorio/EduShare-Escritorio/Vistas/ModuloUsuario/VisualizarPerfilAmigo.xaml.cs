using EduShare_Escritorio.Modelos.Publicaciones;
using EduShare_Escritorio.Modelos.Usuarios;
using EduShare_Escritorio.NotificacionesYChat;
using EduShare_Escritorio.Servicio;
using EduShare_Escritorio.Utilidades;
using EduShare_Escritorio.Vistas.ModuloLogin;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Net;
using System.Reflection.Metadata;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using static EduShare_Escritorio.Vistas.VentanaEmergentePersonalizada;

namespace EduShare_Escritorio.Vistas.ModuloUsuario
{
    public partial class VisualizarPerfilAmigo : Page
    {
       

        private static readonly LoggerManager _logger = new LoggerManager(typeof(Login));
        private Frame _frame;
        private UsuarioPerfil _usuario;
        public VisualizarPerfilAmigo(Frame frame, UsuarioPerfil usuario)
        {
            InitializeComponent();
            _frame = frame;
            _usuario = usuario;
            VerificarSeguimiento(usuario.IdUsuarioRegistrado);
            MostrarInformacionPerfil();
            CargarDocumentos();

        }

        private void MostrarMensajePersonalizado(string message, DialogType type)
        {
            var dialog = new VentanaEmergentePersonalizada(message, type)
            {
                Owner = Window.GetWindow(this)
            };
            dialog.ShowDialog();
        }

        private async void CargarDocumentos()
        {
            itmc_DocumentosControl.ItemsSource = null;

            try
            {
                string token = PerfilSingleton.Instance.TokenJwt;
                int idUsuarioRegistrado = _usuario.IdUsuarioRegistrado;

                var respuesta = await PublicacionServicio.BuscarPublicacionesPorUsuario(idUsuarioRegistrado, token);

                switch (respuesta.Resultado)
                {
                    case 200:
                        var listaPublicacionesVista = new List<PublicacionVista>();

                        foreach (var publicacion in respuesta.Datos)
                        {
                            byte[] imagenBinaria = Array.Empty<byte>();

                            try
                            {
                                var grpc = new FileServiceClientHandler();
                                var (imagen, _) = await grpc.DownloadCoverAsync(publicacion.Ruta);
                                imagenBinaria = imagen ?? Array.Empty<byte>();
                            }
                            catch (Exception ex)
                            {
                                _logger.LogError(ex);
                                MostrarMensajePersonalizado("Error del servidor. No se pudieron recuperar las portadas de las publicaciones.", DialogType.Error);
                            }

                            listaPublicacionesVista.Add(new PublicacionVista
                            {
                                Titulo = publicacion.Titulo,
                                Descripcion = publicacion.ResuContenido,
                                Autor = publicacion.NombreCompleto,
                                Fecha = publicacion.Fecha.ToString("dd/MM/yyyy HH:mm"),
                                Likes = publicacion.NumeroLiker,
                                Descargas = publicacion.NumeroDescargas,
                                Vistas = publicacion.NumeroVisualizaciones,
                                Imagen = ConvertirABitmap(imagenBinaria)
                            });
                        }

                        if (listaPublicacionesVista.Count == 0)
                        {
                            grd_SinPublicaciones.Visibility = Visibility.Visible;
                        }

                        itmc_DocumentosControl.ItemsSource = listaPublicacionesVista;
                        break;

                    case 404:
                        grd_SinPublicaciones.Visibility = Visibility.Visible;
                        break;

                    case (int)HttpStatusCode.Unauthorized:
                        MostrarMensajePersonalizado("Tu sesión ha expirado. Por favor, inicia sesión nuevamente.", DialogType.Error);
                        NavigationService.Navigate(new Login());
                        PerfilSingleton.Instance.Reset();
                        break;

                    case 500:
                        MostrarMensajePersonalizado("Error del servidor al obtener las publicaciones.", DialogType.Error);
                        break;

                    default:
                        MostrarMensajePersonalizado($"Error: {respuesta.Mensaje}", DialogType.Warning);
                        break;
                }
            }
            catch (Exception ex)
            {
                _logger.LogFatal(ex);
                MostrarMensajePersonalizado("Ocurrió un error inesperado al cargar publicaciones.", DialogType.Error);
            }
        }



        private async void MostrarInformacionPerfil()
        {
            try
            {
                string token = PerfilSingleton.Instance.TokenJwt;
                int idUsuarioRegistrado = _usuario.IdUsuarioRegistrado;
                var respuesta = await PerfilServicio.BuscarPerfilPorId(idUsuarioRegistrado, token);

                switch (respuesta.Resultado)
                {
                    case 200:
                        var listaPerfiles = new List<UsuarioPerfil>();
                        byte[] imagenBinaria = Array.Empty<byte>();
                        try
                        {
                            var grpc = new FileServiceClientHandler();
                            var (imagen, _) = await grpc.DownloadImageAsync(respuesta.Datos.FotoPerfil);
                            imagenBinaria = imagen ?? Array.Empty<byte>();
                        }
                        catch (Exception ex)
                        {
                            _logger.LogError(ex);
                            MostrarMensajePersonalizado("Error del servidor. No se pudieron recuperar las fotos de perfiles.", DialogType.Error);
                        }

                        UsuarioPerfil usuario = new UsuarioPerfil
                        {
                            IdUsuarioRegistrado = respuesta.Datos.IdUsuarioRegistrado,
                            Nombre = respuesta.Datos.Nombre,
                            PrimerApellido = respuesta.Datos.PrimerApellido,
                            SegundoApellido = respuesta.Datos.SegundoApellido,
                            FotoPerfilRuta = respuesta.Datos.FotoPerfil,

                            NombreUsuario = respuesta.Datos.NombreUsuario,
                            NombreInstitucion = respuesta.Datos.NombreInstitucion,

                            NivelEducativo = respuesta.Datos.NivelEducativo,
                            Seguidore = respuesta.Datos.NumeroSeguidores,
                            Seguidos = respuesta.Datos.NumeroSeguidos,

                            Imagen = ConvertirABitmap(imagenBinaria)
                        };


                        LlenarCampos(usuario);

                        break;

                    case (int)HttpStatusCode.Unauthorized:
                        MostrarMensajePersonalizado("Tu sesión ha expirado. Por favor, inicia sesión nuevamente.", DialogType.Error);
                        NavigationService.Navigate(new Login());
                        PerfilSingleton.Instance.Reset();
                        break;

                    case 500:
                        MostrarMensajePersonalizado("Error del servidor. No se pudo recuperar los datos del perfil.", DialogType.Error);
                        break;

                    default:
                        MostrarMensajePersonalizado($"Error: {respuesta.Mensaje}", DialogType.Warning);
                        break;
                }
            }
            catch (Exception ex)
            {
                _logger.LogFatal(ex);
                MostrarMensajePersonalizado("Ocurrió un error inesperado.", DialogType.Error);
            }
        }

        private async void VerificarSeguimiento(int idUsuarioRegistrado)
        {
            string token = PerfilSingleton.Instance.TokenJwt;
            var respuestaSeguimiento = await PerfilServicio.VerificarSeguimiento(idUsuarioRegistrado, token);
            if (respuestaSeguimiento.Estado == 200)
            {
                brd_Seguir.Visibility = Visibility.Collapsed;
            }
            else if (respuestaSeguimiento.Estado == 404)
            {
                brd_Seguir.Visibility = Visibility.Visible;
            }
            else
            {
                MostrarMensajePersonalizado("Error al verificar el seguimiento.", DialogType.Warning);
            }

        }

        private void LlenarCampos(UsuarioPerfil usuario)
        {
            txt_NombreCompleto.Text = usuario.NombreCompleto;
            txt_Usuario.Text = usuario.NombreUsuario;
            txt_NivelEducativo.Text = usuario.NivelEducativo;
            txt_Institucion.Text = usuario.NombreInstitucion;

            txt_Seguidores.Text = usuario.Seguidore.ToString();
            txt_Seguidos.Text = usuario.Seguidos.ToString();
            img_FotoPerfil.ImageSource = usuario.Imagen;
        }

        public BitmapImage? ConvertirABitmap(byte[] datos)
        {
            if (datos == null || datos.Length == 0) return null;

            using var stream = new MemoryStream(datos);
            var image = new BitmapImage();
            image.BeginInit();
            image.CacheOption = BitmapCacheOption.OnLoad;
            image.StreamSource = stream;
            image.EndInit();
            return image;
        }

        private void RegresarAlLaComunidad(object sender, MouseButtonEventArgs e)
        {
            _frame.Navigate(new BuscarPerfil(_frame));

        }

        private async void SeguirPerfil(object sender, RoutedEventArgs e)
        {
            try
            {
                string token = PerfilSingleton.Instance.TokenJwt;
                int idUsuarioASeguir = _usuario.IdUsuarioRegistrado;

                var respuesta = await PerfilServicio.SeguirUsuario(idUsuarioASeguir, token);

                if (respuesta.Estado == 200)
                {
                    MostrarMensajePersonalizado("Ahora sigues a este usuario.", DialogType.Success);
                    brd_Seguir.Visibility = Visibility.Collapsed;

                    if (int.TryParse(txt_Seguidores.Text, out int seguidores))
                    {
                        txt_Seguidores.Text = (seguidores + 1).ToString();
                    }
                    EnviarNotificacion();

                }
                else if (respuesta.Estado == 400)
                {
                    MostrarMensajePersonalizado("Ya estás siguiendo a este usuario.", DialogType.Warning);
                    brd_Seguir.Visibility = Visibility.Collapsed;
                }
                else
                {
                    MostrarMensajePersonalizado($"Error: {respuesta.Mensaje}", DialogType.Warning);
                }
            }
            catch (Exception ex)
            {
                _logger.LogError(ex);
                MostrarMensajePersonalizado("Error al intentar seguir al usuario.", DialogType.Error);
            }
        }


        private async void EnviarNotificacion()
        {
            try
            {
                int idOrigen = PerfilSingleton.Instance.IdUsuarioRegistrado;
                string idDestino = _usuario.IdUsuarioRegistrado.ToString();
              

                    var notificacion = new
                    {
                        accion = "notificacion",
                        UsuarioOrigenId = idOrigen,
                        UsuarioDestinoId = new List<string> { idDestino },
                        Titulo = "Nueva Seguidor",
                        Mensaje = $"¡{PerfilSingleton.Instance.NombreUsuario} comenzó a aeguirte! 🎉",
                        Tipo = "Seguidores",
                        FechaCreacion = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")
                    };

                    string json = JsonConvert.SerializeObject(notificacion);
                    await App.SocketNotificaciones.EnviarMensajeAsync(json);
                    

                
            }
            catch (Exception ex)
            {
                _logger.LogError(ex);
            }

        }
    }
}
