using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default10 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (DataTable dt = new DataTable())
        {
            using (SqlConnection cn = new SqlConnection())
            {
                cn.ConnectionString = ConfigurationManager.ConnectionStrings["AdvWorks2008CS"].ConnectionString;
                //cn.Open();
                using (SqlDataAdapter da = new SqlDataAdapter("select * from Person.CountryRegion", cn))
                {
                    da.Fill(dt);
                }
            }

            DataView dv = new DataView(dt);
            dv.Sort = "Name desc";
            dv.RowFilter = "Name like 'a%'";

            int Posicion = dv.Find("Argentina");
            Label1.Text = Posicion.ToString();

            GridView1.DataSource = dv;
            // genera el codigo html
            GridView1.DataBind();
        }
    }
}
