using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;

namespace CasaOficios.Entities
{

    public class BETMRH_Oficios_Extra
    { 



        public String COD_TMRH_OFIC_EXTRA { get; set; }
        public String COD_TMRH { get; set; }
        public String COD_OFICIO { get; set; }
        public DateTime FEC_REGISTRO { get; set; }

        public DateTime FEC_MODIFICACION { get; set; }

        public String COD_USUARIO_REGISTRO { get; set; }
        public String COD_TIEMPO_EXPERIENCIA { get; set; }




    }
}
