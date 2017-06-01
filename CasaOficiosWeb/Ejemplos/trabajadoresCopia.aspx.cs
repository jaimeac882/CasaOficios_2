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


    public static class MessageBoxx
    {
        public static void Ver(this Page Page, String Message)
        {
            Page.ClientScript.RegisterStartupScript(
               Page.GetType(),
               "MessageBox",
               "<script language='javascript'>alert('" + Message + "');</script>"
            );
        }
    }

    public partial class trabajadoresCopia : System.Web.UI.Page
    {

        BLPrueba blprueba = new BLPrueba();


        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            BETMRH betmrh = new BETMRH();
            List<BETMRH_Contacto> _BETMRH_Contacto = new List<BETMRH_Contacto>();
            List<BETMRH_DOCUMENTOS_ADJUNTOS> _BETMRH_DOCUMENTOS_ADJUNTOS = new List<BETMRH_DOCUMENTOS_ADJUNTOS>();
            List<BETMRH_Oficios_Extra> _BETMRH_Oficios_Extra = new List<BETMRH_Oficios_Extra>();



            betmrh.COD_TMRH = "";
            betmrh.NOM_TMRH = TxtNombres.Text;
            betmrh.APE_PATERNO = txtApeMa.Text;
            betmrh.APE_MATERNO = txtApePa.Text;
            betmrh.EMAIL = txtEmail.Text;
            betmrh.COD_TIPO_DOCUMENTO = CboTipoDocumento.SelectedValue.ToString();
            betmrh.NUM_DOCUMENTO = txtNroDocumento.Text;
            betmrh.COD_TIPO_GENERO = cboTipoGenero.SelectedValue.ToString();
            betmrh.COD_UBIGEO = cboDistrito.SelectedValue.ToString();
            betmrh.DIRECCION = txtDireccion.Text;
            betmrh.FEC_NACIMIENTO = Convert.ToDateTime(txtFecNaci.Text);
            betmrh.COD_OFICIO_PRINCIPAL = cboOficiDomin.SelectedValue.ToString();
            betmrh.COD_TIEMPO_EXPERIENCIA = cboPerioDomin.SelectedValue.ToString();
            betmrh.FEC_REGISTRO = DateTime.Now;
            betmrh.FEC_MODIFICACION = DateTime.Now;
            betmrh.COD_USUARIO_REGISTRO = "0000000002";


            betmrh.NUM_CELU = txtTelfPrinci.Text;
            betmrh.COD_TIPO_OPERADORA = cboCompaniaPrincipal.SelectedValue.ToString();


            int d = blprueba.insertTMRH(betmrh, _BETMRH_Contacto, _BETMRH_DOCUMENTOS_ADJUNTOS, _BETMRH_Oficios_Extra);
            if (d == 0)
            {
                MessageBoxx.Ver(this.Page, "Error");
            }
            else {
                MessageBoxx.Ver(this.Page, "Registro existoso");
            }


            //foreach (var s in lstTelefonoAgregados.ToArray())
            //{

            //    s.
            //    //MessageBox.Show(s);
            //    //do stuff with (s);
            //    //listBox1.Items.Remove(s);
            //}

            //foreach (var ListBox in lstTelefonoAgregados.Items)
            //{

            //    ListBox.GetType.te



            //    MessageBox.Show(this.Page, "Datos");


            //}


            //string v = lstTelefonoAgregados.Items[1].Text.ToString();
            //MessageBox.Show(this.Page, "Datos === " + v);


            for (int i = 0; i < lstTelefonoAgregados.Items.Count - 1; i++)
            {
                string info = lstTelefonoAgregados.Items[i].ToString();
                //string[] Emisor = info.Split(Separador);

                ////if (Emisor[0].Trim() == "1")
                //if (Emisor[0].ToString() == info)
                //{
                //    List1.Items.RemoveAt(i);
                //    i--;
                //    break;
                //}
                //if (Emisor[1].Trim() == "")
                //{

                //}
                
               
                 



            }

            for (int i = 0; i < ListBox1.Items.Count - 1; i++)
            {
                string info = lstTelefonoAgregados.Items[i].ToString();
                //string[] Emisor = info.Split(Separador);

                ////if (Emisor[0].Trim() == "1")
                //if (Emisor[0].ToString() == info)
                //{
                //    List1.Items.RemoveAt(i);
                //    i--;
                //    break;
                //}
                //if (Emisor[1].Trim() == "")
                //{

                //}






            }

        }



        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack)
            {

                TabName.Value = Request.Form[TabName.UniqueID];

                for (int i = 0; i < lstTelefonoAgregados.Items.Count - 1; i++)
                {
                    string info = lstTelefonoAgregados.Items[i].ToString();
                    //string[] Emisor = info.Split(Separador);

                    ////if (Emisor[0].Trim() == "1")
                    //if (Emisor[0].ToString() == info)
                    //{
                    //    List1.Items.RemoveAt(i);
                    //    i--;
                    //    break;
                    //}
                    //if (Emisor[1].Trim() == "")
                    //{

                    //}






                }

                return;
            }


            /*Llenando de Tipos de Tipos de Documentos*/
            List<BEMaestro_Tipo> be = new List<BEMaestro_Tipo>();
            BEMaestro_Tipo bepru = new BEMaestro_Tipo();
            bepru.COD_TIPO_MAESTRO = "TID";



            be = blprueba.listarMaestroTipo(bepru);


            CboTipoDocumento.DataTextField = "DES_TIPO_MAESTRO";
            CboTipoDocumento.DataValueField = "COD_TIPO_MAESTRO";
            CboTipoDocumento.DataSource = be;

            CboTipoDocumento.DataBind();


            /*Llenando tipos de operadoras*/
            be.Clear();
            bepru.COD_TIPO_MAESTRO = "TIO";

            be = blprueba.listarMaestroTipo(bepru);


            cboProveedorTelf.DataTextField = "DES_TIPO_MAESTRO";
            cboProveedorTelf.DataValueField = "COD_TIPO_MAESTRO";
            cboProveedorTelf.DataSource = be;

            cboProveedorTelf.DataBind();



            /*Para compania principal*/
            cboCompaniaPrincipal.DataTextField = "DES_TIPO_MAESTRO";
            cboCompaniaPrincipal.DataValueField = "COD_TIPO_MAESTRO";
            cboCompaniaPrincipal.DataSource = be;

            cboCompaniaPrincipal.DataBind();



            /*Tipo Genero*/
            be.Clear();
            bepru.COD_TIPO_MAESTRO = "GEN";
            be = blprueba.listarMaestroTipo(bepru);


            cboTipoGenero.DataTextField = "DES_TIPO_MAESTRO";
            cboTipoGenero.DataValueField = "COD_TIPO_MAESTRO";
            cboTipoGenero.DataSource = be;

            cboTipoGenero.DataBind();



            /*Llenando de Tipos de uBIGEO*/
            List<BEUbigeo> lstbeubi = new List<BEUbigeo>();
            BEUbigeo beubi = new BEUbigeo();




            lstbeubi = blprueba.ListarDistritosUbigeo(beubi);


            cboDistrito.DataTextField = "DES_UBIGEO";
            cboDistrito.DataValueField = "COD_UBIGEO";
            cboDistrito.DataSource = lstbeubi;

            cboDistrito.DataBind();


            /*Llenando de Tipos de Oficios*/
            List<BEOficios> lstbeofi = new List<BEOficios>();
            BEOficios beofi = new BEOficios();




            lstbeofi = blprueba.listarOficios(beofi);


            cboOficiosOtros.DataTextField = "DES_OFICIO";
            cboOficiosOtros.DataValueField = "COD_OFICIO";
            cboOficiosOtros.DataSource = lstbeofi;

            cboOficiosOtros.DataBind();


            cboOficiDomin.DataTextField = "DES_OFICIO";
            cboOficiDomin.DataValueField = "COD_OFICIO";
            cboOficiDomin.DataSource = lstbeofi;

            cboOficiDomin.DataBind();


            /*Llenando de Tipos de TiempoExp*/
            be.Clear();
            bepru.COD_TIPO_MAESTRO = "TEX";

            be = blprueba.listarMaestroTipo(bepru);


            cboPeriodoExpeOtros.DataTextField = "DES_TIPO_MAESTRO";
            cboPeriodoExpeOtros.DataValueField = "COD_TIPO_MAESTRO";
            cboPeriodoExpeOtros.DataSource = be;

            cboPeriodoExpeOtros.DataBind();


            cboPerioDomin.DataTextField = "DES_TIPO_MAESTRO";
            cboPerioDomin.DataValueField = "COD_TIPO_MAESTRO";
            cboPerioDomin.DataSource = be;

            cboPerioDomin.DataBind();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ListBox1.Items.Add("sss");
        }
    }
}