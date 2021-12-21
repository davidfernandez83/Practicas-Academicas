using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ClassLibrary1
{
    public class Class4
    {
        public string Metodo()
        {
            return "Metodo";
        }

        protected string MetodoProtegido()
        {
            return "M.p.";
        }

        public virtual string MetodoQuePuedeSerSobreescrito()
        {
            return "Metodo que puede ser sobreescrito";
        }
    }

    // Class5 es la derivada
    // Class4 es la base
    public class Class5 : Class4
    {
        public string MetodoPropio()
        {
            return base.MetodoProtegido();
        }

        public string Metodo(int a)
        {
            return "Sobrecargado";
        }

        public override string MetodoQuePuedeSerSobreescrito()
        {
            return base.MetodoQuePuedeSerSobreescrito();
        }
    }
}
