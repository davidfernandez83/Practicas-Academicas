using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace modulo4ejercicio1
{
    public partial class frmAutenticacion : Form
    {
        public frmAutenticacion()
        {
            InitializeComponent();
        }


        private void btnAceptar_Click(object sender, EventArgs e)
        {
            try
            {
                bool resultado;
                ClassLibrary1.Autenticacion Aut = new ClassLibrary1.Autenticacion(txtUsuario.Text,txtContraseña.Text);
                //Aut.Usuario = txtUsuario.Text;
                //Aut.Contraseña = txtContraseña.Text;
                resultado = Aut.Autenticar();
                if (resultado)
                    MessageBox.Show("Autenticacion exitosa");
                else
                {
                    MessageBox.Show("Autenticacoin erronea");
                    txtUsuario.Clear();
                    txtContraseña.Clear();
                }
            }
            catch
            {
                Exception ex = new Exception();
                MessageBox.Show(ex.ToString());
            }
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
