using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EduShare_Escritorio.Utilidades
{
    public class BusquedaSingleton
    {
        private static BusquedaSingleton _instance;

        public string TipoBusqueda { get; private set; }
        public string TextoBusqueda { get; private set; }
        public int IdBusqueda { get; private set; }

        private BusquedaSingleton() { }

        public static BusquedaSingleton Instance => _instance ??= new BusquedaSingleton();

        public void EstablecerBusqueda(string tipo, string texto, int id)
        {
            TipoBusqueda = tipo;
            TextoBusqueda = texto;
            IdBusqueda = id;
        }

        public void LimpiarBusqueda()
        {
            TipoBusqueda = null;
            TextoBusqueda = null;
            IdBusqueda = 0;
        }

        public bool YaTieneBusqueda() => !string.IsNullOrEmpty(TipoBusqueda);
    }

}
