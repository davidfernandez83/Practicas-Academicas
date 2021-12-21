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
    public DataSet TraerClientes(int Codigo) {
        using (DataSet ds = new DataSet())
        {
            using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["AdvWorks2008"].ConnectionString))
            {
                if (Codigo == -1)
                {
                    using (SqlDataAdapter da = new SqlDataAdapter("Select * from Clientes", cn))
                    {
                        da.Fill(ds, "Clientes");
                    }
                }
                else
                    using (SqlDataAdapter da = new SqlDataAdapter("Select * from Clientes where Cliente = @Cod", cn))
                    {
                        da.SelectCommand.Parameters.Add(new SqlParameter("@Cod", SqlDbType.Int));
                        da.SelectCommand.Parameters["@Cod"].Value = Codigo;
                        da.Fill(ds, "Clientes");
                    }

            }
            return ds;
        }
    }

    [WebMethod]
    public void AltaClientes(Clientes obj)
    {
        try
        {
            using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["AdvWorks2008"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO Clientes (Cliente, RazonSocial, CUIT, Domicilio, FhAlta, TipoResp, Contacto, MailContacto, SaldoMaximo) VALUES (@Cliente, @Razon, @Cuit, @Domi, @FhAlta, @TipoResp, @Contacto, @Mail, @Saldo)", cn))
                {
                    cmd.Parameters.Add(new SqlParameter("@Cliente", SqlDbType.Int));
                    cmd.Parameters.Add(new SqlParameter("@Razon", SqlDbType.VarChar, 50));
                    cmd.Parameters.Add(new SqlParameter("@CUIT", SqlDbType.Char, 13));
                    cmd.Parameters.Add(new SqlParameter("@Domi", SqlDbType.VarChar, 100));
                    cmd.Parameters.Add(new SqlParameter("@FhAlta", SqlDbType.SmallDateTime));
                    cmd.Parameters.Add(new SqlParameter("@TipoResp", SqlDbType.TinyInt));
                    cmd.Parameters.Add(new SqlParameter("@Contacto", SqlDbType.VarChar, 50));
                    cmd.Parameters.Add(new SqlParameter("@Mail", SqlDbType.VarChar, 50));
                    cmd.Parameters.Add(new SqlParameter("@Saldo", SqlDbType.Decimal));

                    cmd.Parameters["@Cliente"].Value = obj.Codigo;
                    cmd.Parameters["@Razon"].Value = obj.Razon;
                    cmd.Parameters["@Cuit"].Value = obj.Cuit;
                    cmd.Parameters["@Domi"].Value = obj.Domicilio;
                    cmd.Parameters["@FhALta"].Value = obj.FhAlta;
                    cmd.Parameters["@TipoResp"].Value = obj.TipoResp;
                    cmd.Parameters["@Contacto"].Value = obj.Contacto;
                    cmd.Parameters["@Mail"].Value = obj.Mail;
                    cmd.Parameters["@Saldo"].Value = obj.Saldo;

                    cn.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }
        catch (Exception)
        {
            throw;
        }

    }

    [WebMethod]
    public void ModificaClientes(Clientes obj)
    {
        try
        {
            using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["AdvWorks2008"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("UPDATE Clientes SET RazonSocial=@Razon, CUIT=@Cuit, Domicilio=@Domi, FhAlta=@FhAlta, TipoResp=@TipoResp, Contacto=@Contacto, MailContacto=@Mail, SaldoMaximo=@Saldo WHERE Cliente=@Cliente", cn))
                {
                    cmd.Parameters.Add(new SqlParameter("@Cliente", SqlDbType.Int));
                    cmd.Parameters.Add(new SqlParameter("@Razon", SqlDbType.VarChar, 50));
                    cmd.Parameters.Add(new SqlParameter("@CUIT", SqlDbType.Char, 13));
                    cmd.Parameters.Add(new SqlParameter("@Domi", SqlDbType.VarChar, 100));
                    cmd.Parameters.Add(new SqlParameter("@FhAlta", SqlDbType.SmallDateTime));
                    cmd.Parameters.Add(new SqlParameter("@TipoResp", SqlDbType.TinyInt));
                    cmd.Parameters.Add(new SqlParameter("@Contacto", SqlDbType.VarChar, 50));
                    cmd.Parameters.Add(new SqlParameter("@Mail", SqlDbType.VarChar, 50));
                    cmd.Parameters.Add(new SqlParameter("@Saldo", SqlDbType.Decimal));

                    cmd.Parameters["@Cliente"].Value = obj.Codigo;
                    cmd.Parameters["@Razon"].Value = obj.Razon;
                    cmd.Parameters["@Cuit"].Value = obj.Cuit;
                    cmd.Parameters["@Domi"].Value = obj.Domicilio;
                    cmd.Parameters["@FhALta"].Value = obj.FhAlta;
                    cmd.Parameters["@TipoResp"].Value = obj.TipoResp;
                    cmd.Parameters["@Contacto"].Value = obj.Contacto;
                    cmd.Parameters["@Mail"].Value = obj.Mail;
                    cmd.Parameters["@Saldo"].Value = obj.Saldo;

                    cn.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }
        catch (Exception)
        {
            throw;
        }
    }

    [WebMethod]
    public void EliminarClientes(int Codigo)
    {
        try
        {
            using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["AdvWorks2008"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("DELETE FROM Clientes WHERE Cliente=@Cliente", cn))
                {
                    cmd.Parameters.Add(new SqlParameter("@Cliente", SqlDbType.Int));
                    cmd.Parameters["@Cliente"].Value = Codigo;
                   
                    cn.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }
        catch (Exception)
        {
            throw;
        }
    }
}
