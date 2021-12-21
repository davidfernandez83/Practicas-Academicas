using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Componente
{
    public class Proveedores: ClaseBase 
    {
        public override string Consultar()
        {
            return "Consulta de Proveedores";
        }

        public override string Crear(string queGraba)
        {
            return "Grabacion de proveedores dentro de la clase proveedores";
        }
    }
}
