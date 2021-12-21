using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
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
                GridView1.DataSource = dt;
                // genera el codigo html
                GridView1.DataBind();
            }
   
        }
        catch (Exception ex)
        {
 
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
}
