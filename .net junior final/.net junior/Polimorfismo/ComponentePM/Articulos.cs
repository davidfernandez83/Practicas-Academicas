using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ComponentePM
{
    public class Articulos: BasePM 
    {
        public override string NombreTabla
        {
            get { return "Articulos"; }
        }
    }
}
