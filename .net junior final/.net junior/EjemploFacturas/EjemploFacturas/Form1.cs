using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace EjemploFacturas
{
    public partial class Form1 : Form
    {
        List<ClasesFacturas.FacturaDetalle> lista = new List<ClasesFacturas.FacturaDetalle>();
        decimal totalFactura;

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            txtTotal.BackColor = Color.White;
            totalFactura = 0;
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {
            
        }

        private void txtNumFact1_KeyPress(object sender, KeyPressEventArgs e)
        {
            try
            {
                if ((int)e.KeyChar >= 48 && (int)e.KeyChar <= 57)
                    e.Handled = false;
                else if ((int) e.KeyChar==8)
                    e.Handled = false;
                else
                    e.Handled = true;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        private void txtPrecio_KeyPress(object sender, KeyPressEventArgs e)
        {
            try
            {
                if ((int)e.KeyChar >= 48 && (int)e.KeyChar <= 57)
                    e.Handled = false;
                else if ((int)e.KeyChar == 8)
                    e.Handled = false;
                else if ((int) e.KeyChar== 44 || (int) e.KeyChar==46)
                    e.Handled = false;
                else
                    e.Handled = true;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        private void txtNumFact1_Leave(object sender, EventArgs e)
        {
            txtNumFact1.Text = txtNumFact1.Text.PadLeft(4, '0');
        }

        private void txtNumFact2_Leave(object sender, EventArgs e)
        {
            txtNumFact2.Text = txtNumFact2.Text.PadLeft(8, '0');
        }

        private void txtTipoFact_KeyPress(object sender, KeyPressEventArgs e)
        {
            try
            {
                if (e.KeyChar.ToString().ToUpper() == "A" || 
                    e.KeyChar.ToString().ToUpper() == "B" ||
                    e.KeyChar.ToString().ToUpper() == "C")
                    e.Handled = false;
                else if ((int)e.KeyChar == 8)
                    e.Handled = false;
                else
                    e.Handled = true;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }


        private void btnAgregar_Click(object sender, EventArgs e)
        {
            if (Validar())
            {
                ClasesFacturas.FacturaDetalle obj = new ClasesFacturas.FacturaDetalle();
                obj.Articulo = txtArticulo.Text;
                obj.Cantidad = System.Convert.ToInt32(txtCantidad.Text);
                obj.Precio = System.Convert.ToDecimal(txtPrecio.Text);
                decimal subtotal = decimal.Round( System.Convert.ToDecimal(txtCantidad.Text) * System.Convert.ToDecimal(txtPrecio.Text),2);
                obj.Subtotal = subtotal;
                lista.Add(obj);

                BindingSource bs = new BindingSource();
                bs.DataSource = lista;
                dataGridView1.DataSource = bs;
                totalFactura += subtotal;
                txtTotal.Text = totalFactura.ToString("#,##0.00");

                txtCantidad.Text = "";
                txtArticulo.Text = "";
                txtPrecio.Text="";
                txtArticulo.Focus();
            }
        }

        private bool Validar()
        {
            bool validar = true;
            if (txtArticulo.Text.Length == 0)
            {
                errorProvider1.SetError(txtArticulo, "El articulo es obligatorio");
                validar = false;
            }
            else
                errorProvider1.SetError(txtArticulo, "");

            if (txtCantidad.Text.Length == 0)
            {
                errorProvider1.SetError(txtCantidad, "La cantidad es obligatorio");
                validar = false;
            }
            else
            {
                errorProvider1.SetError(txtCantidad, "");
                if (System.Convert.ToInt32(txtCantidad.Text) <=0)
                {
                    errorProvider1.SetError(txtCantidad, "La cantidad debe ser mayor a cero");
                    validar = false;
                }
                else
                    errorProvider1.SetError(txtCantidad, "");
            }

            if (txtPrecio .Text.Length == 0)
            {
                errorProvider1.SetError(txtPrecio, "El precio es obligatorio");
                validar = false;
            }
            else
            {
                errorProvider1.SetError(txtPrecio, "");
                if (System.Convert.ToDecimal(txtPrecio.Text) <= 0)
                {
                    errorProvider1.SetError(txtPrecio, "El precio debe ser mayor a cero");
                    validar = false;
                }
                else
                    errorProvider1.SetError(txtPrecio, "");
            }
            return validar;
        }
    }
}
