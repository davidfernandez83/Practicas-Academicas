using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace EJEMPLO1
{
    public partial class frmPrestamos : Form
    {
        public frmPrestamos()
        {
            InitializeComponent();
        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void radioButton3_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void btnPagoMensual_Click(object sender, EventArgs e)
        {
           MessageBox.Show("Probando la Aplicación","Aplicacion de Prueba",MessageBoxButtons.OK, MessageBoxIcon.Information);
        }
    }
}
