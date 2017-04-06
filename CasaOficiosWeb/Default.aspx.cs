using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CasaOficios.Entities;
using CasaOficios.BusinessLogic;

namespace CasaOficiosWeb
{
    public partial class _Default : System.Web.UI.Page
    {


        private CasaOficios.BusinessLogic.BLTMRH oBLTMRH;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CasaOficios.Entities.BETMRH _BETMRH;
            _BETMRH = new CasaOficios.Entities.BETMRH();

            //oBEPrueba.idPrueba = 5;
            //oBEPrueba.descripcion = "prueba 5";
            //oBEPrueba.idtipoprueba.idTipoPrueba = 1;

            //oBLPrueba = new CasaOficios.BusinessLogic.BLPrueba();
            //oBLPrueba.insertarPrueba(oBEPrueba);

        }
    }
}