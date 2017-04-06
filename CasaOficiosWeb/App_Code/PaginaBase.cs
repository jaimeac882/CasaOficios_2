//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using CasaOficios.BusinessLogic;
//using System.Web.UI;

///// <summary>
///// Descripción breve de PaginaBase
///// </summary>
//public class PaginaBase : System.Web.UI.Page
//{
//    SEGU.BusinessLogic.BLOpcionRol oBLOpcionRol;

//    protected void Page_InitComplete(object sender, System.EventArgs e)
//    {
//        string Url = this.Page.AppRelativeVirtualPath;
//        oBLOpcionRol = new SEGU.BusinessLogic.BLOpcionRol();
//        int b = oBLOpcionRol.AutentificarUrl(Convert.ToInt32(System.Web.HttpContext.Current.Session["IdPais"]), Convert.ToInt32(System.Web.HttpContext.Current.Session["IdUsuario"]), Convert.ToInt32(System.Web.HttpContext.Current.Session["IdRol"]), Url);
//        System.Web.HttpContext.Current.Session["IdOpcion"] = b;
//        if (b <= 0)
//        {
//            System.Web.HttpContext.Current.Response.Redirect("~/Seguridad/Acceso.aspx");
//            return;
//        }
//    }
//    protected void Page_PreInit(object sender, System.EventArgs e)
//    {
//        if ((System.Web.HttpContext.Current.Request.UserAgent.IndexOf("AppleWebKit") > 0))
//        {
//            System.Web.HttpContext.Current.Request.Browser.Adapters.Clear();
//        }
//    }

//}