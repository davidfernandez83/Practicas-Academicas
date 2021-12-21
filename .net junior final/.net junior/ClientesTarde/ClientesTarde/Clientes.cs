using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ClientesTarde
{
    public class Clientes
    {
        public Clientes()
        { 
        }

        public Clientes(int pCod, string pRazon, string pCuit)
        {
            Codigo = pCod;
            RazonSocial = pRazon;
            Cuit = pCuit;
        }

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
                    throw new Exception("La razon social debe ser distinta de vacio");
           }
        }

        private string cuit;
        public string Cuit
        {
            get { return cuit; }
            set
            {
                if (value != "")
                    cuit = value;
                else
                    throw new Exception("La razon social debe ser distinta de vacio");
            }
        }

        public string DevolverDatos()
        {
            return "Codigo: " + Codigo.ToString() + ", Razon Social: " + RazonSocial + ", CUIT: " + Cuit;
        }

    }
}
