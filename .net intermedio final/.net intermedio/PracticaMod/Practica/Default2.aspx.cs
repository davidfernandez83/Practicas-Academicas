using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlTipoResp.Items.Add("Responsable Inscripto");
            ddlTipoResp.Items.Add("Monotributista");
            ddlTipoResp.Items.Add("Exento");

            if ((eAccion)Session["Accion"] == eAccion.Alta)
                txtFhAlta.Text = DateTime.Today.ToString("dd/MM/yyyy");
            else
            {
                int Codigo = System.Convert.ToInt32( Session["Codigo"]);
                localhost.Service oProxy = new localhost.Service();
                DataSet ds = oProxy.TraerClientes(Codigo);
                txtCodigo.Text = Codigo.ToString();

                DataRow dr = ds.Tables["Clientes"].Rows[0];
                txtRazon.Text = dr["RazonSocial"].ToString();
                txtCUIT .Text = dr["Cuit"].ToString();
                txtDomicilio.Text = dr["Domicilio"].ToString();
                txtFhAlta.Text = System.Convert.ToDateTime( dr["FhAlta"].ToString()).ToString("dd/MM/yyyy");
                ddlTipoResp.SelectedIndex=System.Convert.ToInt16(dr["TipoResp"])-1;
                txtContacto.Text = dr["Contacto"].ToString();
                txtMail.Text = dr["MailContacto"].ToString();
                txtSaldo .Text = System.Convert.ToDecimal( dr["SaldoMaximo"]).ToString();
            }

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (Page.IsValid)
            {
                localhost.Service oProxy = new localhost.Service();

                localhost.Clientes obj = new localhost.Clientes();
                obj.Codigo = System.Convert.ToInt32(txtCodigo.Text);
                obj.Razon = txtRazon.Text;
                obj.Cuit = txtCUIT.Text;
                obj.Domicilio = txtDomicilio.Text;
                obj.FhAlta = System.Convert.ToDateTime(txtFhAlta.Text);
                obj.TipoResp = System.Convert.ToByte(System.Convert.ToInt16(ddlTipoResp.SelectedIndex.ToString()) + 1);
                obj.Contacto = txtContacto.Text;
                obj.Mail = txtMail.Text;
                obj.Saldo = System.Convert.ToDecimal(txtSaldo .Text);

                oProxy.AltaClientes(obj);
                Response.Redirect("Default.aspx");
            }
        }
        catch (Exception ex)
        {
            lblErrores.Text = ex.ToString();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}
