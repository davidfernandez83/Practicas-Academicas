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
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        if (TextBox2.Text != "")
        {
           //using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["AdvWorks2008"].ConnectionString ))
           //{
           //    using (SqlCommand cmd = new SqlCommand("Select Name from Production.Product where productid=@Prod",cn))
           //    {
           //        //System.Threading.Thread.Sleep(3000);
           //        cmd.Parameters.Add(new SqlParameter("@Prod", SqlDbType.Int));
           //        cmd.Parameters["@Prod"].Value=TextBox2.Text;
           //        cn.Open();
           //        TextBox3.Text = cmd.ExecuteScalar().ToString();
           //    }
           //}

            AdventureWorks2008Model.AdventureWorks2008Entities dm = new AdventureWorks2008Model.AdventureWorks2008Entities();
            int id = System.Convert.ToInt32(TextBox2.Text);
            TextBox3.Text  = (from p in dm.Product where p.ProductID == id select new { p.Name }).FirstOrDefault().Name;
            
        }
    }
}
