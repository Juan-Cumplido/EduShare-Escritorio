using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
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
using EduShare_Escritorio.Servicio;
using EduShare_Escritorio.Utilidades;
using EduShare_Escritorio.Vistas.ModuloLogin;
using log4net.Repository.Hierarchy;
using Microsoft.Win32;
using Newtonsoft.Json.Linq;
using static EduShare_Escritorio.Vistas.VentanaEmergentePersonalizada;


namespace EduShare_Escritorio.Vistas.ModuloUsuario
{
    public partial class Perfil : Page
    {
        private Frame _frame;
        public Perfil(Frame frame)
        {
            InitializeComponent();
            _frame = frame;
            VerificarSiInicioSesion();
        }

        private void MostrarMensajePersonalizado(string message, DialogType type)
        {
            var dialog = new VentanaEmergentePersonalizada(message, type)
            {
                Owner = Window.GetWindow(this)
            };
            dialog.ShowDialog();
        }

        private async void VerificarSiInicioSesion()
        {
            var perfil = PerfilSingleton.Instance;
            img_FotoPerfil.ImageSource = ConvertirFotoABitmap(perfil.FotoPerfilBinaria);
            await CargarPerfilDesdeServidorAsync(perfil.TokenJwt);
        }

        private async Task CargarPerfilDesdeServidorAsync(string token)
        {
            var resultado = await UsuarioServicio.ObtenerPerfilAsync(token);

            switch (resultado.Codigo)
            {
                case (int)HttpStatusCode.OK:
                    if ( resultado.Datos != null)
                    {
                        var perfil = PerfilSingleton.Instance;
                        txtb_Nombre.Text = $"{resultado.Datos.Nombre} {resultado.Datos.PrimerApellido} {resultado.Datos.SegundoApellido}";
                        txtb_Correo.Text = resultado.Datos.Correo;
                        txtb_Usuario.Text = resultado.Datos.NombreUsuario;
                        txtb_NivelEducativo.Text = resultado.Datos.NivelEducativo;
                        txtb_Institucion.Text = resultado.Datos.NombreInstitucion;
                        txtb_Seguidores.Text = resultado.Datos.NumeroSeguidores;
                        txtb_Seguidos.Text = resultado.Datos.NumeroSeguidos;
                        perfil.IdInstitucion = int.Parse(resultado.Datos.IdInstitucion);
                        perfil.NivelEducativo = resultado.Datos.NivelEducativo;
                    }
                    break;

                case (int)HttpStatusCode.Unauthorized:
                    MostrarMensajePersonalizado("Tu sesión ha expirado. Por favor, inicia sesión nuevamente.", DialogType.Error);
                    NavigationService.Navigate(new Login());
                    PerfilSingleton.Instance.Reset();
                    break;

                case (int)HttpStatusCode.NotFound:
                    MostrarMensajePersonalizado("Perfil no encontrado.", DialogType.Warning);
                    break;

                default:
                    MostrarMensajePersonalizado("Error de servidor\nOcurrió un error al cargar tu perfil.", DialogType.Error);
                    break;
            }
        }

        public ImageSource ConvertirFotoABitmap(byte[] binario)
        {
            if (binario == null || binario.Length == 0) return null;

            using var ms = new MemoryStream(binario);
            var bitmap = new BitmapImage();
            bitmap.BeginInit();
            bitmap.CacheOption = BitmapCacheOption.OnLoad;
            bitmap.StreamSource = ms;
            bitmap.EndInit();
            return bitmap;
        }

        private bool EsImagenValida(byte[] data)
        {
            if (data.Length < 8)
                return false;

            byte[] firmaPng = new byte[] { 0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A };
            byte[] firmaJpeg = new byte[] { 0xFF, 0xD8, 0xFF };

            if (data.Take(8).SequenceEqual(firmaPng))
                return true;

            if (data.Take(3).SequenceEqual(firmaJpeg))
                return true;

            return false;
        }


        private async void CambiarImagen(object sender, MouseButtonEventArgs e)
        {
            LoggerManager logger = new(this.GetType());
            OpenFileDialog dialogo = new()
            {
                Title = "Selecciona una imagen de perfil",
                Filter = "Imágenes (*.png;*.jpg)|*.png;*.jpg",
                Multiselect = false
            };

            bool? resultado = dialogo.ShowDialog();

            if (resultado == true)
            {
                FileInfo archivo = new(dialogo.FileName);
                if (archivo.Length > 20 * 1024 * 1024)
                {
                    MostrarMensajePersonalizado("¡Tamaño excedido!\r\nLa imagen debe ser menor a 20 MB.", DialogType.Warning);
                    return;
                }

                try
                {
                    BitmapImage nuevaImagen = new();
                    nuevaImagen.BeginInit();
                    nuevaImagen.UriSource = new Uri(archivo.FullName);
                    nuevaImagen.CacheOption = BitmapCacheOption.OnLoad;
                    nuevaImagen.EndInit();

                    

                    byte[] bytesImagen = File.ReadAllBytes(archivo.FullName);
                    if (!EsImagenValida(bytesImagen))
                    {
                        MostrarMensajePersonalizado("La imagen seleccionada no es válida o está dañada.", DialogType.Warning);
                        return;
                    }
                    bool exitoso = await ActualizarFotoPerfil(bytesImagen);
                    if (!exitoso)
                    {
                        return;
                    }

                }
                catch (Exception ex)
                {
                    MostrarMensajePersonalizado("La imagen que seleccionó está dañada o no es una imagen", DialogType.Warning);
                    logger.LogFatal(ex);
                }
            }
        }

        private async Task<bool> ActualizarFotoPerfil(byte[] nuevaImagenBinaria)
        {
            LoggerManager logger = new(this.GetType());
            var perfil = PerfilSingleton.Instance;
            var clienteGrpc = new FileServiceClientHandler();
            var imagenAnterior = perfil.FotoPerfilBinaria;

            try
            {
                string nombreArchivo = $"avatar_{perfil.NombreUsuario}_{Guid.NewGuid()}.jpg";
                var rutaImagen = await clienteGrpc.UploadImageAsync(perfil.NombreUsuario, nombreArchivo, nuevaImagenBinaria);

                if (string.IsNullOrWhiteSpace(rutaImagen))
                {
                    MostrarMensajePersonalizado("No se pudo subir la imagen al servidor de archivos.", DialogType.Error);
                    img_FotoPerfil.ImageSource = ConvertirFotoABitmap(imagenAnterior);
                    return false;
                }

                var resultadoApi = await UsuarioServicio.ActualizarAvatarAsync(perfil.TokenJwt, rutaImagen);

                switch (resultadoApi.Codigo)
                {
                    case (int)HttpStatusCode.OK:
                        perfil.FotoPerfilBinaria = nuevaImagenBinaria;
                        return true;

                    case (int)HttpStatusCode.Unauthorized:
                        MostrarMensajePersonalizado("Tu sesión ha expirado. Por favor, inicia sesión nuevamente.", DialogType.Error);
                        NavigationService.Navigate(new Login());
                        PerfilSingleton.Instance.Reset();
                        break;

                    default:
                        perfil.FotoPerfilBinaria = nuevaImagenBinaria;
                        break;
                }

                img_FotoPerfil.ImageSource = ConvertirFotoABitmap(imagenAnterior);
                return false;
            }
            catch (Exception ex)
            {
                MostrarMensajePersonalizado("Ocurrió un error inesperado al actualizar tu foto.", DialogType.Error);
                img_FotoPerfil.ImageSource = ConvertirFotoABitmap(imagenAnterior);
                logger.LogFatal(ex);
                return false;
            }
        }




        private void Editar(object sender, MouseButtonEventArgs e)
        {
            _frame.Navigate(new EditarPerfil(_frame));
        }
    }
}
