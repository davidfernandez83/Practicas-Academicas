using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAceptar_Click(object sender, EventArgs e)
    {
        if (txtCodigo.Text=="")
        {
            Label lblError = (Label)Page.Master.FindControl("lblErrores");
            lblError.Text = "Debe ingresar un código";
        }
    }
}
