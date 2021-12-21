using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page 
{
    int a;
    protected void Page_Load(object sender, EventArgs e)
    {
        ViewState["Dato"] = "Valor";
        ViewState["Dato1"] = 0;
        if (!IsPostBack)
        {
            a = 0;
            Application.Lock();
            Application["Contador"] = (int)Application["Contador"] + 1;
            Application.UnLock();
        }
        Label1.Text = Application["Contador"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = ViewState["Dato"].ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        HttpCookie ck = new HttpCookie("NombreCkCliente");
        ck.Values.Add("Leyenda", "Esta es una prueba de cookies");
        ck.Values.Add("Color","red");
        // para que se persistente
        ck.Expires = DateTime.Now.AddDays(3);
        // esta linea graba la cookie en el cliente
        Response.Cookies.Add(ck);
        TextBox1.Text = "Grabo";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        HttpCookie ck = Request.Cookies["NombreCkCliente"];
        if (ck == null)
            Label1.Text = "La cookie no existe";
        else
        {
            Label1.Text = ck.Values["Leyenda"].ToString();
            Label1.ForeColor = System.Drawing.Color.FromName(ck.Values["Color"].ToString());
        }
    }
}
