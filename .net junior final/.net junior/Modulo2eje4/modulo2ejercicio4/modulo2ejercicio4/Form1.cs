using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace modulo2ejercicio4
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int contador = 0;
            for (int i=1;i<=1000;i++)
            {
                contador += i;
            }
            lblResultado.Text = contador.ToString("#,##0.00");
        }

        private void button2_Click(object sender, EventArgs e)
        {
            int suma = 0;
            int i = 1;
            while(i <= 1000)
            {
                suma+=i;
                i++;
            }
            lblResultado2.Text = suma.ToString("#,##0.00");
        }
    }
}
