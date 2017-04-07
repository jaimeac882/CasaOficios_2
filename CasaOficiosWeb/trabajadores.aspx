﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trabajadores.aspx.cs" Inherits="CasaOficiosWeb.trabajadores" %>


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
    <link rel="shortcut icon" href="images/favicon.ico" />
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
                       <li><a href="portfolio.aspx">Portfolio</a></li>
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
		    <div class="col-md-12">
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
                                    </ul>

                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane active" id="home">
<!--inicio: Tab panes01 -->


<div class="form-group">

  <div class="col-md-11 inputGroupContainer">
        <label for="Nombres">Nombres : </label>
    <div class="input-group">

        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
        <asp:TextBox type="text" runat="server" id="Nombres" CssClass="form-control" PlaceHolder="Nombres"></asp:TextBox>
    </div>
  </div>

</div>


<!-- Text input-->

<div class="form-group">

  <div class="col-md-11 inputGroupContainer">
    <label for="Apellidos">Apellidos : </label>
    <div class="input-group">

      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <asp:TextBox type="text" runat="server" id="Apellidos" CssClass="form-control" PlaceHolder="Apellidos"></asp:TextBox>
    </div>
  </div>

</div>


<!-- Select Basic -->
   
<div class="form-group"> 


    <div class="col-md-11 selectContainer">
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

</div>

<!-- Text input-->

<div class="form-group">

  <div class="col-md-11 inputGroupContainer">
        <label for="NroDocumento">Nro. Documento : </label>  
    <div class="input-group">

            <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
            <asp:TextBox type="text" runat="server" id="NroDocumento" CssClass="form-control" PlaceHolder="Nro. Documento"></asp:TextBox>
    </div>
  </div>

</div>



<!-- Text input-->
       

<div class="form-group">
     <div class="col-md-5 inputGroupContainer">
           <label  for="FechaNacimiento">Fecha Nacimiento : </label>  
           <div class="input-group">

				<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                <div class="input-group date form_date col-md-8" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">

                    <asp:TextBox type="text"  runat="server" id="FechaNacimiento" CssClass="form-control" PlaceHolder="Fecha Nacimiento" ReadOnly="true"></asp:TextBox>

                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                </div>
				<input type="hidden" id="dtp_input2" value="" />
          </div>
     </div>
</div>

<!-- Text input-->
      
<div class="form-group">

  <div class="col-md-8 inputGroupContainer">
    <label for="FotoCarnet">Foto Carnet : </label>  

    <div class="input-group">


        <span class="input-group-addon"><i class="glyphicon glyphicon-picture"></i></span>

        <asp:FileUpload ID="FotoCarnet" runat="server" CssClass="form-control" placeholder="Foto"></asp:FileUpload>

    </div>
  </div>

</div>
                                        
<!--fin: Tab panes01 -->                                      
                                        
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="profile">
<!--Inicio: Tab panes02-->




<!-- Select Basic -->
   
<div class="form-group"> 

    <div class="col-md-11 selectContainer">
            <label class="control-label col-sm-6"  for="Distrito">Tipo Documento : </label>
        <div class="input-group">

            <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>

        <asp:DropDownList ID="Distrito" runat="server" CssClass="form-control selectpicker">

            <asp:ListItem value="value" selected="True">- Seleccione Distrito de Lima -</asp:ListItem>
                <asp:ListItem value="value" >Ate </asp:ListItem>
                <asp:ListItem value="value" >Carabayllo</asp:ListItem>
                <asp:ListItem value="value" >Miraflores</asp:ListItem>
                <asp:ListItem value="value" >San Isidro</asp:ListItem>

        </asp:DropDownList>

   </div>
   </div>
</div>


<!-- Text input-->
      
<div class="form-group">

    <div class="col-md-11 inputGroupContainer">
            <label class="control-label col-sm-6"  for="Direccion">Dirección : </label>
    <div class="input-group">

        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
           <!--input name="address" placeholder="Dirección" class="form-control" type="text"-->
           <asp:TextBox type="text" runat="server" id="Direccion" CssClass="form-control" PlaceHolder="Dirección"></asp:TextBox>
    </div>
  </div>
</div>

<!-- Text input-->
       <div class="form-group">

    <div class="col-md-11 inputGroupContainer">
                <label class="control-label col-sm-6" for="Email">Correo Electrónico : </label>
    <div class="input-group">

        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>

        <asp:TextBox type="text" runat="server" id="Email" CssClass="form-control" PlaceHolder="Correo Electrónico"></asp:TextBox>
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">

    <div class="col-md-8 inputGroupContainer">

        <label class="control-label col-sm-6" for="telefono">Telefono : </label>

    <div class="input-group">

        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>

        <asp:TextBox type="text" runat="server" id="Telefono" CssClass="form-control" PlaceHolder="Teléfono"></asp:TextBox>
    </div>
    
    </div>
</div>

<!-- Select Basic -->
   
<div class="form-group"> 

    <div class="col-md-4 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
    <!-- select name="state" class="form-control selectpicker" -->
    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control selectpicker">

        <asp:ListItem value="value" selected="True">- Elija Comp. Telef. -</asp:ListItem>
        <asp:ListItem value="value" >Claro</asp:ListItem>
        <asp:ListItem value="value" >Entel</asp:ListItem>
        <asp:ListItem value="value" >Movistar </asp:ListItem>
        <asp:ListItem value="value" >Bittel</asp:ListItem>
        <asp:ListItem value="value" >Otros</asp:ListItem>

    </asp:DropDownList>
    <!--/select-->

  </div>
</div>
</div>

<!-- Text input-->









                                        
<!--Fin : Tab panes02-->
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="messages">

<!--inicio: Tab panes03 -->











<!--Fin : Tab panes03-->
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="settings">


<!--Inicio: Tab panes04-->


<!-- Text input-->                         
<div class="form-group">

    <div class="col-md-11 inputGroupContainer">
    <div class="input-group">
        <label for="ReciboResidencia">Recibo Luz o Agua : </label>
        <span class="input-group-addon"><i class="glyphicon glyphicon-picture"></i></span>
        <!--input  name="file" placeholder="Fotos" class="form-control" type="file"-->


        <asp:FileUpload ID="ReciboResidencia" runat="server" CssClass="form-control" placeholder="Foto"></asp:FileUpload>

    </div>
  </div>
</div>

<!-- Text input-->
<div class="form-group">

    <div class="col-md-11 inputGroupContainer">
    <div class="input-group">

        <label for="AntecedentePenales">Antecendentes Penales Escaneado : </label>
        <span class="input-group-addon"><i class="glyphicon glyphicon-picture"></i></span>
        <!--input  name="file" placeholder="Fotos" class="form-control" type="file"-->


        <asp:FileUpload ID="AntecedentePenales" runat="server" CssClass="form-control" placeholder="Foto"></asp:FileUpload>

    </div>
  </div>
</div>

<!-- Text input-->                         
<div class="form-group">

    <div class="col-md-11 inputGroupContainer">
    <div class="input-group">

        <label for="AntecendentesPoliciales">Antecedentes Policiales Escaneado : </label>
        <span class="input-group-addon"><i class="glyphicon glyphicon-picture"></i></span>

        <asp:FileUpload ID="AntecendentesPoliciales" runat="server" CssClass="form-control" placeholder="Foto"></asp:FileUpload>

    </div>
  </div>
</div>

<!-- Text input-->
<div class="form-group">

    <div class="col-md-11 inputGroupContainer">
    <div class="input-group">
        <label for="DocumentoIdentidad">Documento Escaneado : </label>
        <span class="input-group-addon"><i class="glyphicon glyphicon-picture"></i></span>
        <!--input  name="file" placeholder="Fotos" class="form-control" type="file"-->


        <asp:FileUpload ID="DocumentoIdentidad" runat="server" CssClass="form-control" placeholder="Foto"></asp:FileUpload>

    </div>
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




    <div class="clients-area center wow fadeInDown">
        <h2>
            What our client says</h2>
        <p class="lead">
            We pride ourselves on providing superior service but you don't just have to take
            our word for it.
            <br>
            Read what employers in the UK have to say about working with Robert Half in the
            client testimonials below.</p>
    </div>
    <div class="container">
        <div class="col-md-4 wow fadeInDown">
            <div class="clients-comments text-center">
                <img src="images/client1.png" class="img-circle" alt="">
                <h3>
                    Marketers, including Unilever, reveal </h3>
                <h4>
                    <span>- Will Smith /</span> Director of strap.com</h4>
            </div>
        </div>
        <div class="col-md-4 wow fadeInDown">
            <div class="clients-comments text-center">
                <img src="images/client2.png" class="img-circle" alt="">
                <h3>
                    Executives from BBH, Euro RSCG.</h3>
                <h4>
                    <span>- Will Smith /</span> Director of strap.com</h4>
            </div>
        </div>
        <div class="col-md-4 wow fadeInDown">
            <div class="clients-comments text-center">
                <img src="images/client3.png" class="img-circle" alt="">
                <h3>
                    Professors from the Kellogg.</h3>
                <h4>
                    <span>- Will Smith /</span> Director of strap.com</h4>
            </div>
        </div>
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
</body>
</html>