using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;

namespace CasaOficios.Entities
{

    public class BEUbigeo{
     
        public String COD_UBIGEO { get; set; }
        public String COD_PAIS { get; set; }
        public String COD_DEPARTAMENTO { get; set; }
        public String COD_PROVINCIA { get; set; }


        public String COD_DISTRITO { get; set; }
        public String DES_UBIGEO { get; set; }
        public DateTime FEC_REGISTRO { get; set; }
        public DateTime FEC_MOD { get; set; }

        public String USU_REGISTRO { get; set; }






    }
}
