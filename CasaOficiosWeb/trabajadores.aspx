<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="trabajadores.aspx.cs" Inherits="CasaOficiosWeb.trabajadores"  EnableEventValidation="false" %>
<%@ Implements Interface="System.Web.UI.ICallbackEventHandler" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Services | Bootstrap .net Templates</title>
    <%-- ------ CSS ------ --%>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/animate.min.css" rel="stylesheet" type="text/css" />
    <link href="css/prettyPhoto.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/responsive.css" rel="stylesheet" type="text/css" />
     <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
        rel="stylesheet" type="text/css" />
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->




    <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
    <script type="text/javascript" src="js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
    <link rel="shortcut icon" href="images/favicon.ico" />


    <script language="javascript">
      

        //variable global para fx AgregarItem
        var arrayFonos = [];
        /*---------------------------------------------------------------------------*/
                    function addCustomItem(id, text, val) {
                        var vlist = document.getElementById(id);
                        if (vlist != null) {
                            if (navigator.appName == 'Microsoft Internet Explorer') {
                                var newOption = document.createElement('OPTION');
                                newOption.value = val;
                                newOption.innerText = text;
                                vlist.options.appendChild(newOption);
                            }
                            else {
                                var newOption = new Option(text, val);
                                vlist.options.add(newOption);
                            }
                        }
                    }


                    function selectAllElements(id) {
                        var oList = document.getElementById(id);
                        if (oList != null) {
                            for (i = 0; i < oList.options.length; i++)
                                oList.options[i].selected = true;
                        }
                    }


               function ReceiveServerData(arg, context)
                 { 
                   // arg contains the result of GetCallbackResult()
                   // No se usa o no es importante para lo que se deseamos obtener
                    var opts = arg.split(';');
                    var opt;
                    for (i=0; i< opts.length;i++)
                    {
                        opt = opts[i].split(',');
                        addCustomItem('<%= lstTelefonoAgregados.ClientID %>', opt[0], opt[1]);
                    }
               }




        

        switch (tabName2) {
            case 'home':
               // ValidarElementosHome();
        
            case '':
                day = "Monday";
                return
            case '':
                day = "Tuesday";
                return

            case '':
                day = "Saturday";
                return
        }

         
            $('#Tabs a[href="#' + tab + '"]').tab('show');
            $("#Tabs a").click(function () {
                $("[id*=TabName]").val($(this).attr("href").replace("#", ""));
            });


        }

        function AgregarItem(id) {
            telefono = $.trim($('#txtTelefono').val());
            codigonItem = $.trim($('#cboProveedorTelf option:selected').val());
            descripcionItem = $.trim($('#cboProveedorTelf option:selected').text());
            
            nuevoCodigo = codigonItem + '-' + telefono;
            descri = descripcionItem + '-' + telefono;
        
            //Validación de Número de Telefono
            if ($.isNumeric(telefono) == false) {
                alert("El teléfono '" + telefono + "' no es númerico: .");
                return;
            }

            //Validación de Longitud de Telefono
            if (telefono.length == 9 && telefono.substring(0, 1) == 9) {
                //alert("El número descrito es celular correcto.");
            } else {            
                if (telefono.length == 7 && (telefono.substring(0, 1) != 9 || telefono.substring(0, 1) != 0)) {
                    //alert("El número descrito es fono domicilio correcto.");
                } else {                                
                    alert("El número telefónico '" + telefono + "' no es correcto.");
                    return;
                }            
            }


            //Validacion Existencia de teléfono
            for (var i = 0; i < arrayFonos.length; i++)
            {
                if (arrayFonos[i] == telefono)
                {
                    alert("Ya existe este teléfono registrado.");
                    return;
                }            
            }
            arrayFonos.push(telefono);

            document.getElementById('txtTelefono').value = '';

            addCustomItem(id, descri, nuevoCodigo);
        }


        /*---------------------------------------------------------------------------*/



       




        function borrarItemTelefono()
        {

            //if( confirm("¿Está seguro que desea eliminar el item seleccionado?") == true)
            //{                
            //    $('#lstTelefonoAgregados :selected').each(function (i, selected) {
            //        if (arrayFonos[i] == telefono) {                        
            //            $("#lstTelefonoAgregados option:selected").remove();
            //            arrayFonos.splice(i);
            //        }                    
            //    });
            //}

            if( confirm("¿Está seguro que desea eliminar el item seleccionado?") == true)
            {  
                var dropDownListRef = document.getElementById('<%= lstTelefonoAgregados.ClientID %>');
               
                var optionsList = '';
                var itemIndex = dropDownListRef.selectedIndex;
                if (itemIndex>=0){
                    var txt= []
                    txt = (document.getElementById('<%= lstTelefonoAgregados.ClientID %>').value).split("-");
                   

                
             
                    dropDownListRef.remove(itemIndex);
                    for (var i=0; i<arrayFonos.length; i++){
                        alert(arrayFonos[i]);
                        alert(txt[1]);
                        if (arrayFonos[i] == txt[1]){
                            
                            arrayFonos.splice(i,1);
                        }
                       
                                    }

               
                }
            }

        }



        /////////////////////////

        var arrayOficios = [];
        function agregarItemOficio() {

            //declaración de variables

            //telefono = $.trim($('#txtTelefono').val());
            codigoPerfilLaboral = $.trim($('#lstPerfilLaboral option:selected').val());
            codigoPeriodolLaboral = $.trim($('#listPeriodoExperiencia option:selected').val());

            descripPerfilLaboral = $.trim($('#lstPerfilLaboral option:selected').text());
            descripPeriodoLaboral = $.trim($('#listPeriodoExperiencia option:selected').text());

            nuevoCodigo = codigoPerfilLaboral + '-' + codigoPeriodolLaboral;
            activarSalida = false;



            //Seleccionar al menos un Perfil Laboral
            if (codigoPerfilLaboral == '00') {
                alert("Debe seleciconar un perfil laboral.");
                return;
            }

            //Seleccionar al menos un Perfil Laboral
            if (codigoPeriodolLaboral == '00') {
                alert("Debe seleciconar un periodo laboral.");
                return;
            }



            //Validacion Existencia de teléfono
            for (var i = 0; i < arrayOficios.length; i++) {

                if (arrayOficios[i] == codigoPerfilLaboral) {
                    alert("Ya existe el oficio '" + descripPerfilLaboral + "' registrado.");
                    return;
                }

            }
            arrayOficios.push(codigoPerfilLaboral);


            //AgregarItem de Lista
            $('#lstOficioExperienciAgregados').append($('<option>', {
                value: nuevoCodigo,
                text: descripPerfilLaboral + ': ' + descripPeriodoLaboral
            }));


            //Preparar los controles para la siguientes inserción.
            $("#lstPerfilLaboral ").get(0).selectedIndex
            $("#listPeriodoExperiencia ").get(0).selectedIndex

        }


        function borrarItemOficio() {

            if (confirm("¿Está seguro que desea eliminar el item seleccionado?") == true) {

                $('#lstOficioExperienciAgregados :selected').each(function (i, selected) {
                    if (arrayOficios[i] == codigoPerfilLaboral) {
                        $("#lstOficioExperienciAgregados option:selected").remove();
                        arrayOficios.splice(i);
                    }
                });



            }
        }




    </script>


</head>


<header id="header">
    <div class="top-bar">
    <div class="container">
    <div class="row">
    <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
      <div class="top-number"><p><i class="fa fa-thumbs-up"></i> Su mejor opción... </p></div>
    </div>
     <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
      <div class="social">
     <ul class="social-share">
        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>        
        <li><a href="#"><i class="fa fa-skype"></i></a></li>
     </ul>     
       
    </div>
    </div>
    </div>
      </div><%--container--%>
        </div><%--/top-bar--%>
      <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Default.aspx"><img src="images/logo.png" alt="logo"></a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li><a href="Default.aspx">Inicio</a></li>
                       <li><a href="portfolio.aspx">Trabaje con nosotros</a></li>
                        <li class="active"><a href="services.aspx">Servicios</a></li>                        
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Pages <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Blog Single</a></li>
                                <li><a href="#">Pricing</a></li>
                                <li><a href="#">404</a></li>
                                <li><a href="#">Shortcodes</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Blog</a></li> 
                        <li><a href="contactus.aspx">Contact</a></li>                        
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
 
    </header>


<body>
    




<form id="form1" runat="server">



    <div>
 

  
    <div id="myModal" class=" modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Do ypu need change </h4>
                </div>
                <div class="modal-body">
                    <p>Are u sure from </p>
                    <label id="FromDate"></label>
                    <p>To</p>
                    <label id="ToDate"></label>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">no</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">yes</button>
                </div>
            </div>
        </div>
    </div>

    <section id="feature">
        <div class="container">
           <div class="fadeInDown">



<div class="container">
	<div class="row">
		    <div class="col-md-8">
                                    <!-- Nav tabs -->
                    <div id="Tabs" role="tabpanel">
                                    <ul  id="foo"  class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active">
                                        <a href="#home" aria-controls="home" role="tab" data-toggle="tab"> 
                                        <i class="glyphicon glyphicon-user"></i> 
                                         Identidad
                                        </a>
                                        </li>
                                        <li role="presentation">
                                        <a href="#profile" aria-controls="profile" role="tab" data-toggle="tab"> 
                                        <i class="glyphicon glyphicon-map-marker"></i>                                         
                                         Contacto
                                        </a>
                                        </li>
                                        <li role="presentation">
                                        <a href="#messages" aria-controls="messages" role="tab" data-toggle="tab"> 
                                        <i class="glyphicon glyphicon-briefcase"></i>                                         
                                        Experiencia
                                        </a>
                                        </li>


                                        <li role="presentation">
                                        <a href="#settings" aria-controls="settings" role="tab" data-toggle="tab"> 
                                        <i class="glyphicon glyphicon-file"></i>      
                                        
                                        Validación

                                        </a>

                                        </li>


                                        <li role="Enviar">
                                        <a href="#enviar" aria-controls="enviar" role="tab" data-toggle="tab"> 
                                        <i class="glyphicon glyphicon-send"></i>      
                                        
                                        Enviar

                                        </a>

                                        </li>



                                    </ul>
        
                                    <!-- Tab panes -->
                                    <div  class="tab-content" class="col-md-8 inputGroupContainer" >
                        
                          
                                        
                                <div role="tabpanel" class="tab-pane active" id="home">
                                    <!--inicio: Tab panes01 -->


                                    <div class="form-group">


                                        <label for="Nombres">Nombres : </label>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                            <asp:TextBox type="text" runat="server" id="TxtNombres" Text="Edgar" CssClass="form-control" PlaceHolder="Nombres"></asp:TextBox>
                                        </div>


                                    </div>


                                    <!-- Text input-->

                                    <div class="form-group">


                                        <label for="Apellidos">Apellidos  Paterno: </label>
                                        <div class="input-group">
                                          <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                          <asp:TextBox type="text" runat="server" id="txtApePa" Text="Ligarda Estrada" CssClass="form-control" PlaceHolder="Apellidos"></asp:TextBox>
                                        </div>

                                                  <label for="Apellidos">Apellidos Materno: </label>
                                        <div class="input-group">
                                          <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                          <asp:TextBox type="text" runat="server" id="txtApeMa" Text="Ligarda Estrada" CssClass="form-control" PlaceHolder="Apellidos"></asp:TextBox>
                                        </div>


                                                                 <label for="Apellidos">Genero: </label>
                                        <div class="input-group">
                                          <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                                     <asp:DropDownList  ID="cboTipoGenero" runat="server" CssClass="form-control selectpicker">

                                                </asp:DropDownList>
                                                 </div>


                                    </div>


                                    <!-- Select Basic -->
   
                                    <div class="form-group"> 

                                            <label for="TipoDocumento">Tipo Documento : </label>
                                            <div class="input-group">

                                                <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                                                <asp:DropDownList ID="CboTipoDocumento" runat="server" CssClass="form-control selectpicker">

                                                </asp:DropDownList>
                                               <!--/select-->
                                            </div>


                                    </div>

                                    <!-- Text input-->

                                    <div class="form-group ">

                                        <label for="NroDocumento">Nro. Documento : </label>  
                                        <div class="input-group col-md-5">

                                                <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                                <asp:TextBox type="text" runat="server" id="txtNroDocumento" Text="44953781" CssClass="form-control" PlaceHolder="Nro. Documento"></asp:TextBox>

                                        </div>

                                    </div>







                                    <!-- Text input-->   





                                    <div class="form-group">
                                                    <label for="dtp_input2" >Fecha Nacimiento :</label>
                                                    <div class="input-group">
                                                    <div class="input-group date form_date col-md-12" data-date="" data-date-format="yyyy-mm-dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                    
                                                        <asp:TextBox  class="form-control"  size="16"  ID="txtFecNaci" Text="2017-05-20" runat="server" ReadOnly="true"></asp:TextBox>
                                                   <%--     <input class="form-control" size="16" type="text" value="ss" readonly>--%>
                                                        <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
					                                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                                                    </div>
          
				                                     <input type="hidden" id="dtp_input2" value="" />
                                                    </div>
                                    </div>





                                    <!-- Text input-->
      
                                    <div class="form-group">

                                        <label for="FotoCarnet">Foto Carnet : </label>  

                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-picture"></i></span>
                                            <asp:FileUpload ID="FotoCarnet" runat="server" CssClass="form-control" placeholder="Foto"></asp:FileUpload>
                                        </div>

                                 

                                    </div>
                                        

                                    <button type="button"  onclick="openTab('profile');" class="btn btn-primary btn-lg">Siguiente Paso</button>

                                    <!--fin: Tab panes01 -->                                      
                                        
                          </div>
                           






           
                          <div role="tabpanel" class="tab-pane" id="profile">
                                        <!--Inicio: Tab panes02-->



                                                    <!-- Select Basic -->
   
                                                    <div class="form-group"> 
                                                            <label for="Distrito">Distrito Dirección : </label>
                                                            <div class="input-group">
                                                                <span class="input-group-addon" ><i class="glyphicon glyphicon-list"></i></span>

                                                                <asp:DropDownList ID="cboDistrito" runat="server" CssClass="form-control">
                                                                    <asp:ListItem value="value" selected="True">- Seleccione Distrito de Lima -</asp:ListItem>

                                                                </asp:DropDownList>

                                                            </div>  
                                                    </div>

                                                    <!-- Text input-->      
                                                    <div class="form-group">

                                                        <label  for="Direccion">Dirección : </label>
                                                        <div class="input-group">
                                                               <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                                               <asp:TextBox  runat="server" Text="Calle Monterrey 341 - Chacarrilla - Santiago de Surco" id="txtDireccion" CssClass="form-control" PlaceHolder="Dirección"></asp:TextBox>
                                                        </div>

                                                    </div>


                                                    <!-- Text input-->
                                                    <div class="form-group">

                                                        <label for="Email">Correo Electrónico : </label>
                                                        <div class="input-group">
                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                                            <asp:TextBox type="txtEmail" runat="server" id="txtEmail" Text="atencion@directv.com.pe"  CssClass="form-control" PlaceHolder="Correo Electrónico"></asp:TextBox>
                                                        </div>

                                                    </div>

                                             <div class="form-group">

                                                              <label for="txtTelefono">Celular Principal de Contacto : </label>
                                                        <div class="input-group">

                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                                                            <asp:DropDownList ID="cboCompaniaPrincipal" runat="server" CssClass="form-control selectpicker">
                                                                <%--<asp:ListItem value="00" selected="True">- Seleccione Compañía Telefónica -</asp:ListItem>--%>

                                                            </asp:DropDownList>

                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                                            <asp:TextBox  runat="server" id="txtTelfPrinci" CssClass="form-control" PlaceHolder="Teléfono" Text="987379413" ></asp:TextBox>





                                                        </div>

                                                    </div>


                                                    <!-- Text input-->

                                                    <div class="form-group">

                                                        <label for="txtTelefono">Otros Numeros Teléfonicos de Contacto : </label>
                                                        <div class="input-group">

                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                                                            <asp:DropDownList ID="cboProveedorTelf" runat="server" CssClass="form-control selectpicker">
                                                                <asp:ListItem value="00" selected="True">- Seleccione Compañía Telefónica -</asp:ListItem>

                                                            </asp:DropDownList>

                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                                            <asp:TextBox  runat="server" id="txtTelefono" CssClass="form-control" PlaceHolder="Teléfono"></asp:TextBox>





                                                        </div>
                                                        <input type="button" class="col-md-6" id="btnEliminar" value="Eliminar" onclick="borrarItemTelefono()">
                                                   
                                                        <input type="button" class="col-md-6" id="btnAgregar" value="Agregar" onclick="javascript:AgregarItem('<%= lstTelefonoAgregados.ClientID %>');">

                                                        
  

                                                        <asp:ListBox ID="lstTelefonoAgregados" SelectionMode="Multiple"  runat="server" CssClass="form-control selectpicker" >
                                                        </asp:ListBox>


                                                         <asp:ListBox ID="ListBox1" SelectionMode="Multiple"  CssClass="form-control selectpicker"  runat="server"></asp:ListBox>

<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button"></asp:Button>

                                                    </div>

                                      
                                <!--Fin : Tab panes02-->
                                </div>
       
                
                                   <div role="tabpanel" class="tab-pane" id="messages">

                                                    <!--inicio: Tab panes03 -->



                                                    <!-- Text input-->

                                                    <div class="form-group">

                                                           <label>Selecciona el Oficio en que se especializa y su Experiencia: </label>
                                                        <div class="input-group" style="padding-bottom:50px">

                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                                                            <asp:DropDownList ID="cboOficiDomin" runat="server" CssClass="form-control selectpicker">

                                                            </asp:DropDownList>

                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                                                            <asp:DropDownList ID="cboPerioDomin" runat="server" CssClass="form-control selectpicker">

                                                            </asp:DropDownList>


                                                        </div>



                                                        <label>Agregue Otros Oficios que domina: </label>
                                                        <div class="input-group">

                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                                                            <asp:DropDownList ID="cboOficiosOtros" runat="server" CssClass="form-control selectpicker">

                                                            </asp:DropDownList>

                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                                                            <asp:DropDownList ID="cboPeriodoExpeOtros" runat="server" CssClass="form-control selectpicker">

                                                            </asp:DropDownList>


                                                        </div>
                                                        <input type="button" class="col-md-6" id="btnEliminarOficio" value="Eliminar" onclick="borrarItemOficio()">
                                                        <input type="button" class="col-md-6" id="btnAgregarOficio" value="Agregar" onclick="agregarItemOficio()">  
  

                                                        <asp:ListBox ID="lstOficioExperienciAgregados" SelectionMode="Multiple"  runat="server" CssClass="form-control selectpicker" >
                                                        </asp:ListBox>


                                                    </div>










                                                    <!--Fin : Tab panes03-->
                               </div>


                               <div role="tabpanel" class="tab-pane" id="enviar">



                                            <p>
                                           DECLARO BAJO JURAMENTO:

                                           <ul>
                                        <li> No haber sido condenado por los delitos consignados en la Ley Nº 29988.</li>
                                        <li> No haber sido condenado por delito doloso, ni encontrarme inhabilitado judicialmente o con
                                        cese temporal. </li>

                                           </ul>

                                            </p>
                                            <asp:Button  OnClick="btnEnviar_Click" runat="server" CssClass="btn btn-primary center-block" id="btnEnviar" Text="Guardar Formulario"> </asp:Button>

                              </div>

                              <div role="tabpanel" class="tab-pane" id="settings">


                                            <!--Inicio: Tab panes05-->


                                            <!-- Text input-->                         
                                            <div class="form-group">

                                                <label for="ReciboResidencia">Recibo Luz o Agua : </label>
                                                <div class="input-group">

                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-picture"></i></span>
                                                    <!--input  name="file" placeholder="Fotos" class="form-control" type="file"-->


                                                    <asp:FileUpload ID="ReciboResidencia" runat="server" CssClass="form-control" placeholder="Foto"></asp:FileUpload>

                                                </div>

                                            </div>

                                            <!-- Text input-->
                                            <div class="form-group">

                                                <label for="AntecedentePenales">Antecendentes Penales Escaneado : </label>
                                                <div class="input-group">


                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-picture"></i></span>

                                                    <asp:FileUpload ID="AntecedentePenales" runat="server" CssClass="form-control" placeholder="Foto"></asp:FileUpload>

                                                </div>

                                            </div>

                                            <!-- Text input-->                         
                                            <div class="form-group">

                                                 <label for="AntecendentesPoliciales">Antecedentes Policiales Escaneado : </label>
                                                <div class="input-group">


                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-picture"></i></span>
                                                    <asp:FileUpload ID="AntecendentesPoliciales" runat="server" CssClass="form-control" placeholder="Foto"></asp:FileUpload>

                                                </div>

                                            </div>

                                            <!-- Text input-->
                                            <div class="form-group">


                                                <label for="DocumentoIdentidad">Documento de Identidad Escaneado : </label>
                                                <div class="input-group">

                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-picture"></i></span>

                                                    <asp:FileUpload ID="DocumentoIdentidad" runat="server" CssClass="form-control" placeholder="Foto"></asp:FileUpload>

                                                </div>

                                            </div>

                                            <!--Fin: Tab panes05-->

                                        


                                  </div>
                             
                          
    
                                    
                                    </div>
       
                    <asp:HiddenField ID="TabName" runat="server" />
                     </div>
          </div>
	</div>
</div>










      


</div>
        </div><!--/.container-->
    </section>
    <!--/#feature-->
 


    


</div>




    <section id="bottom">
        <div class="container wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Company</h3>
                        <ul>
                            <li><a href="#">About us</a></li>
                            <li><a href="#">We are hiring</a></li>
                            <li><a href="#">Meet the team</a></li>
                            <li><a href="#">Copyright</a></li>
                            <li><a href="#">Terms of use</a></li>
                            <li><a href="#">Privacy policy</a></li>
                            <li><a href="#">Contact us</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Support</h3>
                        <ul>
                            <li><a href="#">Faq</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Forum</a></li>
                            <li><a href="#">Documentation</a></li>
                            <li><a href="#">Refund policy</a></li>
                            <li><a href="#">Ticket system</a></li>
                            <li><a href="#">Billing system</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Developers</h3>
                        <ul>
                            <li><a href="#">Web Development</a></li>
                            <li><a href="#">SEO Marketing</a></li>
                            <li><a href="#">Theme</a></li>
                            <li><a href="#">Development</a></li>
                            <li><a href="#">Email Marketing</a></li>
                            <li><a href="#">Plugin Development</a></li>
                            <li><a href="#">Article Writing</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Our Partners</h3>
                        <ul>
                            <li><a href="#">Adipisicing Elit</a></li>
                            <li><a href="#">Eiusmod</a></li>
                            <li><a href="#">Tempor</a></li>
                            <li><a href="#">Veniam</a></li>
                            <li><a href="#">Exercitation</a></li>
                            <li><a href="#">Ullamco</a></li>
                            <li><a href="#">Laboris</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->
            </div>
        </div>
    </section>
    <!--/#bottom-->
    <!--/#bottom-->
    <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    &copy; 2015 <a target="_blank" href="http://aspxtemplates.com/" title="Free Twitter Bootstrap asp.net templates">aspxtemplates</a>. All Rights Reserved.
                </div>
                <div class="col-sm-6">
                    <ul class="pull-right">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Faq</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <a href="#" class="back-to-top"><i class="fa fa-2x fa-angle-up"></i></a>
    </footer
    <!--/#footer-->
    <!-- Back To Top -->
    <script type="text/javascript">
        jQuery(document).ready(function () {
            var offset = 300;
            var duration = 500;
            jQuery(window).scroll(function () {
                if (jQuery(this).scrollTop() > offset) {
                    jQuery('.back-to-top').fadeIn(duration);
                } else {
                    jQuery('.back-to-top').fadeOut(duration);
                }
            });

            jQuery('.back-to-top').click(function (event) {
                event.preventDefault();
                jQuery('html, body').animate({ scrollTop: 0 }, duration);
                return false;
            })
        });
    </script>
    <!-- /top-link-block -->
    <!-- Jscript -->
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/Funciones_Val_TMRH.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery.prettyPhoto.js" type="text/javascript"></script>
    <script src="js/jquery.isotope.min.js" type="text/javascript"></script>
    <script src="js/main.js" type="text/javascript"></script>
    <script src="js/wow.min.js" type="text/javascript"></script>
</form>






<script type="text/javascript" src="js/jquery-1.8.3.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="js/locales/bootstrap-datetimepicker.es.js" charset="UTF-8"></script>

<script type="text/javascript">
//in this line of code, to display the datetimepicker,  we used â€˜form_datetimeâ€™ as an argument to be 
    //passed in javascript. This is for Date and Time.

    // Esta función sirve para que despues de realizar el submit puedas mantenerte en tu panel


    $(function () {
        var tabName = $("[id*=TabName]").val() != "" ? $("[id*=TabName]").val() : "home";
        $('#Tabs a[href="#' + tabName + '"]').tab('show');
        $("#Tabs a").click(function () {
            $("[id*=TabName]").val($(this).attr("href").replace("#", ""));
        });
    });

    $('.form_datetime').datetimepicker({
        language:  'es',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		forceParse: 0,
        showMeridian: 1
    });
//this is for Date only	
 	$('.form_date').datetimepicker({
        language:  'es',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0
    });
//this is for Time Only	
	$('.form_time').datetimepicker({
        language:  'es',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 1,
		minView: 0,
		maxView: 1,
		forceParse: 0
    });
</script>

</body>
</html>
