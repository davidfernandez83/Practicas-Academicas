using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Herencia
{
    public class ClaseSobreescritura
    {
        public virtual string MetodoPermiteSobreEscribir()
        {
            return "Metodo de la base";
        }

        public string MetodoNoVirtual()
        {
            return "Metodo no virtual";
        }
    }

    public class ClaseDerivadaSE : ClaseSobreescritura
    {

        public override string ToString()
        {
            //return "lo que sea";
            return base.ToString() + " algo agregado";
        }

        public override string MetodoPermiteSobreEscribir()
        {
            return base.MetodoPermiteSobreEscribir();
        }

        public new string MetodoNoVirtual()
        {
            return "Metodo 'ocultado' en la derivada";
        }
 
    }
}
