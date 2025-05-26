using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;

namespace EduShare_Escritorio.Utilidades
{
    public class EscalaConverter : IValueConverter
    {
        public double MaxValor { get; set; } = 1000;
        public double MaxAncho { get; set; } = 150; 
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is int numero)
            {
                double escala = Math.Min(numero / MaxValor, 1.0);
                return escala * MaxAncho;
            }

            return 0;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture) => throw new NotImplementedException();
    }

}
