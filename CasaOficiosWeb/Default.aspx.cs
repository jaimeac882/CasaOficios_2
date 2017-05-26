using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CasaOficios.Entities;
using CasaOficios.BusinessLogic;
using casaoficios.entities;
using System.IO;

namespace CasaOficiosWeb
{
    public partial class _Default : System.Web.UI.Page
    {


        private BLPrueba blprueba = new BLPrueba();


        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack) {
                return;
            }

            /*Llenando de Tipos de Averias*/
            List<BETipoAveria> be = new List<BETipoAveria>();
            BETipoAveria bepru = new BETipoAveria();

        

            be = blprueba.ListarPruebaXTipo(bepru);
            

            cboTipAveria.DataTextField = "DES_TIPO_AVERIA";
            cboTipAveria.DataValueField = "COD_TIPAVERIA";
            cboTipAveria.DataSource = be;

            cboTipAveria.DataBind();

            /*Llenando de Ubigeo Distritos */

            List<BEUbigeo> beubig = new List<BEUbigeo>();
            BEUbigeo beubigpru = new BEUbigeo();

            beubig = blprueba.ListarDistritosUbigeo(beubigpru);


            cboDistrito.DataTextField = "DES_UBIGEO";
            cboDistrito.DataValueField = "COD_UBIGEO";
            cboDistrito.DataSource = beubig;

            cboDistrito.DataBind();
        





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

        protected void btnEnviar_Click(object sender, EventArgs e)
        {

            BESolicitud_Trabajo be_sp = new BESolicitud_Trabajo();
            BESolicitud_Trabajo_Documento Be_ST = new BESolicitud_Trabajo_Documento();

            string RPTA = "";


            be_sp.COD_SOLICITUD = "";
            be_sp.COD_CLIENTE = "0000000001";//Esto
            be_sp.CORDENADAS_REGISTRO = "";
            be_sp.CORDENADAS_UBICACION = "";
            be_sp.COD_TIPO_AVERIA = cboTipAveria.SelectedValue.ToString();
            be_sp.COD_TIPO_PRIORIDAD = "PRI0000004";
            be_sp.NOMBRE = txtNombreApellidos.Text;
            be_sp.EMAIL = txtEmail.Text;
            be_sp.TELEFONO = txtCelular.Text;
            be_sp.DESCRIPCION = txtUrgencia.Text;
            be_sp.ESTADO = "1";
            be_sp.PRECIO_PRESUPUESTO = 0;
            be_sp.PRECIO_FINAL = 0;
            be_sp.COD_TIPO_REGISTRO = "TIR0000001";
            be_sp.FEC_REGISTRO = DateTime.Now;
            be_sp.COD_UBIGEO = cboDistrito.SelectedValue.ToString();
            be_sp.FEC_MODIFICACION = DateTime.Now;
            be_sp.COD_USUARIO_REGISTRO = "";


            if (FileUpload1.HasFile)
            {

                using (BinaryReader reader = new BinaryReader(FileUpload1.PostedFile.InputStream)) {
                    byte[] image = reader.ReadBytes(FileUpload1.PostedFile.ContentLength);


                    Be_ST.cod_solicitud = "00";
                    Be_ST.cod_solicitud_trabajo_documentos = "";
                    Be_ST.descripcion = FileUpload1.FileName;
                    Be_ST.ruta = "";
                    Be_ST.length_D = FileUpload1.PostedFile.ContentLength;
                    Be_ST.imagen = image;

                }

            }

          

            RPTA = blprueba.insertarSolicitudTrabajo(be_sp, Be_ST);

            MsgBox("Registro Ingresado", this.Page, this);

        }
        public void MsgBox(String ex, Page pg, Object obj){
        string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
        Type cstype = obj.GetType();
        ClientScriptManager cs = pg.ClientScript;
        cs.RegisterClientScriptBlock(cstype, s, s.ToString());
        }


    }


}