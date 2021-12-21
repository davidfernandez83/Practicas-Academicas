using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ComponentePM
{
    public static  class AccesoBase
    {
        public static string Crear(BasePM obj)
        {
            return obj.Crear();
        }

        public static  string Modificar(BasePM obj)
        {
            return obj.Modificar();
        }

        public static  string Eliminar(BasePM obj)
        {
            return obj.Crear();
        }

        public static  string Consultar(BasePM obj)
        {
            return obj.Crear();
        }
    }
}
