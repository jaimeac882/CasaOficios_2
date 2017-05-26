using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;

namespace CasaOficios.Entities
{

    public class BEOficios{

        //public int idPrueba { get; set ;}
        //public String descripcion { get; set; }

        //private BETipoPrueba _idtipoprueba = new BETipoPrueba();

        //public BETipoPrueba idtipoprueba {
        //    get { return _idtipoprueba; }
        //    set { _idtipoprueba = value; }
        //}


        public String COD_OFICIO { get; set; }
        public String DES_OFICIO { get; set; }
        public DateTime FEC_REGISTRO { get; set; }
        public DateTime FEC_MODIFICACION { get; set; }
        public String COD_USUARIO_REGISTRO { get; set; }



        //private BETipoPrueba _idtipoprueba = new BETipoPrueba();
        //public BEPrueba 
        //public BETipoPrueba idtipoprueba {
        //    get { return _idtipoprueba; }
        //    set { _idtipoprueba = value; }
        //}

    }
}
