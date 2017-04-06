using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CasaOficios.Entities;
using CasaOficios.DataAccess.Example;
using System.Data.SqlClient;
using C.Data.Global;

namespace CasaOficios.BusinessLogic
{
    public class BLPrueba
    {
        public Conexion _Connection = new Conexion();
        DAPrueba _DAPrueba = new DAPrueba();

        //public BEPrueba BuscarPruebaXID(BEPrueba _BEPrueba)
        //{
        //    return _DAPrueba.BuscarPruebaXID(null,_BEPrueba);
        //}

        //public List<BEPrueba> ListarPruebaXTipo(BEPrueba _BEPrueba)
        //{
        //    return _DAPrueba.listarPruebaXTipo(null, _BEPrueba);
        //}

        public int insertarPrueba(BEPrueba _BEPrueba)
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
                    P_out = _DAPrueba.insertarPrueba(Cn, Tr, _BEPrueba);

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

        //public int modificarPrueba(BEPrueba _BEPrueba)
        //{
        //    SqlConnection Cn = new SqlConnection(); Cn = _Connection.ConexionPruebaSQL();
        //    using (Cn)
        //    {
        //        SqlTransaction Tr = null;
        //        try
        //        {
        //            Cn.Open();
        //            Tr = Cn.BeginTransaction();
        //            int P_out;
        //            P_out = _DAPrueba.modificarPrueba(Cn, Tr, _BEPrueba);

        //            Tr.Commit();
        //            return P_out;
        //        }
        //        catch (Exception ex)
        //        {
        //            Tr.Rollback();
        //            throw new Exception(ex.Message);
        //        }
        //        finally
        //        {
        //            //if( (Cn.State == ConnectionState.Open) ) Cn.Close();
        //        }
        //    }
        //}

        //public int eliminarPrueba(BEPrueba _BEPrueba)
        //{
        //    SqlConnection Cn = new SqlConnection(); Cn = _Connection.ConexionPruebaSQL();
        //    using (Cn)
        //    {
        //        SqlTransaction Tr = null;
        //        try
        //        {
        //            Cn.Open();
        //            Tr = Cn.BeginTransaction();
        //            int P_out;
        //            P_out = _DAPrueba.eliminarPrueba(Cn, Tr, _BEPrueba);

        //            Tr.Commit();
        //            return P_out;
        //        }
        //        catch (Exception ex)
        //        {
        //            Tr.Rollback();
        //            throw new Exception(ex.Message);
        //        }
        //        finally
        //        {
        //            //if( (Cn.State == ConnectionState.Open) ) Cn.Close();
        //        }
        //    }
        //}

    }
}
