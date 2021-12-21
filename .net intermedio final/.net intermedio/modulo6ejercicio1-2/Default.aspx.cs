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
        {
            if (Session["Hora"] == null)
                Session["Hora"] = DateTime.Now;
            lblBienvenido.Text = "Bienvenido " + ck.Value.ToString();
            if (!Page.IsPostBack)
                Application["Visitantes"] = (int)Application["Visitantes"] + 1;
            lblVisitantes.Text = "Cantidad de Visitas: " + Application["Visitantes"].ToString() + ". Conectado a las " + Session["Hora"].ToString();
        }

    }
}
