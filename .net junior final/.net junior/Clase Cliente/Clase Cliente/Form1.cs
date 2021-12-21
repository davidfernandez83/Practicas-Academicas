using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Clase_Cliente
{
    public partial class frm1 : Form
    {
        public frm1()
        {
            InitializeComponent();
        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            Cliente Clientes = new Cliente();
            Clientes.Codigo = Convert.ToInt32(txtCodigo.Text);
            Clientes.RazonSocial = Convert.ToString(txtRSocial.Text);
            Clientes.Cuit = Convert.ToInt32(txtCuit.Text);

            List<Cliente> datosClientes = new List<Cliente>();
            datosClientes.Add(Clientes);
            //datosClientes.Add(Convert.ToString(Clientes.Codigo));
            //datosClientes.Add(Clientes.RazonSocial);
            //datosClientes.Add(Convert.ToString(Clientes.Cuit));

            dataGridView1.DataSource = datosClientes;
        }
    }
}
