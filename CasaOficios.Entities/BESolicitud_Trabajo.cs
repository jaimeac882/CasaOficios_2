using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;

namespace CasaOficios.Entities
{
 
    public class BESolicitud_Trabajo
    {
        
        public int idTipoPrueba { get; set; }
        public String descripcionTipo { get; set; }


     public String COD_SOLICITUD { get; set; }
    public String COD_CLIENTE { get; set; }
public String CORDENADAS_REGISTRO { get; set; }
public String CORDENADAS_UBICACION { get; set; }
public String COD_TIPO_AVERIA { get; set; }
public String COD_TIPO_PRIORIDAD { get; set; }
public String NOMBRE { get; set; }
public String EMAIL { get; set; }
public String TELEFONO { get; set; }
public String DESCRIPCION { get; set; }
public String ESTADO { get; set; }
public decimal PRECIO_PRESUPUESTO { get; set; }
public decimal PRECIO_FINAL { get; set; }
public String COD_TIPO_REGISTRO { get; set; }
public DateTime FEC_REGISTRO { get; set; }
public DateTime FEC_MODIFICACION { get; set; }


        public String COD_USUARIO_REGISTRO { get; set; }

        public String COD_UBIGEO { get; set; }



    }
}
