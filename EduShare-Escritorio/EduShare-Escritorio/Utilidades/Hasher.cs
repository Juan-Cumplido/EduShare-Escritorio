using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace EduShare_Escritorio.Utilidades
{
    public static class Hasher
    {
        public static string HashToSHA2(string textToHash)
        {
            StringBuilder stringHashBuilder = new StringBuilder();
            byte[] inputBytes = Encoding.UTF8.GetBytes(textToHash);
            using (SHA256 sha256 = SHA256.Create())

            {
                byte[] hashBytes = sha256.ComputeHash(inputBytes);
                string hexaDecimalFormat = "x2";

                for (int indexBytes = 0; indexBytes < hashBytes.Length; indexBytes++)
                {
                    stringHashBuilder.Append(hashBytes[indexBytes].ToString(hexaDecimalFormat));
                }

            }

            return stringHashBuilder.ToString();
        }

    }
}
