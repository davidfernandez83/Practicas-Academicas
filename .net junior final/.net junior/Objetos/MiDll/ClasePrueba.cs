using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MiDll
{
    public class ClasePrueba
    {
        private int miPropiedad;
        public int MiPropiedad
        {
            get { return miPropiedad; }
            set { miPropiedad = value; }
        }

        public string MetodoPrueba(string x)
        {
            x = "Chau";
            return "Prueba " + x;
        }

        public void MetodoConParametrosReferencia(ref int a)
        {
            a++;
        }

        public void MetodoConParametroSalida(out int a)
        {
            a = 15;
        }



    }
}
