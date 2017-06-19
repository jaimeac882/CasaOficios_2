using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CasaOficios.Entities;
using CasaOficios.DataAccess.Example;
using System.Data.SqlClient;
using C.Data.Global;
using casaoficios.entities;

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

        public List<BETipoAveria> ListarPruebaXTipo(BETipoAveria _BEPrueba)
        {
            return _DAPrueba.listarpruebaxtipo(null, _BEPrueba);
        }


        public List<BEOficios> listarOficios(BEOficios _BEPrueba)
        {
            return _DAPrueba.listarOficios(null, _BEPrueba);
        }

        public List<BEMaestro_Tipo> listarMaestroTipo(BEMaestro_Tipo _BEPrueba)
        {
            return _DAPrueba.listarMaestroTipo(null, _BEPrueba);
        }



        public int insertTMRH(BETMRH _BETMRH, List<BETMRH_Contacto> _BETMRH_Contacto, List<BETMRH_DOCUMENTOS_ADJUNTOS> _BETMRH_DOCUMENTOS_ADJUNTOS, List<BETMRH_Oficios_Extra> _BETMRH_Oficios_Extra)
        {

            SqlConnection Cn = new SqlConnection(); Cn = _Connection.ConexionBDPrueba();
            using (Cn)
            {
                SqlTransaction Tr = null;
                try
                {
                    Cn.Open();
                    Tr = Cn.BeginTransaction();
                    string P_out = "";
                    int p_out_tmrh_con = 0;
                    P_out = _DAPrueba.insertTHMR(Cn, Tr, _BETMRH);



                    foreach (BETMRH_Contacto itemB in _BETMRH_Contacto.ToArray())
                    {
                        itemB.COD_TMRH = P_out;
                        p_out_tmrh_con = _DAPrueba.insertTHMR_CONTACTO(Cn, Tr, itemB);
                    }



                    //Nuevo para en caso de OFICIO EXTRA

                    int p_out_tmrh_ofi = 0;

                    foreach (BETMRH_Oficios_Extra itemC in _BETMRH_Oficios_Extra.ToArray())
                    {
                        itemC.COD_TMRH = "";
                        p_out_tmrh_ofi = _DAPrueba.insertTHMR_OFICIO(Cn, Tr, itemC);
                    }

                    //extendí con un "AND" para cuando no cumpla respecto a oficios
                    if (P_out != "" && p_out_tmrh_ofi < 0 && p_out_tmrh_con < 0)
                    {

                        Tr.Rollback();
                        return 0;

                    }
                    Tr.Commit();

                    return 1;


                }
                catch (Exception ex)
                {
                    Tr.Rollback();
                    throw new Exception(ex.Message);
                    return 0;
                }
                finally
                {
                    //if( (Cn.State == ConnectionState.Open) ) Cn.Close();
                }
            }





        }



        public List<BEUbigeo> ListarDistritosUbigeo(BEUbigeo _BEubigeo)
        {
            return _DAPrueba.listarDistritosUbigeo(null, _BEubigeo);
        }


        public int insertarPrueba(BETipoAveria _BEPrueba)
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


        public String insertarSolicitudTrabajo(BESolicitud_Trabajo _BEPrueba,BESolicitud_Trabajo_Documento _Be_ST)
        {
            SqlConnection Cn = new SqlConnection(); Cn = _Connection.ConexionBDPrueba();
            using (Cn)
            {
                SqlTransaction Tr = null;
                try
                {
                    Cn.Open();
                    Tr = Cn.BeginTransaction();
                    String P_out;
                    P_out = Convert.ToString( _DAPrueba.insertarSolicitudTrabajo(Cn, Tr, _BEPrueba));

                    if (_Be_ST.cod_solicitud=="00") {
                      _Be_ST.cod_solicitud = P_out;
                    int p_;
                    p_ = Convert.ToInt16( _DAPrueba.insertarSolicitudTrabajo_Documento(Cn, Tr, _Be_ST));
                    }
                

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
