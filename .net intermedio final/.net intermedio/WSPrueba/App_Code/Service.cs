using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class Service : System.Web.Services.WebService
{
    public Service () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld(string Nombre) {
        return "Hello World " + Nombre;
    }

    [WebMethod]
    public DataSet TraerPaises()
    {
        using (DataSet ds = new DataSet())
        {
            using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["AdvWorks2008"].ConnectionString))
            {
                using (SqlDataAdapter da = new SqlDataAdapter("Select * from Person.CountryRegion",cn))
                {
                    da.Fill(ds, "Paises");
                }
            }
            return ds;
        }
    }
    
    [WebMethod(Description="Descripcion de lo que hace el metodo")]
    public List<Paises> TraerPaisesLista()
    {
       using (DataSet ds = new DataSet())
        {
            using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["AdvWorks2008"].ConnectionString))
            {
                using (SqlDataAdapter da = new SqlDataAdapter("Select * from Person.CountryRegion",cn))
                {
                    da.Fill(ds, "Paises");
                }
            }
            List<Paises> Lista = new List<Paises>();
           foreach (DataRow dr in ds.Tables["Paises"].Rows)
           {
               Paises obj = new Paises();
               obj.Codigo=dr["CountryRegionCode"].ToString();
               obj.Nombre =dr["Name"].ToString();
               Lista.Add(obj);
           }
           return Lista;
        }
    }
}


public class Paises
{
    private string _Codigo;

    public string Codigo
    {
        get { return _Codigo; }
        set { _Codigo = value; }
    }

    private string _Nombre;

    public string Nombre
    {
        get { return _Nombre; }
        set { _Nombre = value; }
    }

}
