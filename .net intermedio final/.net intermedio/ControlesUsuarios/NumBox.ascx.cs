using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NumBox : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    
    public string Text
    {
        get
        {
            return TextBox1.Text ;
        }
        set
        {
            TextBox1.Text = value;
        }
    }

    public int MaxLength
    {
        get
        {
            return TextBox1.MaxLength;
        }
        set
        {
            TextBox1.MaxLength = value;
        }
    }

    public string MensajeErrorRequerido
    {
        get
        {
            return RequiredFieldValidator1.ErrorMessage ;
        }
        set
        {
            RequiredFieldValidator1.ErrorMessage = value;
        }
    }
    public string MensajeErrorNumerico
    {
        get
        {
            return CompareValidator1 .ErrorMessage;
        }
        set
        {
            CompareValidator1.ErrorMessage = value;
        }
    }
}
