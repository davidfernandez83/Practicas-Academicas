using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace modulo2ejercicio1
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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string nombre = "Juan Perez";
            label1.Text = nombre;
            decimal numero = 135.20M;
            label2.Text = numero.ToString("#,##0.00");
            string dia = DiasSemana.Martes.ToString();
            label3.Text = dia;
        }
    }
}
