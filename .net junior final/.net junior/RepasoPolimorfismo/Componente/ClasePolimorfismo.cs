using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Componente
{
    public class ClasePolimorfismo
    {
        public string Crear(ClaseBase obj, string queGuarda)
        {
            return obj.Crear(queGuarda);
        }

        public string Modificar(ClaseBase obj, string queGuarda)
        {
            return obj.Modificar(queGuarda);
        }

        public string Consultar(ClaseBase obj, string queGuarda)
        {
            return obj.Consultar();
        }
    }
}
