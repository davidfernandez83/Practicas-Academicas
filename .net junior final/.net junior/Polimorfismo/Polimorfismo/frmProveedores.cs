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
    public partial class frmProveedores : Form
    {
        public frmProveedores()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Proveedores obj = new Proveedores();
            string s = AccesoBase.Crear(obj);
            MessageBox.Show(s);
        }
    }
}
