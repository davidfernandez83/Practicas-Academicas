using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ClassLibrary1
{
    public abstract class ClaseBase
    {
        public string MetodoComun()
        {
            return "Metodo con Codigo";
        }

        public abstract string MetodoAbstracto();
    }


    public class Derivada : ClaseBase
    {

        public override string MetodoAbstracto()
        {
            base.MetodoComun();
            this.MetodoComun();
            return "Metodo Implementado";
        }
    }

    public sealed class ClaseSoloParaInstancia
    { 
    }

    public class ClaseDerivada //: ClaseSoloParaInstancia
    {
 
    }

}
