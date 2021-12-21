using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie ck = Request.Cookies["Nombre"];
        if (ck == null)
            Response.Redirect("Nombre.aspx");
        else
            lblBienvenido.Text = "Bienvenido " + ck.Value.ToString();

    }
}
