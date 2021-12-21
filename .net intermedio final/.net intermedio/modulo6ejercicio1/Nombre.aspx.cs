using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Nombre : System.Web.UI.Page
{

    protected void btnAceptar_Click(object sender, EventArgs e)
    {
        HttpCookie ck = new HttpCookie("Nombre");
        ck.Value = txtNombre.Text;
        ck.Expires = DateTime.Now.AddMinutes(5);
        Response.Cookies.Add(ck);
        Response.Redirect("Default.aspx");
    }
}
