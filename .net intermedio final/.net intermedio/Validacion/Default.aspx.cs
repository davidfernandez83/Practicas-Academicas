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
        CompareValidator3.ValueToCompare = DateTime.Today.ToShortDateString();
    }
    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
 
        }
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length <= 5)
            args.IsValid = false;
        else
            args.IsValid = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default2.aspx");
        //Server.Transfer("Default2.aspx");
    }
}
