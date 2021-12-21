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
            StringBuilder sb = new StringBuilder();
            Class1 c = new Class1();
            Class1 obj = new Class1();

            string x = "0";
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            try
            {
                Class1 obj = new Class1();
                // invoca al set
                obj.MiPropiedad = Convert.ToInt32(textBox1.Text);
                // invoca al get
                MessageBox.Show(obj.MiPropiedad.ToString());

                int a= obj.SoloLectura ;
                a = 11;

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                MessageBox.Show(ex.ToString());
            }

        }
    }
}
