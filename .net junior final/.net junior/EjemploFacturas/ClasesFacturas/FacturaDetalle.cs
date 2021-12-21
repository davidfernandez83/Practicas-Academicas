using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ClasesFacturas
{
    public class FacturaDetalle
    {
        private string articulo;

        public string Articulo
        {
            get { return articulo; }
            set { articulo = value; }
        }

        private int cantidad;

        public int Cantidad
        {
            get { return cantidad; }
            set { cantidad = value; }
        }

        private decimal precio;

        public decimal Precio
        {
            get { return precio; }
            set { precio = value; }
        }

        private decimal subtotal;

        public decimal Subtotal
        {
            get { return subtotal; }
            set { subtotal = value; }
        }
    }
}
