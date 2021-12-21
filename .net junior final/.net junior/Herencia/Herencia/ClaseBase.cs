using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Herencia
{
    public class ClaseBase
    {
        private int propiedad;
        public int Propiedad
        {
            get { return propiedad; }
            set { propiedad = value; }
        }

        public string Metodo()
        {
            return "Metodo";
        }
    }
}
