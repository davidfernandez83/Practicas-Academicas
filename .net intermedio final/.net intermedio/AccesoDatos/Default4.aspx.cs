using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            using (DataSet ds = new DataSet())
            {
                using (SqlConnection cn = new SqlConnection())
                {
                    cn.ConnectionString = ConfigurationManager.ConnectionStrings["AdvWorks2008CS"].ConnectionString;
                    //cn.Open();
                    using (SqlDataAdapter da = new SqlDataAdapter("select * from Person.CountryRegion", cn))
                    {
                        da.Fill(ds, "Paises");
                    }
                }
                GridView1.DataSource = ds.Tables["Paises"];
                // genera el codigo html
                GridView1.DataBind();
            }

        }
        catch (Exception ex)
        {

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (MiDataSet ds = new MiDataSet())
        {
            string x = ds.Articulos.CodigoColumn.ToString();
            string x1 = ds.Tables["Articulos"].Columns["Codigo"].ToString();
        }

    }
}
