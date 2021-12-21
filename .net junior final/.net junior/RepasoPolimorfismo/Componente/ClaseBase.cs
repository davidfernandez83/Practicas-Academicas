using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Componente
{
    public abstract class ClaseBase
    {
        public virtual string Crear(string queGraba)
        {
            return "Graba " + queGraba;
        }

        public virtual string Modificar(string queGraba)
        {
            return "Graba " + queGraba;
        }

        public abstract string Consultar();
        
    }
}
