using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ComponentePM
{
    public class BaseAnimal
    {
        public virtual string HacerRuido()
        {
            return "Hacer Ruido";
        }
    }

    public class Perro : BaseAnimal
    {
        public override string HacerRuido()
        {
            return "Ladra";
        }
    }

    public class Gato : BaseAnimal
    {
        public override string HacerRuido()
        {
            return "Maulla";
        }
    }
}
