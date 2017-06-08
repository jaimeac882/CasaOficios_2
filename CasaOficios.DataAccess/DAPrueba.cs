using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using C.Data.Global;
using CasaOficios.DataAccess.Funciones;
using CasaOficios.Entities;
using System.Data.SqlClient;
using casaoficios.entities;

namespace CasaOficios.DataAccess.Example
{
    public class DAPrueba
    {

        public Conexion _Connection = new Conexion();
        private SQL odaSQL = new SQL();
        private Populate oPopulate = new Populate();

        public List<BETipoAveria> listarpruebaxtipo(SqlTransaction tr, BETipoAveria _beprueba)
        {
            SqlConnection cn = new SqlConnection(); cn = _Connection.ConexionBDPrueba();
            List<BETipoAveria> _lbeprueba = new List<BETipoAveria>();
            using (cn)
            {
                cn.Open();
                SqlDataReader drd = (odaSQL.ObtenerVariosRegistrosDataReader(cn, tr, "pa_prueba_listarxtipo", _beprueba, true));
                if (drd != null)
                {
                    if (drd.HasRows)
                    {
                        while (drd.Read())
                        {
                            _lbeprueba.Add(oPopulate.setTipoAveria(drd));
                        }
                    }
                }
                return (_lbeprueba);
            }
        }


        public List<BEOficios> listarOficios(SqlTransaction tr, BEOficios _beprueba)
        {
            SqlConnection cn = new SqlConnection(); cn = _Connection.ConexionBDPrueba();
            List<BEOficios> _lbeprueba = new List<BEOficios>();
            using (cn)
            {
                cn.Open();
                SqlDataReader drd = (odaSQL.ObtenerVariosRegistrosDataReader(cn, tr, "pr_get_oficios", _beprueba, true));
                if (drd != null)
                {
                    if (drd.HasRows)
                    {
                        while (drd.Read())
                        {
                            _lbeprueba.Add(oPopulate.setOficios(drd));
                        }
                    }
                }
                return (_lbeprueba);
            }
        }



        public List<BEUbigeo> listarDistritosUbigeo(SqlTransaction tr, BEUbigeo _beubigeo)
        {
            SqlConnection cn = new SqlConnection(); cn = _Connection.ConexionBDPrueba();
            List<BEUbigeo> _lbeubigeo = new List<BEUbigeo>();
            using (cn)
            {
                cn.Open();
                SqlDataReader drd = (odaSQL.ObtenerVariosRegistrosDataReader(cn, tr, "pa_get_distritos", _beubigeo, true));
                if (drd != null)
                {
                    if (drd.HasRows)
                    {
                        while (drd.Read())
                        {
                            _lbeubigeo.Add(oPopulate.setUbigeo(drd));
                        }
                    }
                }
                return (_lbeubigeo);
            }
        }

        public List<BEMaestro_Tipo> listarMaestroTipo(SqlTransaction tr, BEMaestro_Tipo _beMaestro_Tipo)
        {
            SqlConnection cn = new SqlConnection(); cn = _Connection.ConexionBDPrueba();
            List<BEMaestro_Tipo> _lbeMaestro_Tipo = new List<BEMaestro_Tipo>();
            using (cn)
            {
                cn.Open();
                SqlDataReader drd = (odaSQL.ObtenerVariosRegistrosDataReader(cn, tr, "pr_get_listatipos", _beMaestro_Tipo, true));
                if (drd != null)
                {
                    if (drd.HasRows)
                    {
                        while (drd.Read())
                        {
                            _lbeMaestro_Tipo.Add(oPopulate.setMaestro_Tipo(drd));
                        }
                    }
                }
                return (_lbeMaestro_Tipo);
            }
        }

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

        public int insertarPrueba(SqlConnection Cn, SqlTransaction Tr, BETipoAveria _BEPrueba)
        {
            return Convert.ToInt32(odaSQL.InsertaActualizaElimina(Cn, Tr, "SP_PRUEBA_INSERT", _BEPrueba, 0, "", true));
        }

        public string insertTHMR(SqlConnection Cn, SqlTransaction Tr,BETMRH _BETMRH)
        {
            return Convert.ToString(odaSQL.insertTHMR(Cn, Tr, "PA_TMRH_INS01", _BETMRH, 1, "COD_TMRH", true));
        }

        public int insertTHMR_CONTACTO(SqlConnection Cn, SqlTransaction Tr, BETMRH_Contacto _BETMRH)
        {
            return Convert.ToInt32(odaSQL.insertTHMR_CONTACTO(Cn, Tr, "PA_TMRH_CONTACTO_INS01", _BETMRH, 0, "", true));
        }


        //Cambios pora homologar en PRUEBA
        public int insertTHMR_OFICIO(SqlConnection Cn, SqlTransaction Tr, BETMRH_Oficios_Extra _BETMRH)
        {
            return Convert.ToInt32(odaSQL.insertTHMR_OFICIO(Cn, Tr, "PA_TMRH_OFICIOS_EXTRA_INS01", _BETMRH, 0, "", true));
        }



        public String insertarSolicitudTrabajo(SqlConnection Cn, SqlTransaction Tr, BESolicitud_Trabajo _BEPrueba)
        {
            return Convert.ToString(odaSQL.insertarSolicitudTrabajo(Cn, Tr, "PA_SOLICITUD_TRABAJO_INS01", _BEPrueba, 1, "COD_SOLICITUD", true));
        }

        public int insertarSolicitudTrabajo_Documento(SqlConnection Cn, SqlTransaction Tr,BESolicitud_Trabajo_Documento _BESTD)
        {
            return Convert.ToInt16(odaSQL.insertarSolicitudTrabajo_DOC(Cn, Tr, "PA_SOLICITUD_TRABAJO_DOCUMENTO_INS01", _BESTD, 0, "", true));
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
