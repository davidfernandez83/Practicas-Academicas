using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Ejemplo1
{
    public enum DiasSemana
    {
        Lunes,
        Martes,
        Miercoles,
        Jueves,
        Viernes,
        Sabado, 
        Domingo
    }

    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Int16 a;
            short a1;

            Int32 b = 10;
            int b1;

            Int64 c = 100;
            long c1;
            c1 = 0;

            uint sinSigno;

            decimal d = 1.12M;

            bool boleano = false;

            string s = "Hola";
            char ch = 'F';

            DateTime fecha = DateTime.Today;
            DateTime fecha1 = DateTime.Now;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Int16 a = 0;
            Int32 b = 0;

            a = (Int16) b;
            b = a;

            a = System.Convert.ToInt16(b);

            b = Convert.ToInt32(textBox1.Text);

            MessageBox.Show(b.ToString());
        }

        private void button3_Click(object sender, EventArgs e)
        {
            string s = "Hola \nMundo";
            MessageBox.Show(s);

            string ruta = "c:\\Program Files";
            MessageBox.Show(ruta);

            string ruta1 = @"c:\Program Files";
            MessageBox.Show(ruta1);
        }

        private void Form2_Load(object sender, EventArgs e)
        {

        }

        private void button4_Click(object sender, EventArgs e)
        {
            DiasSemana d = DiasSemana.Martes;
            MessageBox.Show(d.ToString());

            int a = (int)d;
            MessageBox.Show(a.ToString());

            if (d == DiasSemana.Domingo)
            {
 
            }
        }

        private void button5_Click(object sender, EventArgs e)
        {
            // +, -, *, /, %
            int a = 0;
            a = a + 1;
            a++;   // es igual a a=a+1
            ++a;
            int b=0;

            a--;   // es igual a=a-1;
            --a;

            a = a + 10;
            a += 10;
            a -= b;
            a *= 5;

            if (a == 0)
                b = 1;

            if (a != 0)         // distinto cero
                b = 10;

            if (a>0)
                b = 10;

            if (a <= 0)
                b = 10;

            if (a == 0 && b==1)    // && and
                b = 10;

            if (a == 0 || b == 1)
                b = 3;

            bool b1 = false;
            if (b1)
                b = 1;

            if (!b1)        // b1==false
                a = 10;
        }

        private void button6_Click(object sender, EventArgs e)
        {
            int[] v = new int[5];
            v[0] = 1;
            v[1] = 10;
            v[2] = 10;
            v[3] = 10;
            v[4] = 10;
            //v[5] = 10;

            string[] Meses = {"Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"};

            MessageBox.Show(Meses[DateTime.Today.Month-1]);
        }

        private void button7_Click(object sender, EventArgs e)
        {
            string s = "   Hola, que tal  ";
            MessageBox.Show("Cantidad de caracteres " + s.Length.ToString());
            MessageBox.Show(s.Trim().ToUpper().Substring(0, 5));

            string b = "Hola";
            int iPosicion = s.IndexOf(b);

            DateTime d = DateTime.Today;

            MessageBox.Show(d.AddDays(1).ToString("dd/MM/yyyy"));
            

        }

        private void button8_Click(object sender, EventArgs e)
        {
            int a = 0;
            int b=0;
            int c = 0;

            if (a == 0)
                b = 1;
            else
                b = 2;

            if (a == 0)
            {
                b = 1;
                c = 1;
            }
            else
            {
                // varias lineas
            }

            if (a == 0)
                b = 1;
            else if (a == 1)
                b = 2;
            else if (c == 5)
                b = 3;
            else
                b = 10;


            string s = "";

            // las siguientes 2 lineas hacen lo mismo
            if (a == 0)
                s = "Hola";
            else
                s = "Chau";

            // condicion, ? para verdadero, : para falso
            s = (a == 0) ? "Hola" : "Chau";

            switch (a)
            {
                case 0:
                    b = 1;
                    c = 1;
                    break;
                case 1:
                    b = 10;
                    break;
                case 2:
                case 3:
                    // salida es para 2 y 3
                    b = 5;
                    break;
                default:        // else
                    b = 5;
                    break;
            }

        }
    }
}
