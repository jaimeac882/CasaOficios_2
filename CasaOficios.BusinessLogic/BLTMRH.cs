using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CasaOficios.Entities;
using CasaOficios.DataAccess;
using System.Data.SqlClient;
using C.Data.Global;

namespace CasaOficios.BusinessLogic
{
    public class BLTMRH
    {
        public Conexion _Connection = new Conexion();
        DATMRH _DATMRH = new DATMRH();

        public int registrarTMRH(BETMRH _BETMRH)
        {
            SqlConnection Cn = new SqlConnection(); Cn = _Connection.ConexionBDPrueba();
            using (Cn)
            {
                SqlTransaction Tr = null;
                try
                {
                    Cn.Open();
                    Tr = Cn.BeginTransaction();
                    int P_out;
                    P_out = _DATMRH.registrarTMRH(Cn, Tr, _BETMRH);

                    Tr.Commit();
                    return P_out;
                }
                catch (Exception ex)
                {
                    Tr.Rollback();
                    throw new Exception(ex.Message);
                }
                finally
                {
                    //if( (Cn.State == ConnectionState.Open) ) Cn.Close();
                }
            }
        }


    }
}
