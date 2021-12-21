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
    private string _text;
    public string Text
    {
      get { return txtNumero.Text; }
      set { txtNumero.Text = value; }
    }
    private string _MensajeErrorObligatorio;

    public string MensajeErrorObligatorio
    {
        get { return RequiredFieldValidator1.ErrorMessage; }
        set { RequiredFieldValidator1.ErrorMessage = value; }
    }
    private string _MensajeErrorNumerico;

    public string MensajeErrorNumerico
    {
        get { return CompareValidator1.ErrorMessage; }
        set { CompareValidator1.ErrorMessage = value; }
    }
}
