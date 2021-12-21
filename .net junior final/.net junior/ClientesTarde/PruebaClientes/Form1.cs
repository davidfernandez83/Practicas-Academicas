using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PruebaClientes
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (Validar())
            {
                ClientesTarde.Clientes obj = new ClientesTarde.Clientes();
                obj.Codigo = System.Convert.ToInt32(textBox1.Text);
                obj.RazonSocial = textBox2.Text;
                obj.Cuit = maskedTextBox1.Text;
                MessageBox.Show(obj.DevolverDatos());


                ClientesTarde.Clientes obj1 = 
                    new ClientesTarde.Clientes(System.Convert.ToInt32(textBox1.Text), 
                        textBox2.Text, maskedTextBox1.Text);
                MessageBox.Show(obj1.DevolverDatos());

            }
        }

        private bool Validar()
        {
            bool validar = true;
            if (textBox1.Text == "")
            {
                errorProvider1.SetError(textBox1, "El codigo es obligatorio");
                validar = false;
            }
            else
            {
                errorProvider1.SetError(textBox1, "");
                if (System.Convert.ToInt32(textBox1.Text) == 0)
                    {
                        errorProvider1.SetError(textBox1, "El codigo debe ser mayor a cero");
                        validar = false;
                    }       
                    else
                        errorProvider1.SetError(textBox1, "");
            }
            if (textBox2.Text=="")
            {
                errorProvider1.SetError(textBox2, "Debe ingresar la razón social");
                validar = false;
            }
            else
                errorProvider1.SetError(textBox2, "");

            maskedTextBox1.TextMaskFormat = MaskFormat.ExcludePromptAndLiterals;
            if (maskedTextBox1.Text.Length != 11)
            {
                errorProvider1.SetError(maskedTextBox1, "Debe ingresar el cuit completo");
                validar = false;
            }
            else
                errorProvider1.SetError(maskedTextBox1, "");
            maskedTextBox1.TextMaskFormat = MaskFormat.IncludePromptAndLiterals;
            return validar;
        }

        #region Eventos
        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            //e.Cancel = true;
        }

        private void textBox1_KeyPress(object sender, KeyPressEventArgs e)
        {
            if ((int)e.KeyChar >= 48 && (int)e.KeyChar <= 57)
                e.Handled = false;
            else if ((int)e.KeyChar == 8)
                e.Handled = false;
            else
                e.Handled = true;
        }
        #endregion
    }
}
