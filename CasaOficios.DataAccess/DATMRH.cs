using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using C.Data.Global;
using CasaOficios.DataAccess.Funciones;
using CasaOficios.Entities;
using System.Data.SqlClient;

namespace CasaOficios.DataAccess
{
    public class DATMRH
    {
        public Conexion _Connection = new Conexion();
        private SQL odaSQL = new SQL();
        private Populate oPopulate = new Populate();

        public int registrarTMRH(SqlConnection Cn, SqlTransaction Tr, BETMRH _BETMRH)
        {
            return Convert.ToInt32(odaSQL.InsertaActualizaElimina(Cn, Tr, "SP_TMRH_INSERT", _BETMRH, 0, "", true));
        }

    }
}
