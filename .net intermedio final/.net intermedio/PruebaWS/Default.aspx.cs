using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        localhost.Service oProxy = new localhost.Service();
        Label1.Text= oProxy.HelloWorld(TextBox1.Text);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        localhost.Service oProxy = new localhost.Service();
        GridView1.DataSource = oProxy.TraerPaises().Tables["Paises"];
        GridView1.DataBind();
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        try
        {
            localhost.Service oProxy = new localhost.Service();
            oProxy.Timeout = 1;
            GridView1.DataSource = oProxy.TraerPaisesLista();
            GridView1.DataBind();
        }
        catch (System.Net.WebException ex)
        {
            // errores de conectividad
            if (ex.Status == System.Net.WebExceptionStatus.Timeout)
            {
                Label1.Text = "No pudo comunicarse con el web service. Intente mas tarde";
            }
            else
            {
                Label1.Text = ex.ToString();
            }
        }
        catch (System.Web.Services.Protocols.SoapException ex)
        {
            // errores producidos dentro del web service
        }
    }
}
