using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["AdvWorks"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("select * from production.product where name like 'a%'",cn))
            {
                cn.Open();
                using(SqlDataReader dr = cmd.ExecuteReader())
                {
                    while(dr.Read())
                    {
                        DropDownList1.Items.Add(dr["name"].ToString());
                    }
                }
            }
        }
    }
}
