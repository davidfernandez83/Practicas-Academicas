using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MiDll
{
    // Clase Base: la clase que se hereda, en este caso ClaseModificadores 
    // Clase Derivada: La clase que recibe la herencia, en este caso PruebaHerencia
    public class PruebaHerencia: ClaseModificadores 
    {
        public void MetodoPropio()
        {
            base.MetodoInterno();
            base.MetodoProtegido();
            base.MetodoPublico();
        }
    }
}
