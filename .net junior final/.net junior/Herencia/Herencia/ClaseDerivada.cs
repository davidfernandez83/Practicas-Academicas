using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Herencia
{
    public class ClaseDerivada: ClaseBase 
    {
        public string MetodoClase()
        {
            base.Propiedad = 10;
            base.Metodo();
            this.Metodo();
            return "";
        }

        public string Metodo(string x)
        {
            return "Metodo sobrecargado en la derivada";
        }
    }
}
