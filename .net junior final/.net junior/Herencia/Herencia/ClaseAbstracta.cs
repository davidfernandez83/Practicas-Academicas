using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Herencia
{
    public abstract class ClaseAbstracta
    {
        public string MetodoImplementado()
        {
            return "Metodo implementado";
        }

        public abstract string MetodoAbstracto();
    }

    public class ClaseHerenciaAbstracta : ClaseAbstracta
    {
        public override string MetodoAbstracto()
        {
            return "Metodo implementado en la derivada";
        }
    }

    public sealed class ClaseParaInstancia
    {
 
    }

    //public class Prueba : ClaseParaInstancia
    //{ 
    //}
}
