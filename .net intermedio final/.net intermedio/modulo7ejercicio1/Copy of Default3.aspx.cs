using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAceptar_Click(object sender, EventArgs e)
    {
        try
        {
            using(SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["AdvWorks"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("GrabarMonedas2",cn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add(new SqlParameter("@cod",SqlDbType.VarChar,3));
                    cmd.Parameters.Add(new SqlParameter("@nombre", SqlDbType.VarChar,50));
                    cmd.Parameters["@cod"].Value= txtCodigo.Text;
                    cmd.Parameters["@nombre"].Value=txtNombre.Text;
                    cn.Open();
                    if(cmd.ExecuteNonQuery()>0)lblErrores.Text="Datos insertados correctamente";
                    txtCodigo.Text = "";
                    txtNombre.Text = "";
                    txtCodigo.Focus();
                }
            }
        }

        catch (SqlException ex)
        {
            lblErrores.Text = ex.ToString();
        }
        catch (Exception ex)
        {
            lblErrores.Text = ex.ToString();
        }


    }
}
