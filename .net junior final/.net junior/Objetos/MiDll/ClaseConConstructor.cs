using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MiDll
{
    public class ClaseConConstructor
    {
        private int propiedad;

        public int Propiedad
        {
            get { return propiedad; }
            set { propiedad = value; }
        }

        public ClaseConConstructor()
        {
            Propiedad = 10;
        }

        public ClaseConConstructor(int x)
        {
            Propiedad = x;
        }

    }
}
