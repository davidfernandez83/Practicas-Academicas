using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MiDll
{
    public class ClaseModificadores
    {
        public string MetodoPublico()
        {
            return "Metodo Publico";
        }

        private string MetodoPrivado()
        {
            return "Metodo Privado";
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
