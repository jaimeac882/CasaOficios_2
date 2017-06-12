<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CasaOficiosWeb._Default" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js" type="text/javascript"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Inicio | CasaOficios</title>
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

<form id="form1" runat="server">
    <header id="header" >
    
    <div class="top-bar">
    <div class="container">
    <div class="row">
    <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
      <div class="top-number"><p><i class="fa fa-thumbs-up"></i> Estamos allí, para su hogar. </p></div>
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
                        <li class="active"><a href="Default.aspx">Inicio</a></li>
                       <li><a href="trabajadores.aspx">Trabaja con Nosotros</a></li>
                        <li><a href="services.aspx">Servicios</a></li>                        
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
         
 
   
   <!-- Fin de Cabecera HEADER-->
    <section id="main-slider" class="no-margin">


        <div class="carousel slide" >
            <ol class="carousel-indicators">
                <li data-target="#main-slider" data-slide-to="0" class="active"></li>
                <li data-target="#main-slider" data-slide-to="1"></li>
                <li data-target="#main-slider" data-slide-to="2"></li>
                <li data-target="#main-slider" data-slide-to="3"></li>
            </ol>

            <div class="carousel-inner">

                <div class="item active" style="background-image: url(images/slider/bg1.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1" style="color:Black">Gasfiteros</h1>
                                    <h2 class="animation animated-item-2" style="color:Black">
                                    Atentos para solucionar la fuga de agua en la tuberías, griferías averiadas, problemas con el desagüe, etc.</h2>
                                    <a class="btn-slide animation animated-item-3" href="#">Leer Más</a>
                                </div>
                            </div>

                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <img src="images/slider/img1.png" class="img-responsive">
                                </div>
                            </div>

                        </div>
                    </div>
                </div><!--/.item-->

                <div class="item" style="background-image: url(images/slider/bg2.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">Jardineros</h1>
                                    <h2 class="animation animated-item-2">
                                    Dispuestos para remover la maleza, podar las ramas del árbol, plantar un nuevo césped, fertilizar la tierra, etc.
                                    </h2>
                                    <a class="btn-slide animation animated-item-3" href="#">Leer Más</a>
                                </div>
                            </div>

                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <img src="images/slider/img2.png" class="img-responsive">
                                </div>
                            </div>

                        </div>
                    </div>
                </div><!--/.item-->

                <div class="item" style="background-image: url(images/slider/bg3.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1" style="color:Black">Carpinteros</h1>
                                    <h2 class="animation animated-item-2" style="color:Black">
                                    Desea renovar las puertas de sus habitaciones, reparar la mesa o las sillas del comedor, construir un nuevo estante para su cocina, etc.
                                    </h2>
                                    <a class="btn-slide animation animated-item-3" href="#">Leer más</a>
                                </div>
                            </div>
                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <img src="images/slider/img3.png" class="img-responsive">
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--/.item-->


                <div class="item" style="background-image: url(images/slider/bg4.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">Albañilería</h1>
                                    <h2 class="animation animated-item-2">
                                    In Bootstrap 3, mobile-first styles are part of the core framework
                                    </h2>
                                    <a class="btn-slide animation animated-item-3" href="#">Leer más</a>
                                </div>
                            </div>
                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <img src="images/slider/img4.png" class="img-responsive">
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--/.item-->


            </div><!--/.carousel-inner-->
        </div><!--/.carousel-->



        <a class="prev hidden-xs" href="#main-slider" data-slide="prev">
            <i class="fa fa-chevron-left"></i>
        </a>
        <a class="next hidden-xs" href="#main-slider" data-slide="next">
            <i class="fa fa-chevron-right"></i>
        </a>
    </section>
    <!--/#main-slider-->



        <!--Inicio de Franja Formulario -->

    <section id="middle0">


        <div class="container">
            <div class="row">
             

                <div class="col-sm-6 wow fadeInDown">


<!--inicio form-->

<!-- Form Name -->
                        <h2>Registre su Urgencia</h2>
                        <p>
                        ¡Nosotros te llamamos! Cuéntanos qué se te ha roto y te ofreceremos la mejor solución.
                        </p>

<!-- Select Basic -->
   
<div class="form-group" >

    <div class="col-md-11 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
    <!-- select name="state" class="form-control selectpicker" -->


    <asp:DropDownList ID="cboTipAveria" runat="server" CssClass="form-control selectpicker" EnableViewState="true">




    </asp:DropDownList>
    <!--/select-->

  </div>
</div>
</div>



<!-- Text input-->

<div class="form-group"  style="padding-top:35px   "> 

  <div class="col-md-11 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <!--input  name="first_name" placeholder="Contacto" class="form-control"  type="text"-->
  <asp:TextBox type="text" runat="server" id="txtNombreApellidos" Text="Jaime Jose Aguilar Cabezas" CssClass="form-control" PlaceHolder="Contacto"></asp:TextBox>
    </div>
  </div>

</div>

<!-- Text input-->
       
<div class="form-group" style="padding-top:25px   "> 

    <div class="col-md-11 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
        <!--input name="phone" placeholder="Teléfono" class="form-control" type="text"-->
        <asp:TextBox type="text" runat="server" id="txtCelular" Text="987379413" CssClass="form-control" PlaceHolder="Teléfono"></asp:TextBox>
    </div>
  </div>
</div>

<!-- Text input-->
       <div class="form-group" style="padding-top:25px   "> 

    <div class="col-md-11 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>

        <!--input name="email" placeholder="Correo Electrónico" class="form-control"  type="text"-->
        <asp:TextBox type="text" runat="server" id="txtEmail" Text="jaime.ac8866@gmail.com" CssClass="form-control" PlaceHolder="Correo Electrónico"></asp:TextBox>
    </div>
  </div>
</div>



<!-- Text input-->
      
<div class="form-group" style="padding-top:25px   "> 

    <div class="col-md-11 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
           <!--input name="address" placeholder="Dirección" class="form-control" type="text"-->
           <asp:TextBox type="text" runat="server" id="txtDireccion" Text="Sector 3 Grupo 25 Manzana A Lote 14" CssClass="form-control" PlaceHolder="Dirección"></asp:TextBox>
    </div>
  </div>
</div>



<!-- Select Basic -->
   
<div class="form-group" style="padding-top:25px   "> 

    <div class="col-md-11 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>

    <asp:DropDownList ID="cboDistrito" runat="server" CssClass="form-control selectpicker" EnableViewState="true">



    </asp:DropDownList>

  </div>
</div>
</div>


<!-- Text area -->
  
<div class="form-group" style="padding-top:25px   "> 

    <div class="col-md-11 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
        	<!--textarea class="form-control" name="comment" placeholder="Describenos su urgencia"></!textarea-->
           <asp:TextBox type="text"  Rows="5" TextMode="multiline" runat="server" id="txtUrgencia" Text="Averia presentada en el 2do piso por fuga de agua dentro de los
                                                                                                    los baños , la fuga se presenta a partir de las 2 am cuando se abre la cañeria" CssClass="form-control" PlaceHolder="Describenos su urgencia"></asp:TextBox>

  </div>
  </div>
</div>


<!-- Text input-->
      
<div class="form-group" style="padding-top:110px   "> 

    <div class="col-md-11 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-picture"></i></span>
        <!--input  name="file" placeholder="Fotos" class="form-control" type="file"-->


        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" placeholder="Foto"></asp:FileUpload>

    </div>
  </div>
</div>

<!-- Success message -->
<!--div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Thanks for contacting us, we will get back to you shortly.</!--div-->

<!-- Button -->
<div class="form-group" style="padding-top:35px   "> 
  <div class="col-md-11" >
    <p >
    
    <asp:Button type="submit" runat="server" CssClass="btn btn-primary btn-block" id="btnEnviar" Text="Enviar" OnClick="btnEnviar_Click"> 

    </asp:Button>
    <!--span  class="glyphicon glyphicon-send"></!--span-->
</p>
  </div>
</div>





                </div>
                

                <!--/.col-sm-6-->


<!--hasta aquí no más-->
                <div class="col-sm-6 wow fadeInDown">
                    <div class="accordion">
                        <h2 style="font-weight: 600;font-family: 'Open Sans', sans-serif;color: #4e4e4e;">Fases De Tu Atención</h2>
                        <div class="panel-group" id="accordion1">
                          <div class="panel panel-default">
                            <div class="panel-heading active">
                              <h3 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseOne1">
                                  1: Busca Tu Especialista
                                  <i class="fa fa-angle-right pull-right"></i>
                                </a>
                              </h3>
                            </div>

                            <div id="collapseOne1" class="panel-collapse collapse in">
                              <div class="panel-body">
                                  <div class="media accordion-inner">
                                        <div class="pull-left">
                                            <img class="img-responsive" src="images/accordion1.png">
                                        </div>
                                        <div class="media-body">
                                             <h4>¡Encuentralo!</h4>
                                             <p>
                                             Puedes buscar al especialista desde tu smartphone, tablet o PC y desde allí puedes comentarnos qué sucede en tu casa.
                                             </p>
                                        </div>
                                  </div>
                              </div>
                            </div>
                          </div>

                          <div class="panel panel-default">
                            <div class="panel-heading">
                              <h3 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseTwo1">
                                  2: Contactate con el especialista.
                                  <i class="fa fa-angle-right pull-right"></i>
                                </a>
                              </h3>
                            </div>
                            <div id="collapseTwo1" class="panel-collapse collapse">

                              <div class="panel-body">

                              <div class="media accordion-inner">
                                        <div class="pull-left">
                                            <img class="img-responsive" src="images/accordion2.png">
                                        </div>
                                             <h4>¡Coméntalo!</h4>
                                             <p>
                               Presentas a detalle con comentarios, como también fotografías acerca del tipo de avería o proyecto que tienes.
                               </p>
                              </div>
                              </div>

                            </div>
                          </div>

                          <div class="panel panel-default">
                            <div class="panel-heading">
                              <h3 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseThree1">
                                  3: Solucione el problema
                                  <i class="fa fa-angle-right pull-right"></i>
                                </a>
                              </h3>
                            </div>
                            <div id="collapseThree1" class="panel-collapse collapse">
                              <div class="panel-body">

                              <div class="media accordion-inner">
                                        <div class="pull-left">
                                            <img class="img-responsive" src="images/accordion3.png">
                                        </div>
                                             <h4>¡Acuérdalo!</h4>
                                             <p>
                                Acuerda con el especialista descritos en el punto anterior, para que pongas fin a tu incidencia o avería y poder continuar sin preocupaciones en tu hogar.
                                </p>
                              </div>
                              </div>
                            </div>
                          </div>

                          <div class="panel panel-default">
                            <div class="panel-heading">
                              <h3 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseFour1">
                                   4: Califique el trabajo y listo!
                                  <i class="fa fa-angle-right pull-right"></i>
                                </a>
                              </h3>
                            </div>
                            <div id="collapseFour1" class="panel-collapse collapse">
                              <div class="panel-body">

                              <div class="media accordion-inner">
                                        <div class="pull-left">
                                            <img class="img-responsive" src="images/accordion4.png">
                                        </div>
                                             <h4>¡Calificalo!</h4>
                                             <p>
                               Haga presente su experiencia y comparta el desempeño del especialista para su futura recomendación.
                              </div>
                            </div>
                            </div>
                          </div>
                        </div><!--/#accordion1-->
                    </div>
                </div>

            </div><!--/.row-->
        </div><!--/.container-->
    </section>
        
       <!--Fin de Franja Formulario -->





    <section id="feature">
        <div class="container">
           <div class="center wow fadeInDown">
                <h2>Prestaciones</h2>
                <p class="lead">
                 Una manera fácil de encontrar diversos  <br />especialistas que necesita para resolver su problema en el hogar.
                </p>
            </div>

            <div class="row">
                <div class="features">
                    <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <i class="fa fa-mobile"></i>
                            <h2>Fácil de ubicarlo</h2>
                            <h3>
                            Disponibles desde smartphone en Android.
                            </h3>
                        </div>
                    </div><!--/.col-md-4-->

                    <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <i class="fa fa-briefcase"></i>
                            <h2>Diversos Especialistas</h2>
                            <h3>
                            Multiples especialistas para su necesidad en el hogar.
                            </h3>
                        </div>
                    </div><!--/.col-md-4-->

                    <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <i class="fa fa-wrench"></i>
                            <h2>Fácil Acceso</h2>
                            <h3>Gestión inmediata para acoger el proyecto o avería. </h3>
                        </div>
                    </div><!--/.col-md-4-->
                
                    <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <i class="fa fa-comment"></i>
                            <h2>Tus proyectos</h2>
                            <h3>Presenta el proyecto que tienes en mente para tu casa.</h3>
                        </div>
                    </div><!--/.col-md-4-->

                    <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <i class="fa fa-users"></i>
                            <h2>Personal</h2>
                            <h3>Podrá encontrar de inmediato para su necesidad.</h3>
                        </div>
                    </div><!--/.col-md-4-->

                    <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <i class="fa fa-heart"></i>
                            <h2>Testimonios</h2>
                            <h3>Tenemos el respaldo de nuestros usuarios.</h3>
                        </div>
                    </div><!--/.col-md-4-->
                </div><!--/.services-->
            </div><!--/.row-->    
        </div><!--/.container-->
    </section>
    <!--/#feature-->



    </p>

    <!--/#middle-->
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
    <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    &copy; 2017 <a target="_blank" href="http://aspxtemplates.com/" title="Free Twitter Bootstrap asp.net templates">Decter Soluciones</a>. All Rights Reserved.
                </div>
                <div class="col-sm-6">
                    <ul class="pull-right">
                        <li><a href="#">Inicio</a></li>
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


<script type="text/javascript">
        function ShowPopup() {
            $("#btnShowPopup").click();
        }
    </script>  
           </header>



             <div class="modal fade" id="myModal">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content modal-sm">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">
                                <b>Mensaje de Confirmación</b>
                            </h4>
                        </div>
                        <div class="modal-body modal-sm">
                            <asp:Label ID="lblMessage" runat="server" />
                        </div>
                        <div class="modal-footer modal-sm">
                            <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->  

            <button type="button" style="display: none;" id="btnShowPopup" class="btn btn-primary btn-lg"
                data-toggle="modal" data-target="#myModal">
                Launch demo modal
            </button>    


    </form>


</body>
</html>
