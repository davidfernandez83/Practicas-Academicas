using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace modulo2ejercicio5
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
                if(textBox1.Text!="")
                {
                    decimal grados = textBox1.Text;
                    decimal resultado = 0;
                    if(radioButton1.Checked)
                        resultado = 5 * (grados -32) / 9;
                    MessageBox.Show("resultado");
                }
            }
        }
    }
}
