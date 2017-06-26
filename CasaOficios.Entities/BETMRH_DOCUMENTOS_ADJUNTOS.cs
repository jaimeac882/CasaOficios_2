using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;


namespace CasaOficios.Entities
{

    public class BETMRH_DOCUMENTOS_ADJUNTOS{ 

        //public int idPrueba { get; set ;}
        //public String descripcion { get; set; }

        //private BETipoPrueba _idtipoprueba = new BETipoPrueba();

        //public BETipoPrueba idtipoprueba {
        //    get { return _idtipoprueba; }
        //    set { _idtipoprueba = value; }
        //}


        public String COD_TMRH_DOCUMENTOS { get; set; }
        public String COD_TMRH { get; set; }
        public String COD_TIPO_ADJUNTO_TMRH { get; set; }
        public String DESCRIPCION { get; set; }

        public Byte IMAGEN { get; set; }
        public String RUTA_FOTO { get; set; }








        

    }
}
