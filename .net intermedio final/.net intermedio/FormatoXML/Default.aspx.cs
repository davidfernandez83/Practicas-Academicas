using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (DataSet ds = new DataSet())
        {
            using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["AdvWorks2008CS"].ConnectionString))
            {
                using (SqlDataAdapter da = new SqlDataAdapter("Select * from Person.Countryregion",cn))
                {
                    da.Fill(ds, "Paises");
                }
            }
            ds.WriteXml(Server.MapPath("Paises.xml"), XmlWriteMode.IgnoreSchema);
            ds.WriteXml(Server.MapPath("PaisesConEsquema.xml"), XmlWriteMode.WriteSchema);
            ds.WriteXml(Server.MapPath("PaisesDG.xml"), XmlWriteMode.DiffGram);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        using (DataSet ds = new DataSet())
        {
            ds.ReadXml(Server.MapPath("Paises.xml"));
            // lo muestra en formato xml
            TextBox1.Text= ds.GetXml();
            // me muestra la tabla generada en el dataset 
            GridView1.DataSource = ds.Tables["Paises"];
            GridView1.DataBind();
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
}
