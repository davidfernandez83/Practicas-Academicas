using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace calculadora
{
    public partial class frmCalculadora : Form
    {
        string operacion;
        long parcial = 0;

        public frmCalculadora()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            
        }

        private long sumar(int num1, int num2)
        {
            long resultado = 0;
            resultado = num1 + num2;
            return resultado;
        }

        private long restar(int num1, int num2)
        {
            long resultado = 0;
            resultado = num1 - num2;
            return resultado;
        }

        private long multiplicar(int num1, int num2)
        {
            long resultado = 0;
            resultado = num1 * num2;
            return resultado;
        }

        private long dividir(int num1, int num2)
        {
            long resultado = 0;
            resultado = num1 / num2;
            return resultado;
        }

        private void button11_Click(object sender, EventArgs e)
        {
            textBox1.Text = "";
        }

        private void button12_Click(object sender, EventArgs e)
        {
            textBox1.Text += 0;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            textBox1.Text += 1;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            textBox1.Text += 2;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            textBox1.Text += 3;
        }

        private void button4_Click(object sender, EventArgs e)
        {
            textBox1.Text += 4;
        }

        private void button5_Click(object sender, EventArgs e)
        {
            textBox1.Text += 5;
        }

        private void button6_Click(object sender, EventArgs e)
        {
            textBox1.Text += 6;
        }

        private void button7_Click(object sender, EventArgs e)
        {
            textBox1.Text += 7;
        }

        private void button8_Click(object sender, EventArgs e)
        {
            textBox1.Text += 8;
        }

        private void button9_Click(object sender, EventArgs e)
        {
            textBox1.Text += 9;
        }

        private void button16_Click(object sender, EventArgs e)
        {
            parcial = System.Convert.ToInt32(textBox1.Text);
            operacion = "sumar";
        }

        private void button15_Click(object sender, EventArgs e)
        {
            parcial = System.Convert.ToInt32(textBox1.Text);
            operacion = "restar";
        }

        private void button14_Click(object sender, EventArgs e)
        {
            parcial = System.Convert.ToInt32(textBox1.Text);
            operacion = "multiplicar";
        }

        private void button13_Click(object sender, EventArgs e)
        {
            parcial = System.Convert.ToInt32(textBox1.Text);
            operacion = "dividir";
        }

        private void button10_Click(object sender, EventArgs e)
        {
            switch (operacion)
            {
                case "sumar":
                    textBox1.Text = parcial + textBox1.Text;
                case "restar":

        }

    }
}
