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
        localhost.Service oProxy = new localhost.Service();
        GridView1.DataSource = oProxy.TraerClientes(-1);
        GridView1.DataBind();
    }
    protected void btnAlta_Click(object sender, EventArgs e)
    {
        Session["Accion"] = eAccion.Alta;
        Session["Codigo"] = -1;
        Response.Redirect("Default2.aspx");
    }
    protected void btnModif_Click(object sender, EventArgs e)
    {
        Session["Accion"] = eAccion.Modificacion;
        if (GridView1.SelectedIndex == -1)
            lblErrores.Text = "Debe seleccionar un cliente";
        else
        {
            Session["Codigo"] = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
            Response.Redirect("Default2.aspx");
        }
    }
    protected void btnBaja_Click(object sender, EventArgs e)
    {
        Session["Accion"] = eAccion.Baja;
        if (GridView1.SelectedIndex == -1)
            lblErrores.Text = "Debe seleccionar un cliente";
        else
        {
            Session["Codigo"] = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
            Response.Redirect("Default2.aspx");
        }
    }
    protected void btnConsulta_Click(object sender, EventArgs e)
    {
        Session["Accion"] = eAccion.Consulta;
        if (GridView1.SelectedIndex == -1)
            lblErrores.Text = "Debe seleccionar un cliente";
        else
        {
            Session["Codigo"] = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
            Response.Redirect("Default2.aspx");
        }
    }
}



//CREATE TABLE [dbo].[Clientes](
//    [Cliente] [int] NOT NULL,
//    [RazonSocial] [varchar](50) NOT NULL,
//    [CUIT] [char](13) NOT NULL,
//    [Domicilio] [varchar](100) NULL,
//    [FhAlta] [smalldatetime] NOT NULL,
//    [TipoResp] [tinyint] NOT NULL,
//    [Contacto] [varchar](50) NOT NULL,
//    [MailContacto] [varchar](50) NOT NULL,
//    [SaldoMaximo] [decimal](18, 2) NOT NULL,
// CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
//(
//    [Cliente] ASC
//)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
//) ON [PRIMARY]

//GO

//SET ANSI_PADDING ON