using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Autenticacion : System.Web.UI.Page
{
        string usuario = "admin";
        string contraseña = "1234";

    protected void btnAceptar_Click(object sender, EventArgs e)
    {
        

        if (txtUsuario.Text == usuario && txtContraseña.Text == contraseña)
            System.Web.Security.FormsAuthentication.RedirectFromLoginPage(usuario, false);
        else
            lblErrores.Text = "Usuario o contraseña erronea";
    }
}
