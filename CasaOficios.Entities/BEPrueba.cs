using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;

namespace CasaOficios.Entities
{

    public class BEPrueba{
     
        public int idPrueba { get; set ;}
        public String descripcion { get; set; }
        private BETipoPrueba _idtipoprueba = new BETipoPrueba();
       
        public BETipoPrueba idtipoprueba {
            get { return _idtipoprueba; }
            set { _idtipoprueba = value; }
        }

    }
}
