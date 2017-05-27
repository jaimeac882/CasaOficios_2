<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default2.aspx.cs" Inherits="CasaOficiosWeb.Default2"  EnableEventValidation="false" %>

<%@ Implements Interface="System.Web.UI.ICallbackEventHandler" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Test</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <script type="text/javascript">
                var i=2;
                function addCustomItem(id,text, val)        
                {
                    var vlist = document.getElementById(id);
                    if (vlist != null)
                    {
                        if (navigator.appName == 'Microsoft Internet Explorer' )
                        {
                            var newOption = document.createElement('OPTION');
                            newOption.value = val;
                            newOption.innerText = text;
                            vlist.options.appendChild(newOption);
                        }
                        else
                        {
                            var newOption = new Option(text, val);
                            vlist.options.add(newOption);
                        }
                     }
                 }
                 
                 // Select all elements of an given listbox element ID
                 function selectAllElements(id)
                 {
                    var oList = document.getElementById(id);
                    if (oList != null)
                    {
                        for (i=0;i<oList.options.length;i++)
                            oList.options[i].selected=true;
                    }             
                 }
                 // Function executed after callbackresult recieved
                 function ReceiveServerData(arg, context)
                 { 
                    // arg contains the result of GetCallbackResult()
                    var opts = arg.split(';');
                    var opt;
                    for (i=0; i< opts.length;i++)
                    {
                        opt = opts[i].split(',');
                        addCustomItem('<%= lstServerList.ClientID %>', opt[0], opt[1]);
                    }
                 }
                 
                 function addItem(id) { addCustomItem(id,'Element '+(i++), i);}
            </script> 
            <%--class=tag--%> 
            
            <border="1" width="300px">
                <tr>
                    <td>
                        Server Control<br />
                        <asp:ListBox ID="lstServerList" runat="server" SelectionMode="Multiple" 
                            style="width: 99%;"></asp:ListBox>
                        <br />
                        <a href="#" onclick="javascript:addItem('<%= lstServerList.ClientID %>');">
                            Add item</a>
                    </td>
                    <td>
                        Html Control<br />
                        <select id="idlstHtmlList" name="nmlstHtmlList" size="4" multiple="multiple" 
                            style="width: 99%;" ></select>
                        <br />
                        <a href="#" onclick="javascript:addItem('idlstHtmlList');">Add item</a>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input onclick="CallServer('Element', null)" type="button" value="Callback" />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
                         Text="Server Submit" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox1" runat="server" Width="98%" TextMode="MultiLine" 
                            Rows="5"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
