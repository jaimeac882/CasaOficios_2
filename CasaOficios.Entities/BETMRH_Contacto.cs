﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;

namespace CasaOficios.Entities
{

    public class BETMRH_Contacto { 

        //public int idPrueba { get; set ;}
        //public String descripcion { get; set; }

        //private BETipoPrueba _idtipoprueba = new BETipoPrueba();

        //public BETipoPrueba idtipoprueba {
        //    get { return _idtipoprueba; }
        //    set { _idtipoprueba = value; }
        //}


        public String COD_TMRH_CONTACTO { get; set; }
        public String COD_TMRH { get; set; }
        public String COD_TIPO_OPERADORA { get; set; }
        public String TELEFONO { get; set; }


    }
}
