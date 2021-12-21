using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Calculadora
{
    public partial class Form1 : Form
    {
        decimal Valor1;
        string Operacion;

        #region Numeros
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            Operacion = "";
            Valor1 = 0;
        }

        private void btn0_Click(object sender, EventArgs e)
        {
            textBox1.Text += "0";
            //textBox1.AppendText("0");
        }

        private void btn1_Click(object sender, EventArgs e)
        {
            textBox1.Text += "1";
        }

        private void btn2_Click(object sender, EventArgs e)
        {
            textBox1.Text += "2";
        }

        private void btn3_Click(object sender, EventArgs e)
        {
            textBox1.Text += "3";
        }

        private void btn4_Click(object sender, EventArgs e)
        {
            textBox1.Text += "4";
        }

        private void btn5_Click(object sender, EventArgs e)
        {
            textBox1.Text += "5";
        }

        private void btn6_Click(object sender, EventArgs e)
        {
            textBox1.Text += "6";
        }

        private void btn7_Click(object sender, EventArgs e)
        {
            textBox1.Text += "7";
        }

        private void btn8_Click(object sender, EventArgs e)
        {
            textBox1.Text += "8";
        }

        private void btn9_Click(object sender, EventArgs e)
        {
            textBox1.Text += "9";
        }
        #endregion

        private void Operaciones()
        {
            if (textBox1.Text.Length == 0)
            {
                errorProvider1.SetError(textBox1, "Debe ingresar el numero");
                return;
            }
            else
                errorProvider1.SetError(textBox1, "");

            Valor1 = Convert.ToDecimal(textBox1.Text);
            textBox1.Text = "";
            //textBox1.Clear();
            textBox1.Focus();
        }

        private void btnMas_Click(object sender, EventArgs e)
        {
            Operacion = "+";
            Operaciones();
        }

        private void btnMenos_Click(object sender, EventArgs e)
        {
            Operacion = "-";
            Operaciones();
        }

        private void btnMult_Click(object sender, EventArgs e)
        {
            Operacion = "*";
            Operaciones();
        }

        private void btnDividir_Click(object sender, EventArgs e)
        {
            Operacion = "/";
            Operaciones();
        }

        private void btnIgual_Click(object sender, EventArgs e)
        {
            if (textBox1.Text.Length == 0)
            {
                errorProvider1.SetError(textBox1, "Debe ingresar el numero");
                return;
            }
            else
                errorProvider1.SetError(textBox1, "");

            decimal Valor2 = Convert.ToDecimal (textBox1.Text);
            decimal Resultado = 0;

            switch (Operacion)
            {
                case "+":
                    Resultado = Valor1 + Valor2;
                    break;
                case "-":
                    Resultado = Valor1 - Valor2;
                    break;
                case "*":
                    Resultado = Valor1 * Valor2;
                    break;
                case "/":
                    Resultado = decimal.Round(Valor1 / Valor2, 2);
                    break;
                default:
                    MessageBox.Show("Error en la operacion");
                    break;
            }
            textBox1.Text = Resultado.ToString("#,##0.00");
        }

        private void btnC_Click(object sender, EventArgs e)
        {
            textBox1.Text = "";
            textBox1.Focus();
        }
    }
}
