using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CasaOficiosWeb
{
    public partial class Default2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Page.ClientScript.RegisterOnSubmitStatement(GetType(), "beforeSubmit",
                "selectAllElements('" + lstServerList.ClientID + "');");

            Page.ClientScript.RegisterOnSubmitStatement(GetType(), "beforeSubmit1",
                "selectAllElements('idlstHtmlList');");

            ClientScriptManager cm = Page.ClientScript;
            String cbReference = cm.GetCallbackEventReference(this, "arg", "ReceiveServerData", "");
            String callbackScript = "function CallServer(arg, context) {" + cbReference + "; }";
            cm.RegisterClientScriptBlock(this.GetType(), "CallServer", callbackScript, true);

        }

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

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Do something with listbox items
            if (Request.Form["nmlstHtmlList"] != null)
            {
                string[] items = Request.Form["nmlstHtmlList"].Split(new char[] { ',' });
                TextBox1.Text = "The HtmlSelect control contains " + items.Length.ToString() + " items.\n";
            }

            if (Request.Form[lstServerList.UniqueID] != null)
            {
                string[] items = Request.Form[lstServerList.UniqueID].Split(new char[] { ',' });

                

                TextBox1.Text += "the ListBox control contains " + items.Length.ToString() + " items.";
            }
        }


    }
}