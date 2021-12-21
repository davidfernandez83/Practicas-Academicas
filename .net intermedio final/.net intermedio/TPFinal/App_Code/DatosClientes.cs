using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


/// <summary>
/// Summary description for DatosClientes
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class DatosClientes : System.Web.Services.WebService {

    public DatosClientes () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public DataTable Consulta()
    {
        using (DataTable dt = new DataTable())
        {
            using(SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["AdventureWorks2008ConnectionString"].ConnectionString))
            {
                using(SqlDataAdapter da = new SqlDataAdapter("SELECT * from Clientes",cn))
                {
                    da.Fill(dt);
                }
            }
            return dt;
        }
    }

    [WebMethod]
    public void Alta(Clientes clientes)
    {
        using(SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["AdventureWorks2008ConnectionString"].ConnectionString))
        {
            using(SqlCommand cmd = new SqlCommand
                ("INSERT INTO Clientes VALUES(@Cliente, @RazonSocial, @CUIT, @Domicilio, @FechaAlta, @TipoResponsable, @Contacto, @Mail, @Saldo)",cn))
            {
                cmd.Parameters.Add("@Cliente", SqlDbType.Int).Value=clientes.Cliente;
                cmd.Parameters.Add("@RazonSocial", SqlDbType.VarChar,50).Value = clientes.RazonSocial;
                cmd.Parameters.Add("@CUIT", SqlDbType.Char,13).Value = clientes.CUIT;
                cmd.Parameters.Add("@Domicilio", SqlDbType.VarChar,100).Value = clientes.Domicilio;
                cmd.Parameters.Add("@FechaAlta", SqlDbType.SmallDateTime).Value = clientes.FechaAlta;
                cmd.Parameters.Add("@TipoResponsable", SqlDbType.TinyInt).Value = clientes.TipoResponsable;
                cmd.Parameters.Add("@Contacto", SqlDbType.VarChar,50).Value = clientes.Contacto;
                cmd.Parameters.Add("@Mail", SqlDbType.VarChar,50).Value = clientes.Mail;
                cmd.Parameters.Add("@Saldo", SqlDbType.Decimal).Value = clientes.Saldo;
                //cn.Open();
                cmd.ExecuteNonQuery();

            }
        }
    }
    
}