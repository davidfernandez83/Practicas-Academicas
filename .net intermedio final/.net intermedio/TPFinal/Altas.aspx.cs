using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class Altas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DatosClientes dc = new DatosClientes();
        dc.Alta(Convert.ToInt32(txtCliente.Text), txtRazonSocial.Text, txtCUIT.Text, txtDomicilio.Text, Convert.ToDateTime(txtFhAlta.Text), Convert.ToInt32(ddlTipoResp.Text), txtContacto.Text, txtMail.Text, Convert.ToDecimal(txtSaldo.Text));

    }
}
