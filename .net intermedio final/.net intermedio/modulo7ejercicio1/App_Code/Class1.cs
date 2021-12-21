using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    public DataTable TraerPaises()
    {
        using (DataTable dt = new DataTable())
        { 
            using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["AdvWorks"].ConnectionString))
            {
                using (SqlDataAdapter da = new SqlDataAdapter("select CountryRegionCode, Name from Person.CountryRegion",cn))
                {
                    da.Fill(dt);
                }
            }
            return dt;
        }
    }

}
