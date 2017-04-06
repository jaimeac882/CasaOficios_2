using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CasaOficios.Entities
{
    public class BETMRH
    {
        public string _COD_TMRH { get; set ;}
        public string _NOM_TMRH { get; set ;}
        public string _APE_PATERNO { get; set ;}
        public string _APE_MATERNO  { get; set ;}
        public string _EMAIL { get; set ;}
        public string _COD_TIPO_DOCUMENTO { get; set ;}
        public string _NUM_DOCUMENTO { get; set ;}
        public string _COD_TIPO_GENERO { get; set ;}
        public string _COD_UBIGEO { get; set ;}
        public string _DIRECCION { get; set ;}
        public DateTime _FEC_NACIMIENTO { get; set; }
        public string _COD_OFICIO_PRINCIPAL { get; set ;}
        public Int32 _TIEMPO_EXPERIENCIA_MESES { get; set; }
        public DateTime _FEC_REGISTRO { get; set; }
        public DateTime _FEC_MODIFICACION { get; set; }
        public string _COD_USUARIO_REGISTRO { get; set; }

        public BETMRH()
        { 
			_COD_TMRH = "";
			_NOM_TMRH = "";
            _APE_PATERNO = "";
            _APE_MATERNO = "";
			_EMAIL = "";
			_COD_TIPO_DOCUMENTO = "";
			_NUM_DOCUMENTO = "";
			_COD_TIPO_GENERO = "";
			_COD_UBIGEO = "";
			_DIRECCION = "";
            _FEC_NACIMIENTO = Convert.ToDateTime("#1/01/1900 12:00:00 AM#");
			_COD_OFICIO_PRINCIPAL = "";
            _TIEMPO_EXPERIENCIA_MESES = -1;
            _FEC_REGISTRO = Convert.ToDateTime("#1/01/1900 12:00:00 AM#");
			_FEC_MODIFICACION = Convert.ToDateTime("#1/01/1900 12:00:00 AM#");
            _COD_USUARIO_REGISTRO = "";
        }
    }
}
