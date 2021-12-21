using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        // select c.* from person.countryregion c
        var q = from c in dc.CountryRegions select c;
        GridView1.DataSource = q;
        GridView1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        // select c.* from person.stateprovince c where c.CountryRegionCode='US'
        var q = from s in dc.StateProvinces
                where s.CountryRegionCode == "US" orderby s.Name 
                select new { s.StateProvinceCode, s.Name };
        GridView1.DataSource = q;
        GridView1.DataBind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //select c.CountryRegionCode, c.Name as NombrePais, s.StateProvinceCode, s.Name as NombreProvincia
        //from Person.CountryRegion c INNER JOIN Person.StateProvince s 
        //ON c.CountryRegionCode=s.CountryRegionCode 
        //ORDER BY c.Name, s.Name 

        DataClassesDataContext dc = new DataClassesDataContext();
        var q = from c in dc.CountryRegions
                join s in dc.StateProvinces
                    on c.CountryRegionCode equals s.CountryRegionCode
                orderby c.Name, s.Name
                select new { c.CountryRegionCode, NombrePais=c.Name, 
                    s.StateProvinceCode, NombreProvincia=s.Name };
        GridView1.DataSource = q;
        GridView1.DataBind();

    }
}
