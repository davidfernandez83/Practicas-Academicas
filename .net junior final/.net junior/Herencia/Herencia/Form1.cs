using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Herencia
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            ClaseBase obj = new ClaseBase();
            obj.Metodo();

            ClaseDerivada obj1 = new ClaseDerivada();
            obj1.Metodo();
            obj1.Metodo("");
        }

        private void button2_Click(object sender, EventArgs e)
        {
            // no puede instanciarse ya que es abstracta
            //ClaseAbstracta obj = new ClaseAbstracta();

            ClaseParaInstancia obj = new ClaseParaInstancia();

        }

        private void button3_Click(object sender, EventArgs e)
        {
            ClaseDerivadaSE obj = new ClaseDerivadaSE();
            MessageBox.Show(obj.ToString());

            MessageBox.Show(obj.MetodoNoVirtual());
        }
    }
}
