using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace ComponentePM
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            ClaseDerivada obj = new ClaseDerivada();
            obj.Metodo();

            ClaseBase obj1 = new ClaseDerivada();
            obj1.Metodo();


        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void UsarPolimorfismo(BaseAnimal obj)
        {
            MessageBox.Show( obj.HacerRuido());
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Perro obj = new Perro();
            UsarPolimorfismo(obj);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Gato obj = new Gato();
            UsarPolimorfismo(obj);
        }

    }
}
