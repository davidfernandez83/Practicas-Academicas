using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AdventureWorks2008Model.AdventureWorks2008Entities dc =
            new AdventureWorks2008Model.AdventureWorks2008Entities();
        //var q = from c in dc.CountryRegion select c;
        var q = dc.CountryRegion;
        GridView1.DataSource = q;
        GridView1.DataBind();
    }
}
