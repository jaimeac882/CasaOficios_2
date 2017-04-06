using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
namespace C.Data.Global
{
    public class Conexion
    {

        ConnectionStringSettingsCollection connectionStrings = ConfigurationManager.ConnectionStrings;

        public SqlConnection ConexionBDPrueba()
        {
            SqlConnection cn = new SqlConnection(connectionStrings["cnWebPrueba"].ConnectionString);
            return cn;
        }

        public SqlConnection ConexionPrisma()
        {
            SqlConnection cn = new SqlConnection(connectionStrings["cnPrisma"].ConnectionString);
            return cn;
        }

    }
}
