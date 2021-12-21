using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default9 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            lblErrores.Text = "";
            using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["AdvWorks2008CS"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = cn;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "GrabarProvincias";

                    cmd.Parameters.Add(new SqlParameter("@CodProv", SqlDbType.Char, 3));
                    cmd.Parameters.Add(new SqlParameter("@CodPais", SqlDbType.VarChar, 3));
                    cmd.Parameters.Add(new SqlParameter("@Nombre", SqlDbType.VarChar, 50));
                    cmd.Parameters.Add(new SqlParameter("@Territorio", SqlDbType.Int));

                    cmd.Parameters["@CodProv"].Value = TextBox1.Text;
                    cmd.Parameters["@CodPais"].Value = "AR";
                    cmd.Parameters["@Nombre"].Value = TextBox2.Text;
                    cmd.Parameters["@Territorio"].Value = TextBox3.Text;

                    cn.Open();
                    cmd.ExecuteNonQuery();
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox1.Focus();
                }
        
            }
        }
        catch (SqlException ex)
        {
            if (ex.Number == 2601)
            {
                lblErrores.Text = "Clave Duplicada";
                TextBox1.Focus();
            }
            else
            {
                lblErrores.Text = ex.Number.ToString() + " - " + ex.ToString();
            }
        }
    }
}
