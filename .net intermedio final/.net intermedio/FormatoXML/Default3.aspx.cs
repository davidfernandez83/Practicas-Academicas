using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Xml;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        XmlDataDocument xdd = new XmlDataDocument();
        xdd.DataSet.ReadXml(Server.MapPath("Paises.xml"));
        xdd.DataSet.Tables["Paises"].Rows[5]["Name"] = "Nombre Modificado";
        xdd.Save(Server.MapPath("PaisesModificado.xml"));
        GridView1.DataSource = xdd.DataSet.Tables["Paises"];
        GridView1.DataBind();
    }
}
