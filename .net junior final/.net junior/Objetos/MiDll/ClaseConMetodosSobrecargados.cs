using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MiDll
{
    public class ClaseConMetodosSobrecargados
    {
        public string Metodo1(string x)
        {
            return x;
        }

        public string Metodo1(int x)
        {
            return x.ToString();
        }

        public string Metodo1(string x, int y)
        {
            return x;
        }

        //public string Metodo1(string z)
        //{
        //    return z;
        //}
    }
}
