using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace ListaClientes
{
    public partial class Form1 : Form
    {
        List<Clases.Clientes> lista;
        public Form1()
        {
            InitializeComponent();

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            lista = new List<Clases.Clientes>();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (Validar())
            {
                Clases.Clientes obj = new Clases.Clientes();
                obj.Codigo = Convert.ToInt32(textBox1.Text);
                obj.RazonSocial = textBox2.Text;
                obj.CUIT = maskedTextBox1.Text;

                lista.Add(obj);
                //dataGridView1.DataSource = null;

                var b = new BindingSource();
                b.DataSource = lista;
                dataGridView1.DataSource = b;

                textBox1.Text = "";
                textBox2.Clear();
                maskedTextBox1.Text = "";
                textBox1.Focus();
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
                {
                    errorProvider1.SetError(textBox1, "");
                    // validar si el codigo ya existe
                    foreach (Clases.Clientes elemento in lista)
                    {
                        if (elemento.Codigo.ToString() == textBox1.Text)
                             {
                                errorProvider1.SetError(textBox1, "El codigo está repetido");
                                validar = false;
                                break;
                             }
                        else
                             errorProvider1.SetError(textBox1, "");
                    }
                }
            }
            if (textBox2.Text == "")
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

        private void textBox1_KeyPress(object sender, KeyPressEventArgs e)
        {
            if ((int)e.KeyChar >= 48 && (int)e.KeyChar <= 57)
                e.Handled = false;
            else if ((int)e.KeyChar == 8)
                e.Handled = false;
            else
                e.Handled = true;
        }
    }
}
