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
        Label1.Text = User.Identity.Name;
        Label2.Text = User.Identity.AuthenticationType;
        if (User.IsInRole(@"BUILTIN\Administrators"))
            Label3.Text = "Pertenece al grupo administrator";
        else
            Label3.Text = "NO Pertenece al grupo administrator";
    }

    // aspnet_regiis -pe "system.web/identity" -app "/DirectorioVirtual" -prov "DataProtectionConfigurationProvider"
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}
