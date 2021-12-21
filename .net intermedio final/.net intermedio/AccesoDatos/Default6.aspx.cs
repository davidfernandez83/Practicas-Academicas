using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["AdvWorks2008CS"].ConnectionString ))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.Connection = cn;
                cmd.CommandType = CommandType.Text;         // default
                cmd.CommandText = "Select * from Person.CountryRegion";

                cn.Open();
                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        ListBox1.Items.Add(dr["Name"].ToString());
                    }
                }
            }
        }
    }
}
