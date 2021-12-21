using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace modulo2ejercicio2
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            // 1
            int x = 10;
            int y = ++x;
            MessageBox.Show("x: " + x.ToString());
            MessageBox.Show("y: " + y.ToString());

            // 2
            x += 10;
            MessageBox.Show("x: " + x.ToString());

            // 3
            int z = 30;
            int a = x + y * z;
            MessageBox.Show("z: " + z.ToString());
            MessageBox.Show("a: " + a.ToString());

            // 4
            a = 10;
            int b = a++;
            bool myBool = (a == b);
            MessageBox.Show("a: " + a.ToString());
            MessageBox.Show("b: " + b.ToString());
            MessageBox.Show("myBool: " + myBool.ToString());
        }
    }
}
