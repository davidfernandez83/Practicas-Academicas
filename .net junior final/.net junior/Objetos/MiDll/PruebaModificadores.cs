using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MiDll
{
    public class PruebaModificadores
    {
        public string Prueba()
        {
            ClaseModificadores obj = new ClaseModificadores();
            obj.MetodoPublico();
            obj.MetodoInterno();
            return "";
        }
    }
}
