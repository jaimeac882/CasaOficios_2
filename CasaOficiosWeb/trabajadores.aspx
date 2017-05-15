<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trabajadores.aspx.cs" Inherits="CasaOficiosWeb.trabajadores" %>


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
        function agregarItemTelefono()
        {

        //declaración de variables

        telefono = $.trim($('#txtTelefono').val());
        codigonItem = $.trim($('#lstProveedorFono option:selected').val());
        descripcionItem = $.trim($('#lstProveedorFono option:selected').text());

        nuevoCodigo = codigonItem + '-' + telefono;
        activarSalida = false;



        //Seleccionar al menos un proveedor
        if (codigonItem == '00') {
            alert("Debe seleccionar un proveedor telefónico.");
            return;
        }


        
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



        //Validacion Existencia Con Proveedor de teléfono
        $("#lstTelefonoAgregados option").each(function () {

            if (nuevoCodigo == $(this).attr('value'))
            {
                alert('Ya existe registrado el ' + telefono );
                activarSalida=true;
             }

        });
           
           
        if(activarSalida==true){
            return;
        }


        //AgregarItem de Lista
        $('#lstTelefonoAgregados').append($('<option>', {
            value: nuevoCodigo,
            text: descripcionItem +' : ' + telefono
        }));


        //Preparar los controles para la siguientes inserción.
        $('#txtTelefono').val() = "";
        $("#lstProveedorFono").get(0).selectedIndex

        }


        function borrarItemTelefono()
        {

            if( confirm("¿Está seguro que desea eliminar el item seleccionado?") == true)
            {                
                $('#lstTelefonoAgregados :selected').each(function (i, selected) {
                    if (arrayFonos[i] == telefono) {                        
                        $("#lstTelefonoAgregados option:selected").remove();
                        arrayFonos.splice(i);
                    }                    
                });
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
<body>
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


    <section id="feature">
        <div class="container">
           <div class="fadeInDown">


<form id="form2" runat="server">

<div class="container">
	<div class="row">
		    <div class="col-md-8">
                                    <!-- Nav tabs -->
                    <div class="card">
                                    <ul class="nav nav-tabs" role="tablist">
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
                                    <div class="tab-content" class="col-md-8 inputGroupContainer">
                                        <div role="tabpanel" class="tab-pane active" id="home">
<!--inicio: Tab panes01 -->


<div class="form-group">


    <label for="Nombres">Nombres : </label>
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
        <asp:TextBox type="text" runat="server" id="Nombres" CssClass="form-control" PlaceHolder="Nombres"></asp:TextBox>
    </div>


</div>


<!-- Text input-->

<div class="form-group">


    <label for="Apellidos">Apellidos : </label>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <asp:TextBox type="text" runat="server" id="Apellidos" CssClass="form-control" PlaceHolder="Apellidos"></asp:TextBox>
    </div>


</div>


<!-- Select Basic -->
   
<div class="form-group"> 

        <label for="TipoDocumento">Tipo Documento : </label>
        <div class="input-group">

            <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
            <asp:DropDownList ID="TipoDocumento" runat="server" CssClass="form-control selectpicker">
                <asp:ListItem value="value" selected="True">- Elija Documento -</asp:ListItem>
                <asp:ListItem value="value" >DNI </asp:ListItem>
                <asp:ListItem value="value" >Carnet de Extranjería</asp:ListItem>
            </asp:DropDownList>
           <!--/select-->
        </div>


</div>

<!-- Text input-->

<div class="form-group ">

    <label for="NroDocumento">Nro. Documento : </label>  
    <div class="input-group col-md-5">

            <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
            <asp:TextBox type="text" runat="server" id="NroDocumento" CssClass="form-control" PlaceHolder="Nro. Documento"></asp:TextBox>

    </div>

</div>







<!-- Text input-->   





<div class="form-group">
                <label for="dtp_input2" >Fecha Nacimiento :</label>
                <div class="input-group">
                <div class="input-group date form_date col-md-12" data-date="" data-date-format="yyyy-mm-dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                    <input class="form-control" size="16" type="text" value="" readonly>
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
                                        
<!--fin: Tab panes01 -->                                      
                                        
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="profile">
<!--Inicio: Tab panes02-->



<!-- Select Basic -->
   
<div class="form-group"> 
        <label for="Distrito">Distrito Dirección : </label>
        <div class="input-group">
            <span class="input-group-addon" ><i class="glyphicon glyphicon-list"></i></span>

            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                <asp:ListItem value="value" selected="True">- Seleccione Distrito de Lima -</asp:ListItem>
                <asp:ListItem value="value" >Ate </asp:ListItem>
                <asp:ListItem value="value" >Carabayllo</asp:ListItem>
                <asp:ListItem value="value" >Miraflores</asp:ListItem>
                <asp:ListItem value="value" >San Isidro</asp:ListItem>
            </asp:DropDownList>

        </div>  
</div>

<!-- Text input-->      
<div class="form-group">

    <label  for="Direccion">Dirección : </label>
    <div class="input-group">
           <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
           <asp:TextBox type="text" runat="server" id="TextBox1" CssClass="form-control" PlaceHolder="Dirección"></asp:TextBox>
    </div>

</div>


<!-- Text input-->
<div class="form-group">

    <label for="Email">Correo Electrónico : </label>
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
        <asp:TextBox type="text" runat="server" id="TextBox2" CssClass="form-control" PlaceHolder="Correo Electrónico"></asp:TextBox>
    </div>

</div>


<!-- Text input-->

<div class="form-group">

    <label for="txtTelefono">Teléfono : </label>
    <div class="input-group">

        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
        <asp:DropDownList ID="lstProveedorFono" runat="server" CssClass="form-control selectpicker">
            <asp:ListItem value="00" selected="True">- Seleccione Compañía Telefónica -</asp:ListItem>
            <asp:ListItem value="01">Claro</asp:ListItem>
            <asp:ListItem value="02">Entel</asp:ListItem>
            <asp:ListItem value="03">Movistar </asp:ListItem>
            <asp:ListItem value="04">Bittel</asp:ListItem>
            <asp:ListItem value="05">Otros</asp:ListItem>
        </asp:DropDownList>

        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
        <asp:TextBox type="text" runat="server" id="txtTelefono" CssClass="form-control" PlaceHolder="Teléfono"></asp:TextBox>





    </div>
    <input type="button" class="col-md-6" id="btnEliminar" value="Eliminar" onclick="borrarItemTelefono()">
    <input type="button" class="col-md-6" id="btnAgregar" value="Agregar" onclick="agregarItemTelefono()">  
  

    <asp:ListBox ID="lstTelefonoAgregados" SelectionMode="Multiple"  runat="server" CssClass="form-control selectpicker" >
    </asp:ListBox>


</div>









                                       
<!--Fin : Tab panes02-->
                                        </div>
  <div role="tabpanel" class="tab-pane" id="messages">

<!--inicio: Tab panes03 -->



<!-- Text input-->

<div class="form-group">

    <label>Experiencia Laboral: </label>
    <div class="input-group">

        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
        <asp:DropDownList ID="lstPerfilLaboral" runat="server" CssClass="form-control selectpicker">
            <asp:ListItem value="00" selected="True">- Seleccione el Oficio -</asp:ListItem>
            <asp:ListItem value="01">Gasfitero</asp:ListItem>
            <asp:ListItem value="02">Carpintero</asp:ListItem>
            <asp:ListItem value="03">Cerrajero </asp:ListItem>
            <asp:ListItem value="04">Alabañil</asp:ListItem>
            <asp:ListItem value="05">Vidriero</asp:ListItem>
        </asp:DropDownList>

        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
        <asp:DropDownList ID="listPeriodoExperiencia" runat="server" CssClass="form-control selectpicker">
            <asp:ListItem value="00" selected="True">- Seleccione Período de Experiencia -</asp:ListItem>
            <asp:ListItem value="01">Aprox. 01 año de Experiencia</asp:ListItem>
            <asp:ListItem value="02">Aprox. 03 años de Experiencia</asp:ListItem>
            <asp:ListItem value="03">Aprox. 05 años de Experiencia </asp:ListItem>
            <asp:ListItem value="04">Más de 05 años de Experiencia</asp:ListItem>
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
    <asp:Button type="submit" runat="server" CssClass="btn btn-primary center-block" id="btnEnviar" Text="Guardar Formulario"> </asp:Button>

 </div>

                                        <div role="tabpanel" class="tab-pane" id="settings">


<!--Inicio: Tab panes04-->


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
                     </div>
          </div>
	</div>
</div>












            </div>


        </div><!--/.container-->
    </section>
    <!--/#feature-->





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
    </footer>
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
