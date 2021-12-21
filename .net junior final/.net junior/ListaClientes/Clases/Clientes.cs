using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Clases
{
    public class Clientes
    {
        private int codigo;
        public int Codigo
        {
            get { return codigo; }
            set {
                if (value > 0)
                    codigo = value;
                else
                    throw new Exception("El codigo debe ser mayor a cero");
            }
        }

        private string razonSocial;
        public string RazonSocial
        {
            get { return razonSocial; }
            set {
                if (value != "")
                    razonSocial = value;
                else
                    throw new Exception("Debe ingresar la razon social");
            }
        }

        private string cuit;
        public string CUIT
        {
            get { return cuit; }
            set
            {
                if (value != "")
                    cuit = value;
                else
                    throw new Exception("Debe ingresar el cuit");
            }
        }
    }
}
