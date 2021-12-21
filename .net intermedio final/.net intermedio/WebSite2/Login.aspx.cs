using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sUsuario = "Juan";
        string sContra = "12345";

        if (sUsuario == TextBox1.Text &&
            sContra == TextBox2.Text)
            System.Web.Security.FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, false);
        else
            Label3.Text = "Usuario y/o contraseña incorrectos";
    }
}
