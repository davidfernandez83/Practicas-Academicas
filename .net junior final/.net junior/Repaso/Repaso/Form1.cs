using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Repaso
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                NewMethod("", "Hola");

                ClassLibrary1.Class1 obj = new ClassLibrary1.Class1();
                obj.Campo = 10;
                obj.MiPropiedad = "Hola";
                MessageBox.Show(obj.MiPropiedad);

                obj.Metodo();
                obj.MetodoDevuelveString("", 1);

                string s = obj.MetodoDevuelveString("", 2);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        public void NewMethod(string x, string Vble)
        {

            Vble = "Chau";
        }

        private int propiedad;

        public int Propiedad
        {
            get { return propiedad; }
            set { propiedad = value; }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (MessageBox.Show("Esta seguro de cerrar el formulario", "Atención", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
                e.Cancel = true;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            ClassLibrary1.Class1 obj = new ClassLibrary1.Class1();
            int b=1;
            obj.Prueba(ref b);
            MessageBox.Show(b.ToString());
        }

        private void button4_Click(object sender, EventArgs e)
        {
            ClassLibrary1.Class1 obj = new ClassLibrary1.Class1();
            
        }
    }
}
