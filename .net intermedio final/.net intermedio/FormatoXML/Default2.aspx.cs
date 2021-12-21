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
        using (DataSet ds = new DataSet())
        {
            using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["AdvWorks2008CS"].ConnectionString))
            {
                using (SqlDataAdapter da = new SqlDataAdapter("Select * from Person.Countryregion", cn))
                {
                    da.Fill(ds, "Paises");
                }
                using (SqlDataAdapter da = new SqlDataAdapter("Select * from Person.StateProvince", cn))
                {
                    da.Fill(ds, "Provincias");
                }
            }
            GridView1.DataSource = ds.Tables["Paises"];
            GridView1.DataBind();
            DataRelation dr = new DataRelation("PaisProv",
            ds.Tables["Paises"].Columns["CountryRegionCode"],
            ds.Tables["Provincias"].Columns["CountryRegionCode"]);
            ds.Relations.Add(dr);

            ds.WriteXml(Server.MapPath("PaisProvinciasSinRelacion.xml"), XmlWriteMode.WriteSchema);
            dr.Nested = true;
            ds.WriteXml(Server.MapPath("PaisProvinciasConRelacion.xml"), XmlWriteMode.WriteSchema);
        }
    }
}
