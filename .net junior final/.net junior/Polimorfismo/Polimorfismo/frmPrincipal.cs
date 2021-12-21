using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace ComponentePM
{
    public partial class frmPrincipal : Form
    {
        public frmPrincipal()
        {
            InitializeComponent();
        }

        private void proveedoresToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmProveedores frm = new frmProveedores();
            frm.MdiParent = this;
            frm.Show();
        }

        private void clientesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmClientes frm = new frmClientes();
            frm.MdiParent = this;
            frm.Show();
        }

        private void articulosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmArticulos frm = new frmArticulos();
            frm.MdiParent = this;
            frm.Show();
        }

        private void facturasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmFacturas frm = new frmFacturas();
            frm.MdiParent = this;
            frm.Show();
        }
    }
}
