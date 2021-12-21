using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Objetos
{
    public class Class1
    {
        // declarado asi en un campo, no una propiedad
        string miVariable;

        private int miPropiedad;
        public int MiPropiedad
        {
            get {
            // se ejecuta al leer la propiedad
                return miPropiedad;
            }
            set {
            // se ejecuta al modificar el valor de la propiedad
                if (value >= 0 && value<=100)
                    miPropiedad = value;
                else
                    throw new Exception ("El valor debe estar entre 0 y 100");
            }
        }

        private decimal propiedadDecimal;
        public decimal PropiedadDecimal
        {
            get { return propiedadDecimal; }
            set { propiedadDecimal = value; }
        }

        public int SoloLectura
        {
            get
            { return 10; }
        }

        public int Sumar(int x, int y)
        {
            int c = x + y;
            return c;
        }


    }
}
