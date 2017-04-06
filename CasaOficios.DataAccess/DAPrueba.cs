using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using C.Data.Global;
using CasaOficios.DataAccess.Funciones;
using CasaOficios.Entities;
using System.Data.SqlClient;


namespace CasaOficios.DataAccess.Example
{
    public class DAPrueba
    {

        public Conexion _Connection = new Conexion();
        private SQL odaSQL = new SQL();
        private Populate oPopulate = new Populate();

        //public List<BEPrueba> listarPruebaXTipo(SqlTransaction Tr, BEPrueba _BEPrueba)
        //{
        //    SqlConnection Cn = new SqlConnection(); Cn = _Connection.ConexionPruebaSQL();
        //    List<BEPrueba> _LBEPrueba = new List<BEPrueba>();
        //    using (Cn)
        //    {
        //        Cn.Open();
        //        SqlDataReader drd = (odaSQL.ObtenerVariosRegistrosDataReader(Cn, Tr, "PA_PRUEBA_LISTARXTIPO", _BEPrueba, true));
        //        if (drd != null)
        //        {
        //            if (drd.HasRows)
        //            {
        //                while (drd.Read())
        //                {
        //                    _LBEPrueba.Add(oPopulate.setPrueba(drd));
        //                }
        //            }
        //        }
        //        return (_LBEPrueba);
        //    }
        //}

        //public BEPrueba BuscarPruebaXID(SqlTransaction Tr, BEPrueba _BEPrueba)
        //{
        //    SqlConnection Cn = new SqlConnection(); Cn = _Connection.ConexionPruebaSQL();
        //    BEPrueba _OBEPrueba = new BEPrueba();
        //    using (Cn)
        //    {
        //        Cn.Open();
        //        SqlDataReader drd = (odaSQL.ObtenerUnSoloRegistroDataReader(Cn, Tr, "PA_PRUEBA_BUSCARXID", _BEPrueba, true));
        //        if (drd != null)
        //        {
        //            if (drd.HasRows)
        //            {
        //                while (drd.Read())
        //                {
        //                    _OBEPrueba = oPopulate.setPrueba(drd);
        //                }
        //            }
        //        }
        //        return (_OBEPrueba);
        //    }
        //}

        public int insertarPrueba(SqlConnection Cn, SqlTransaction Tr, BEPrueba _BEPrueba)
        {
            return Convert.ToInt32(odaSQL.InsertaActualizaElimina(Cn, Tr, "SP_PRUEBA_INSERT", _BEPrueba, 0, "", true));
        }

        //public int modificarPrueba(SqlConnection Cn, SqlTransaction Tr, BEPrueba _BEPrueba)
        //{
        //    return Convert.ToInt32(odaSQL.InsertaActualizaElimina(Cn, Tr, "SP_PRUEBA_UPDATE", _BEPrueba, 1, "", true));
        //}

        //public int eliminarPrueba(SqlConnection Cn, SqlTransaction Tr, BEPrueba _BEPrueba)
        //{
        //    return Convert.ToInt32(odaSQL.InsertaActualizaElimina(Cn, Tr, "SP_PRUEBA_DELETE", _BEPrueba, 1, "", true));
        //}

    }
}
