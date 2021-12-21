using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebUserControl : System.Web.UI.UserControl
{
    protected int currentColorIndex;
    protected string[] colors = { "Red", "Blue", "Green", "Yellow" };
    protected void Page_Load(object sender, EventArgs e)    {
        if (IsPostBack)
        {
            currentColorIndex =  Int16.Parse(ViewState["currentColorIndex"].ToString());
        }
        else
        {
            currentColorIndex = 0;
            DisplayColor();
        }
}

    protected void DisplayColor()
    {
        textColor.BackColor = System.Drawing.Color.FromName(colors[currentColorIndex]);
        ViewState["currentColorIndex"] = currentColorIndex.ToString();
    }

    protected void buttonUp_Click(object sender, EventArgs e)    {
        if (currentColorIndex == 0)
        {
            currentColorIndex = colors.Length - 1;
        }
        else
        {
            currentColorIndex -= 1;
        }
        DisplayColor();
}

    protected void buttonDown_Click(object sender, EventArgs e)    {
        if (currentColorIndex == (colors.Length - 1))
        {
            currentColorIndex = 0;
        }
        else
        {            
            currentColorIndex += 1;
        }
        DisplayColor();
}

}
