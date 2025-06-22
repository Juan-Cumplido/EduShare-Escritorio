using System;
using System.Drawing;
using System.IO;
using System.Threading.Tasks;
using Grpc.Net.Client;
using Google.Protobuf;
using Fileservice;
using EduShare_Escritorio;

public class FileServiceClientHandler
{
    private readonly FileService.FileServiceClient _client;

    public FileServiceClientHandler()
    {
        string grpcServerAddress = Resources.GRPC_URL;
        var channel = GrpcChannel.ForAddress(grpcServerAddress);
        _client = new FileService.FileServiceClient(channel);
    }


    public byte[] ConvertImageToByteArray(Image image)
    {
        using MemoryStream ms = new();
        image.Save(ms, image.RawFormat);
        return ms.ToArray();
    }

    public async Task<string?> UploadImageAsync(string username, string filename, byte[] imageBytes)
    {
        var request = new UploadRequest
        {
            Username = username,
            Filename = filename,
            Filedata = ByteString.CopyFrom(imageBytes)
        };

        var response = await _client.UploadImageAsync(request);

        return response.FilePath;
    }

    public async Task<(string? filePath, string? coverPath)> UploadPdfAsync(string username, string filename, byte[] pdfBytes)
    {
        var request = new UploadRequest
        {
            Username = username,
            Filename = filename,
            Filedata = ByteString.CopyFrom(pdfBytes)
        };

        var response = await _client.UploadPdfAsync(request);

        return (response.FilePath, response.CoverImagePath);
    }

    public async Task<(byte[]? fileData, string? filename)> DownloadImageAsync(string relativePath)
    {
        var request = new DownloadRequest
        {
            RelativePath = relativePath
        };

        var response = await _client.DownloadImageAsync(request);

        return (response.Filedata?.ToByteArray(), response.Filename);
    }

    public async Task<(byte[]? fileData, string? filename)> DownloadPdfAsync(string relativePath)
    {
        var request = new DownloadRequest
        {
            RelativePath = relativePath
        };

        var response = await _client.DownloadPdfAsync(request);

        return (response.Filedata?.ToByteArray(), response.Filename);
    }

    public async Task<(byte[]? fileData, string? filename)> DownloadCoverAsync(string pdfRelativePath)
    {
        var request = new DownloadRequest
        {
            RelativePath = pdfRelativePath
        };

        var response = await _client.DownloadCoverAsync(request);

        return (response.Filedata?.ToByteArray(), response.Filename);
    }

    public bool SaveFile(byte[] data, string outputDirectory, string filename)
    {
        try
        {
            if (!Directory.Exists(outputDirectory))
                Directory.CreateDirectory(outputDirectory);

            string fullPath = Path.Combine(outputDirectory, filename);
            File.WriteAllBytes(fullPath, data);
            return true;
        }
        catch
        {
            return false;
        }
    }

    public Image ByteArrayToImage(byte[] bytes)
    {
        using MemoryStream ms = new(bytes);
        return Image.FromStream(ms);
    }
}
