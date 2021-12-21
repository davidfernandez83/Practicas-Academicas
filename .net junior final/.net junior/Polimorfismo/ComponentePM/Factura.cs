using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ComponentePM
{
    public class Factura: BasePM 
    {
        public override string NombreTabla
        {
            get { return "Facturas"; }
        }

        public override string Crear()
        {
            return "Crear registros en varias tablas para dar de alta una factura";
        }

        public override string Modificar()
        {
            return "Modificar registros en varias tablas para dar de alta una factura";
        }
    }
}
