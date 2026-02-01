<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <%
        HttpSession sesion = request.getSession();
        sesion.invalidate();
    %>
    <head>
        <!-- basic -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- mobile metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
        <title>Kihon</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- bootstrap css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Responsive-->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- fevicon -->
        <link rel="icon" href="imagenes/logo.ico"/>
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <!-- Tweaks for older IEs-->
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <!-- owl stylesheets -->
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
        <style>
            .logo {
                width: 45%;
                float: left;
            }

        </style>
    </head>

    <body>
        <!-- header section start -->
        <div class="header_section">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="logo"><a href="inicio.jsp"><img src="imagenes/KihonPNG.png" style="width: 100px;" draggable="false"></a></div>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="inicio.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="infoGeneral/index.html">Información General</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="inicioSesion.html">Iniciar sesión</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="registroUsuario.html">Regístrate</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Soporte/listado_FAQS.jsp">FAQs</a>
                        </li>
                    </ul>
                </div>
            </nav>
            <!-- header section end -->
            <!-- banner section start -->
            <div id="main_slider" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">

                    <div class="carousel-item active">
                        <div class="banner_section">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-6">
                                        <h1 class="banner_taital">Carreras <br><span style="color: #151515;">Profesionales</span></h1>
                                        <p class="banner_text">Aquí te podremos recomendar carreras según tus aptitudes y actitudes.</p>
                                        <div class="btn_main">
                                            <div class="more_bt"><a href="registroUsuario.html">Regístrate</a></div>
                                            <div class="contact_bt"><a href="inicioSesion.html">Inicia sesión</a></div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="image_1"><img src="images/aaaa.png" draggable="false"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <div class="banner_section">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-6">
                                        <h1 class="banner_taital">Personalidad <br><span style="color: #151515;">MBTI</span></h1>
                                        <p class="banner_text">Basándonos en tu personalidad te recomendaremos carreras que te favorezcan.</p>
                                        <div class="btn_main">
                                            <div class="more_bt"><a href="registroUsuario.html">¡Quiero registrarme!</a></div>
                                            <div class="contact_bt"><a href="inicioSesion.html">Iniciar sesión</a></div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="image_1"><img src="images/ola.png" draggable="false"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="banner_section">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-6">
                                        <h1 class="banner_taital">Establece <br><span style="color: #151515;">metas</span></h1>
                                        <p class="banner_text">Proponte metas para lograr tus objetivos y metas profesionales.</p>
                                        <div class="btn_main">
                                            <div class="more_bt"><a href="registroUsuario.html">¡Regístrame ya!</a></div>
                                            <div class="contact_bt"><a href="inicioSesion.html    ">Iniciar sesión</a></div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="image_1"><img src="images/lamp.png" draggable="false"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#main_slider" role="button" data-slide="prev">
                    <i class="fa fa-long-arrow-left" style="font-size:24px; padding-top: 4px;"></i>
                </a>
                <a class="carousel-control-next" href="#main_slider" role="button" data-slide="next">
                    <i class="fa fa-long-arrow-right" style="font-size:24px; padding-top: 4px;"></i>
                </a>
            </div>
        </div>
        <!-- banner section end -->
        <!-- health section start -->
        <div class="health_section layout_padding">
            <div class="container">
                <h1 class="health_taital">¡Alumno del Politécnico, nos interesa tu futuro!</h1>
                <p class="health_text">Sabemos el proceso tan complejo que puede llegar a ser tomar
                    una decisión para elección de carrera, así que reaizamos una serie de tests que te darán una mejor idea.
                </p>
            </div>
        </div>
        <!-- health section end -->
        <!-- knowledge section end -->
        <div class="knowledge_section layout_padding">
            <div class="container">
                <div class="knowledge_main">
                    <div class="left_main">
                        <h1 class="knowledge_taital">¿Por qué es importante establecer metas?</h1>
                        <p class="knowledge_text">Para un mejor desempeño académico y profesional, debes tener un establecimiento de metas básicas, esto te ayudará a organizarte en plazos.</p>
                    </div>
                    <div class="right_main">
                    </div>
                </div>
            </div>
        </div>
        <!-- knowledge section end -->
        <!-- news section start -->
        <div class="news_section layout_padding">
            <div class="container">
                <h1 class="health_taital">¿Qué herramientas usamos para ayudarte?</h1>
                <p class="health_text">Debido a que nos importa tu comodidad, elegimos las siguientes herramientas:</p>
                <div class="news_section_2 layout_padding">
                    <div class="row">
                        <div class="col-lg-4 col-sm-6">
                            <div class="box_main">
                                <div class="icon_1"><img src="images/lapiz.png"></div>
                                <h4 class="daily_text">Test vocacional</h4>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6">
                            <div class="box_main active">
                                <div class="icon_1"><img src="images/user60.png"></div>
                                <h4 class="daily_text">Test de personalidad MBTI</h4>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6">
                            <div class="box_main">
                                <div class="icon_1"><img src="images/marki.png"></div>
                                <h4 class="daily_text">Establecimiento de metas</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- news section end -->
        <!-- footer section start -->
        <div class="footer_section layout_padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-sm-6">
                        <div class="footer_logo"><a href="inicio.jsp"><img src="imagenes/KihonPNG.png"></a></div>
                        <h1 class="adderss_text">Acerca de Nosotros</h1>
                        <div class="Useful_text"><a href="emn_corp.html" style="color: white;">EMN Corp.</a></div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <h1 class="adderss_text">Contáctanos</h1>
                        <div class="map_icon"><img src="images/map-icon.png"><span class="paddlin_left_0">México</span></div>
                        <div class="map_icon"><img src="images/call-icon.png"><span class="paddlin_left_0">+52 55 6874 1814</span></div>
                        <div class="map_icon"><img src="images/mail-icon.png"><span class="paddlin_left_0">comentarios.emn.corp@gmail.com</span></div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <h1 class="adderss_text">Nuestras redes</h1>
                        <div class="social_icon">
                            <ul>
                                <li><a href="https://www.facebook.com/profile.php?id=100086728422788"><img src="images/fb-icon.png"></a></li>
                                <li><a href="https://twitter.com/EMN_Corp?t=ZzFRMA_u_CryASYzMuUDvg&s=09"><img src="images/twitter-icon.png"></a></li>
                                <li><a href="https://www.instagram.com/emn_corp/"><img src="images/instagram-icon.png"></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- footer section end -->
        <!-- copyright section start -->
        <div class="copyright_section">
            <div class="container">
                <p class="copyright_text">Todos los derechos reservados © 2023 <b>EMN Corp.</b> </p>
            </div>
        </div>
        <!-- copyright section end -->
        <!-- Javascript files-->
        <script src="js/jquery.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/jquery-3.0.0.min.js"></script>
        <script src="js/plugin.js"></script>
        <!-- sidebar -->
        <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="js/custom.js"></script>
        <!-- javascript -->
        <script src="js/owl.carousel.js"></script>
        <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
    </body>

</html>