using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Objetos
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            Form2 frm = new Form2();
            frm.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Mostrar("Mensaje de Prueba");

            int dato = 10;
            int a = Sumar(dato, 5);
            MessageBox.Show(a.ToString());
            MessageBox.Show(Sumar(6, 6).ToString());
        }

        private void Mostrar(string Mensaje)
        {
            MessageBox.Show(Mensaje);
        }

        private int Sumar(int x, int y)
        {
            return x + y;

        }

        int Total;
        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {

            if (MessageBox.Show("Esta seguro de cerrar el formulario?",
                "Atención",
                MessageBoxButtons.YesNo,
                MessageBoxIcon.Question) == DialogResult.No)
                e.Cancel = true;
        }

    }
}
