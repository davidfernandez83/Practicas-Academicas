using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;


namespace DllAccesoDatos
{
    public class Class1
    {
        public DataTable TraerPaises()
        {
            using (DataTable dt = new DataTable())
            {
                using (SqlConnection cn = new SqlConnection())
                {
                    cn.ConnectionString = DllAccesoDatos.Properties.Settings.Default.AdvWorks2008CS;
                    //cn.Open();
                    using (SqlDataAdapter da = new SqlDataAdapter("select * from Person.CountryRegion", cn))
                    {
                        da.Fill(dt);
                    }
                }
                return dt;
            }
        }
    }
}
