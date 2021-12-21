using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ClasesFacturas
{
    public class Factura
    {
        private DateTime fecha;

        public DateTime Fecha
        {
            get { return fecha; }
            set { fecha = value; }
        }

        private string cliente;

        public string Cliente
        {
            get { return cliente; }
            set { cliente = value; }
        }

        private string numero;

        public string Numero
        {
            get { return numero; }
            set { numero = value; }
        }

        private decimal total;

        public decimal Total
        {
            get { return total; }
            set { total = value; }
        }

    }
}
