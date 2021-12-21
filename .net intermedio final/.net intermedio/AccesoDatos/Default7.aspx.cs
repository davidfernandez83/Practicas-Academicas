using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default7 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["AdvWorks2008CS"].ConnectionString))
        {
            // nunca concatenar, siempre usar parametros
            //string sql = "Select * from Person.StateProvince where countryregioncode='" + TextBox1.Text + "'";
            using (SqlCommand cmd = new SqlCommand("Select * from Person.StateProvince where countryregioncode=@Pais", cn))
            {
                //SqlParameter p = new SqlParameter("@Pais", SqlDbType.VarChar, 3);
                //cmd.Parameters.Add(p);

                cmd.Parameters.Add(new SqlParameter("@Pais", SqlDbType.VarChar, 3));
                cmd.Parameters["@Pais"].Value = TextBox1.Text;

                ListBox1.Items.Clear();
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
