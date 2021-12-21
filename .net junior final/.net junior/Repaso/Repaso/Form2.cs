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
    public struct Punto
    {
        public int x;
        public int y;
    }

    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private void Form2_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            Punto coordenada ;
            coordenada.x = 10;
            coordenada.y = 4;
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            ClassLibrary1.Class2 obj = new ClassLibrary1.Class2();
            ClassLibrary1.Class2 obj1 = new ClassLibrary1.Class2(1);

            using (System.Data.SqlClient.SqlConnection cn = new System.Data.SqlClient.SqlConnection())
            {
 
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            ClassLibrary1.Class3.MiMetodo();
            MessageBox.Show("");

        }

        private void button4_Click(object sender, EventArgs e)
        {
            ClassLibrary1.Class4 obj = new ClassLibrary1.Class4();
            ClassLibrary1.Class5 obj1 = new ClassLibrary1.Class5();

            obj.Metodo();
            obj1.Metodo();
            obj1.Metodo(1);

            //ClassLibrary1.ClaseBase obj3 = new ClassLibrary1.ClaseBase();
            ClassLibrary1.ClaseSoloParaInstancia obj2 = new ClassLibrary1.ClaseSoloParaInstancia();

        }
    }
}
