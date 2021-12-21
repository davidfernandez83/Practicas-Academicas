using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ClassLibrary1
{
    public class Class1
    {
        public int Campo;

        private string miPropiedad;
        public string MiPropiedad
        {
            get { return miPropiedad; }
            set {
                if (value != "")
                    miPropiedad = value;
                else
                    throw new Exception("No puede dejar la propiedad vacia");
            }
        }

        public void Metodo()
        {
 
        }

        public void Metodo(int a)
        { 
        }

        public void Metodo(int a, string b)
        { 
        }


        public string MetodoDevuelveString(string b, int c)
        {
            int a = 0;
            if (a == 0)
                return "";
            else
            {
                a = 10;
                return a.ToString();
            }
        }

        public void Prueba(ref int a)
        {
            a = 10;
        }

        internal string MetodoInterno()
        {
            return "Metodo Interno";
        }

        protected string MetodoProtegido()
        {
            return "Metodo Protegido";
        }
    }
}
