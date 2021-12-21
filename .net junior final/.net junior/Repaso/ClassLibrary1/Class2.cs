using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ClassLibrary1
{
    public class Class2
    {
        public Class2()
        {
            Prop = 10;
        }

        public Class2(int a)
        {
            Prop = a;
        }

        private int prop;

        public int Prop
        {
            get { return prop; }
            set { prop = value; }
        }
    }
}
