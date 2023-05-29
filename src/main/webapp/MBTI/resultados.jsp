<%-- 
    Document   : resultados
    Created on : 28/05/2023, 12:53:13 AM
    Author     : jwqui
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <link rel="icon" href="images/fevicon.png" type="image/gif" />
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <!-- Tweaks for older IEs-->
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <!-- owl stylesheets -->
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
        <title>Resultados</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;1,400&display=swap');
            *{
             font-family: 'Poppins', sans-serif;   
            }
            body{
                background: rgb(33,202,205);
                background: rgba(33,202,205,1);
            }
            .datagrid table { 
                border-collapse: collapse;
                text-align: left; 
                width: 100%; 
                
            } 
            .datagrid {
                font: normal 12px/150% Arial, Helvetica, sans-serif;
                background: #fff; 
                overflow: hidden;
                border: 4px solid #09998F;
                -webkit-border-radius: 15px;
                -moz-border-radius: 15px;
                border-radius: 15px; 
            }
            .datagrid table td, .datagrid table th {
                padding: 11px 20px; 
            }
            .datagrid table thead th {
                background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #0F9990), color-stop(1, #0E7B7F) );
                background:-moz-linear-gradient( center top, #0F9990 5%, #0E7B7F 100% );
                filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#0F9990', endColorstr='#0E7B7F');
                background-color:#0F9990; color:#FFFFFF; 
                font-size: 14px;
                font-weight: bold;
                border-left: 0px solid #FFFFFF;
            } 
            .datagrid table thead th:first-child {
                border: none; 
            }
            .datagrid table tbody td {
                color: #00496B;
                font-size: 13px;
                font-weight: normal;
            }
            .datagrid table tbody td:first-child {
                border-left: none; 
            }
            .datagrid table tbody tr:last-child td {
                border-bottom: none; 
            }
            .containerT{
                padding: 200px;
            }
            .titulito{
                color: white;
                justify-content: center;
                text-align: center;
            }
        </style>
    </head>
    <body> <!--estoesunaprueba-->
        <!-- header section start -->
        <div class="header_section">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="logo"><a href="index.html"><img src="imagenes/KihonPNG.png" style="width: 100px;"></a></div>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="index.html">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="infoGeneral/carreras_A1.jsp">Carreras</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="infoGeneral/tipos_personalidad.jsp">Personalidad</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Test-Vocacional/01.jsp">Test Vocacional</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="MBTI/formularioMBTI.jsp">Test de Personalidad</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.html">Contáctanos</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
            <!-- header section end -->
        <section class="containerT">
            
            <h1 class="titulito">¡Éstas son tus carreras!</h1>
        <div class="datagrid">
            <table border="1">
                <thead>
                    <tr>
                        <th>CARRERA</th>
                        <th>MBTI</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${carreras}" var="dato">
                        <tr>
                            <td>${dato.getCarrera()}</td>
                            <td>${dato.getMbti()}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        </section>
    </body>
</html>
