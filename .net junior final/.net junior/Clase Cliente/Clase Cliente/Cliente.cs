using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Clase_Cliente
{
    class Cliente
    {
        private int codigo;
        public int Codigo
        {
            get { return codigo; }
            set { codigo = value; }
        }

        private string razonSocial;
        public string RazonSocial
        {
            get { return razonSocial; }
            set { razonSocial = value; }
        }

        private int cuit;
        public int Cuit
        {
            get { return cuit; }
            set { cuit = value; }
        }


    }
}
