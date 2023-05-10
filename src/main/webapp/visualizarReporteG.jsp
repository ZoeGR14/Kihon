<%-- 
    Document   : visualizarReporte
    Created on : 2/04/2023, 12:29:19 PM
    Author     : jwqui
--%>
<%@page import="Modelo.SoporteDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap');

            *::-webkit-scrollbar {
                width: 9px;
            }

            ::-webkit-scrollbar-thumb:active {
                background: #9140C7;
            }

            *::-webkit-scrollbar-thumb {
                background: #7A40C7;
                border-radius: 15px;
            }

            * {
                font-family: 'Poppins', sans-serif;
                padding: 0;
                margin: 0;
            }

            body {
                display: block;
                align-items: center;
                justify-content: center;
                min-height: 100vh;
                background:#4b277a;
                background-size: cover;
                padding: 5em;
            }

            .titulito {
                font-weight: bold;
                font-size: x-large;
                font-style: normal;
                text-transform: uppercase;
                text-align: center;
            }

            .usuario,
            .descripcion {
                font-size: large;
            }

            .contenidoDes {
                border: 5px solid #ffffff;
                background-color: rgba(255, 255, 255, .3);
                height: 20em;
                width: 95%;
                font-size: 1.6em;
                padding: 20px;
                margin: 0;
                border-radius: 1em;
                margin-bottom: 20px;
                resize: none;
            }

            .solucion {
                border-radius: 1em;
                resize: none;
                width: fit-content;
                height: fit-content;
                font-size: 25px;
                padding: 20px;
                outline: none;
                border: none;
            }

            .descripcion {
                margin-bottom: 50px;
                color: white;
            }

            .botoncito {
                align-items: center;
                appearance: none;
                background-image: radial-gradient(100% 100% at 100% 0, #a454ff 0, #a454ff 100%);
                border: 0;
                border-radius: 6px;
                box-shadow: rgba(45, 35, 66, .4) 0 2px 4px, rgba(45, 35, 66, .3) 0 7px 13px -3px, rgba(58, 65, 111, .5) 0 -3px 0 inset;
                box-sizing: border-box;
                color: #fff;
                cursor: pointer;
                display: inline-flex;
                font-family: "Poppins", sans-serif;
                height: 1.5em;
                justify-content: center;
                line-height: 1;
                list-style: none;
                overflow: hidden;
                padding-left: 16px;
                padding-right: 16px;
                position: relative;
                text-align: left;
                text-decoration: none;
                transition: box-shadow .15s, transform .15s;
                user-select: none;
                -webkit-user-select: none;
                touch-action: manipulation;
                white-space: nowrap;
                will-change: box-shadow, transform;
                font-size: 18px;
            }

            .botoncito:focus {
                box-shadow: #913ce0 0 0 0 1.5px inset, rgba(45, 35, 66, .4) 0 2px 4px, rgba(45, 35, 66, .3) 0 7px 13px -3px, #9e3ce0 0 -3px 0 inset;
            }

            .botoncito:hover {
                box-shadow: rgba(45, 35, 66, .4) 0 4px 8px, rgba(45, 35, 66, .3) 0 7px 13px -3px, #a43ce0 0 -3px 0 inset;
                transform: translateY(-2px);
                background-color: #2f2738;
            }

            .botoncito:active {
                box-shadow: #b13ce0 0 3px 7px inset;
                transform: translateY(2px);
            }
        </style>
        <title>Document</title>
    </head>

    <body>
        <c:choose>
            <c:when test="${not empty sessionScope.gerenteS}">
<link rel="stylesheet" href="headerStyle.css">
        <header class="headersito" id="header">
        <a href="cierreSesion.jsp" class="logoin">
                <img src="imagenes/logo_nimo.png" alt="" class="logoni" draggable="false">
            </a>
            <ul class="nav">
                
                <a href="cierreSesion.jsp" class="">Cerrar Sesión</a>
            </ul>
        </header>
                <form method="post" action="ControlerJ">
                    <p class="titulito">Reporte<br></p>
                    <p class="descripcion">Descipción del reporte:</p>
                    <c:forEach var="datito" items="${lista2}">
                        <div class="desc">
                            <p class="descripcion">${datito.getDescripcion()}</p>
                        </div>
                    </form>
                    <form method="post" action="ControlerZ?accion=resolver">
                        <center>

                            <textarea minlength="30" class="contenidoDes" name="solucion">${datito.getSolucion()}</textarea>
                        </center>
                        <center>
                            <button placeholder="Empieza a escribir aquí..." class="botoncito" name="id_reporte" value="${datito.getId_reporte()}">Enviar solución</button>
                        </center>

                    </form>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <script>location.replace('inicioSPersonal.html');</script>
            </c:otherwise>
        </c:choose>
    </body>

</html>