﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CasaOficios.Entities;
using CasaOficios.BusinessLogic;
using System.IO;


namespace CasaOficiosWeb
{
    public static class MessageBox
    {
        public static void Show(this Page Page, String Message)
        {
            Page.ClientScript.RegisterStartupScript(
               Page.GetType(),
               "MessageBox",
               "<script language='javascript'>alert('" + Message + "');</script>"
            );
        }
    }



    public partial class trabajadores : System.Web.UI.Page
    {

  

        BLPrueba blprueba = new BLPrueba();



        // RaiseCallback Function
        public void RaiseCallbackEvent(String eventArgument)
        {
            // Run some code before sending the callbackresult
        }
        // GetCallback result function
        public string GetCallbackResult()
        {
            // get from databse a result or something 
            // and supply the control with new items
            return "item1-Text,Item1-val";
        }

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

            BETMRH_Contacto betmrhc = new BETMRH_Contacto();
            BETMRH_Oficios_Extra betmrhoe = new BETMRH_Oficios_Extra();
            BETMRH_DOCUMENTOS_ADJUNTOS betmrhoad = new BETMRH_DOCUMENTOS_ADJUNTOS();

            if (Request.Form[lstTelefonoAgregados.UniqueID] != null)
            {
                string[] items = Request.Form[lstTelefonoAgregados.UniqueID].Split(new char[] { ',' });

                for (int i = 0; i < items.Length; i++)
                {
                    betmrhc = new BETMRH_Contacto();
                    string[] values;
                    values = (items[i]).ToString().Split('-');
                    betmrhc.COD_TIPO_OPERADORA = values[0];
                    betmrhc.TELEFONO = values[1];
                    betmrhc.COD_TMRH = "";
                    betmrhc.COD_TMRH_CONTACTO = "";

                    _BETMRH_Contacto.Add(betmrhc);

                }
                //TextBox1.Text += "the ListBox control contains " + items.Length.ToString() + " items.";
            }




            /*Obtenemos la lista lstTelefonosAgregados*/

            if (Request.Form[lstOficioExperienciAgregados.UniqueID] != null)
            {
                string[] items2 = Request.Form[lstOficioExperienciAgregados.UniqueID].Split(new char[] { ',' });

                for (int i = 0; i < items2.Length; i++)
                {
                    betmrhoe = new BETMRH_Oficios_Extra();
                    string[] values2;

                    values2 = (items2[i]).ToString().Split('-');
                    betmrhoe.COD_OFICIO = values2[0];
                    betmrhoe.COD_TIEMPO_EXPERIENCIA = values2[1];
                    betmrhoe.FEC_REGISTRO = DateTime.Now;
                    betmrhoe.FEC_MODIFICACION = DateTime.Now;
                    betmrhoe.COD_TMRH = "";
                    betmrhoe.COD_USUARIO_REGISTRO = "0000000002";
                    _BETMRH_Oficios_Extra.Add(betmrhoe);

                }
                //TextBox1.Text += "the ListBox control contains " + items.Length.ToString() + " items.";
            }



            //inicio: nuevo code filre up

            

            //fin: nuevo code file up

            if (fileDocumentoIdentidad.HasFile)
            {


                betmrhoad.COD_TIPO_ADJUNTO_TMRH = "ADJ0000002";
                betmrhoad.COD_TMRH= "";
                betmrhoad.RUTA_FOTO= fileDocumentoIdentidad.FileName;

                _BETMRH_DOCUMENTOS_ADJUNTOS.Add(betmrhoad);

            }


            if (fileAntecendentesPoliciales.HasFile)
            {


                betmrhoad.COD_TIPO_ADJUNTO_TMRH = "ADJ0000006";
                betmrhoad.COD_TMRH = "";
                betmrhoad.RUTA_FOTO = fileAntecendentesPoliciales.FileName;

                _BETMRH_DOCUMENTOS_ADJUNTOS.Add(betmrhoad);

            }


            if (fileAntecedentePenales.HasFile)
            {


                betmrhoad.COD_TIPO_ADJUNTO_TMRH = "ADJ0000005";
                betmrhoad.COD_TMRH = "";
                betmrhoad.RUTA_FOTO = fileAntecedentePenales.FileName;

                _BETMRH_DOCUMENTOS_ADJUNTOS.Add(betmrhoad);

            }




            if (fileReciboResidencia.HasFile)
            {


                betmrhoad.COD_TIPO_ADJUNTO_TMRH = "ADJ0000004";
                betmrhoad.COD_TMRH = "";
                betmrhoad.RUTA_FOTO = fileReciboResidencia.FileName;

                _BETMRH_DOCUMENTOS_ADJUNTOS.Add(betmrhoad);

            }








            int d = blprueba.insertTMRH(betmrh, _BETMRH_Contacto, _BETMRH_DOCUMENTOS_ADJUNTOS, _BETMRH_Oficios_Extra);
            if (d == 0)
            {

                ClientScript.RegisterStartupScript(this.GetType(), "alert", "ShowPopup();", true);
                this.lblMessage.Text = "Se encontró un error en la inserción de datos. Por favor, revisar cuidadosamente.";
                // MessageBox.Show(this.Page, "Error");
            }
            else
            {


                ClientScript.RegisterStartupScript(this.GetType(), "alert", "ShowPopup();", true);
                this.lblMessage.Text = "Se registró exitosamente. Nuestro equipo se contactará con Ud.";
                //MessageBox.Show(this.Page, "Registro existoso");
            }




        }


        private Byte[] imagen_a_bytes(System.Drawing.Image foto) 
        {
            if (!(foto==null)) {

                MemoryStream codi = new MemoryStream();
                foto.Save(codi, System.Drawing.Imaging.ImageFormat.Png);
                return codi.GetBuffer();
            }else {
            
                return null;
            }


        }

        private System.Drawing.Image bytes_a_imagen(Byte[] foto)
        {
            if (!(foto == null))
            {

                MemoryStream codi = new MemoryStream(foto);
                System.Drawing.Image resultado = System.Drawing.Image.FromStream(codi);
                return resultado;
            }
            else
            {

                return null;
            }

        }

        private Boolean validarExtension(System.Web.UI.WebControls.FileUpload FileUpload1)
        {

            Boolean fileOK = false;
            String path = Server.MapPath("~/UploadedImages/");
            if (FileUpload1.HasFile)
            {
                String fileExtension =
                System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
                String[] allowedExtensions =
                    {".gif", ".png", ".jpeg", ".jpg"};
                for (int i = 0; i < allowedExtensions.Length; i++)
                {
                    if (fileExtension == allowedExtensions[i])
                    {
                        //return true;
                    }
                }
            }

            if (fileOK)
            {
                try
                {
                    FileUpload1.PostedFile.SaveAs(path + FileUpload1.FileName);
                    //Label1.Text = "File uploaded!";
                    return true;
                }
                catch (Exception ex)
                {
                    //Label1.Text = "File could not be uploaded.";
                    return false;
                }
            }
            else
            {
                //Label1.Text = "Cannot accept files of this type.";
                return false;
            }


        }

        protected void Page_Load(object sender, EventArgs e)
        {
            /*Para mantener el listbox*/
            Page.ClientScript.RegisterOnSubmitStatement(GetType(), "beforeSubmit",
                "selectAllElements('" + lstTelefonoAgregados.ClientID + "','" + lstOficioExperienciAgregados.ClientID + "');");

         //   Page.ClientScript.RegisterOnSubmitStatement(GetType(), "beforeSubmit",
         //"selectAllElements('" + lstOficioExperienciAgregados.ClientID + "');");



            if (Page.IsPostBack)
            {

                TabName.Value = Request.Form[TabName.UniqueID];

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

        public void MsgBoxAlterno(String ex, Page pg, Object obj)
        {
            string s = "<script>$('#myModal').modal('show');</script>";
            Type cstype = obj.GetType();
            ClientScriptManager cs = pg.ClientScript;
            cs.RegisterClientScriptBlock(cstype, s, s.ToString());
        }


    }
}