using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using ComponentePM;

namespace ComponentePM
{
    public partial class frmClientes : Form
    {
        public frmClientes()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Clientes obj = new Clientes();
            string s= AccesoBase.Crear(obj);
            MessageBox.Show(s);
        }
    }
}
