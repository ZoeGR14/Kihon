<%-- 
    Document   : reportes
    Created on : 2/04/2023, 12:11:59 AM
    Author     : Zoe GR
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Reportes Gerente de Soporte</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="gerentes.css" rel="stylesheet">
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
                <h1 class="usuario">Bienvenido Gerente de Soporte</h1>
                <hr>
                <div id="contenedorReporte">
                <c:if test="${sessionScope.gerenteS eq 'gerenSop1'}">
                    <center id="redirecciones">
                        <h2>Redirecciones de Super Usuario</h2>
                        <button>Gerente de Mantenimiento</button>
                        <button>Ingeniero de Mantenimiento</button>
                        <button>Ingeniero de Soporte</button>
                    </center>
                </c:if>
                    <form action="ControlerZ" method="post">
                        <button name="accion" value="Ver Tabla">Ver tabla</button>
                        <button name="accion" value="Levantar Reporte">Dar de alta un reporte</button>
                    </form>
                    <br>
                    <table border="0">
                        <thead>
                            <tr>
                                <th>ID USUARIO</th>
                                <th>ID REPORTE</th>
                                <th id="desc">DESCRIPCIÓN</th>
                                <th>ESTATUS</th>
                                <th>FECHA</th>
                                <th>SOLUCION</th>
                                <th>ENCARGADO</th>
                                <th id="acciones">ACCIONES</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${lista}">
                                <tr>
                                    <td>${dato.getCliente()}</td>
                                    <td>${dato.getId()}</td>
                                    <td>${dato.getDescripcion()}</td>
                                    <td>${dato.getEstatus()}</td>
                                    <td>${dato.getFecha()}</td>
                                    <td>${dato.getSolucion()}</td>
                                    <td>${dato.getAsignado()}</td>
                                    <td><center>
                                    <c:choose>
                                        <c:when test="${dato.getEstatus() eq 'Abierto' or dato.getEstatus() eq 'Mantenimiento Finalizado'}">
                                        <button class='asignar' value="${dato.getId()}">Asignar</button>
                                        <button class="opciones">Hacerlo yo mismo</button>
                                    </c:when>
                                    <c:otherwise>
                                        <c:choose>
                                            <c:when test="${sessionScope.gerenteS eq dato.getAsignado()}">
                                                <c:if test="${dato.getEstatus() eq 'En Proceso'}">
                                                    <input type="hidden" class="asignar">
                                                    <form method="post" action="ControlerZ?accion=verReporte">
                                                        <button class='solucionar' name="reporte" value="${dato.getId()}">Solucionar</button>
                                                    </form>
                                                    <input type="hidden" class="opciones">
                                                </c:if>
                                                <c:if test="${dato.getEstatus() eq 'Cerrado'}">
                                                    <button class='asignar' disabled>Asignar</button>
                                                    <button class="opciones" disabled>Hacerlo yo mismo</button>
                                                </c:if>

                                                <c:if test="${dato.getEstatus() eq 'En Mantenimiento'}">
                                                    <button class='asignar'>Asignar</button>
                                                    <button class="opciones">Hacerlo yo mismo</button>

                                                </c:if>
                                                <c:if test="${dato.getEstatus() eq 'En Programacion'}">
                                                    <input type="hidden" class="asignar">
                                                    <form method="post" action="ControlerZ?accion=verReporteM">
                                                        <button class='solucionar' name="reporteM" value="${dato.getId()}">Solucionar</button>
                                                    </form>
                                                    <input type="hidden" class="opciones">
                                                </c:if>
                                                <c:if test="${dato.getEstatus() eq 'Programacion Finalizada'}">
                                                    <input type="hidden" class="asignar">
                                                    <form action="ControlerZ?accion=Gerente" method="post">
                                                        <button class='asignar12' name="directo" value="${dato.getId()}">Cambiar estatus</button>
                                                    </form>
                                                    <input type="hidden" class="opciones">
                                                </c:if>
                                            </c:when>
                                            <c:when test="${sessionScope.gerenteS eq sessionScope.gerenteSM}">
                                                <c:choose>
                                                    <c:when test="${dato.getEstatus() eq 'Programacion Finalizada'}">
                                                        <input type="hidden" class="asignar">
                                                        <form action="ControlerZ?accion=Gerente" method="post">
                                                            <button class='asignar12' name="directo" value="${dato.getId()}">Cambiar estatus</button>
                                                        </form>
                                                        <input type="hidden" class="opciones">
                                                    </c:when>
                                                    <c:otherwise>
                                                        <button class='asignar' disabled>Asignar</button>
                                                        <button class="opciones" disabled>Hacerlo yo mismo</button>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:when>
                                            <c:otherwise>
                                                <button class='asignar' disabled>Asignar</button>
                                                <button class="opciones" disabled>Hacerlo yo mismo</button>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:otherwise>
                                </c:choose>
                            </center></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <!--PopUp Asignar Externo-->
                <c:forEach var="datito" items="${lista}">
                    <dialog class="modal">
                        <button class='cerrar'>×</button>
                        <center>
                            <h2>Asignación</h2>
                        </center>
                        <div class='contenedorModal'>
                            <p>ID Reporte: ${datito.getId()}</p>
                            <p>Descripción: ${datito.getDescripcion()}</p>
                            <p>Estatus Actual: ${datito.getEstatus()}</p>
                            <center>
                                <c:choose>
                                    <c:when test="${sessionScope.gerenteS eq datito.getAsignado()}">
                                        <c:if test="${datito.getEstatus() eq 'En Mantenimiento'}">
                                            <form class='formGerenteA' name="formGerenteA" method="post" action='ControlerZ?accion=AceptarA'>
                                                <input type="hidden" class="formGerente">
                                            </c:if>
                                        </c:when>
                                        <c:otherwise>
                                            <form class='formGerente' name="formGerente" method="post" action='ControlerZ?accion=Aceptar'>
                                                <input type="hidden" class="formGerenteA">
                                            </c:otherwise>
                                        </c:choose>
                                        <div class='estatus'>
                                            <span>¿A qué estatus desea cambiar?</span>

                                            <select name='estatus' class="checkEsta">
                                                <option disabled>-Selecciona Estatus-</option>
                                                <c:choose>
                                                    <c:when test="${datito.getEstatus() eq 'Abierto'}">
                                                        <option value='En Mantenimiento'>En Mantenimiento</option>
                                                        <option value='En Proceso'>En Proceso</option>
                                                    </c:when>
                                                    <c:when test="${datito.getEstatus() eq 'En Mantenimiento'}">
                                                        <option value='En Programacion'>En Programacion</option>
                                                    </c:when>
                                                    <c:when test="${datito.getEstatus() eq 'Mantenimiento Finalizado'}">
                                                        <option value='En Proceso'>En Proceso</option>
                                                    </c:when>
                                                </c:choose>
                                            </select>

                                        </div>
                                        <div class='asignacion'>
                                            <span>¿A quién desea asignar este reporte?</span>
                                            <input type="text" name="asignar" class="trabajador" required>
                                            <input type="hidden" value="${datito.getId()}" name="aceptar">
                                        </div>
                                        <button name='aceptado' value='${datito.getId()}' class="aceptar">Aceptar</button>
                                    </form>
                            </center>
                        </div>
                    </dialog>
                </c:forEach>

                <!--PopUp Cambiar Estatus Individual-->
                <c:forEach var="datito" items="${lista}">
                    <dialog class="modal2">
                        <button class='cerrar2'>×</button>
                        <center>
                            <h2>Asignación Individual</h2>
                        </center>
                        <div class='contenedorModal'>
                            <p>ID Reporte: ${datito.getId()}</p>
                            <p>Descripción: ${datito.getDescripcion()}</p>
                            <p>Estatus Actual: ${datito.getEstatus()}</p>
                            <center>
                                <c:choose>
                                    <c:when test="${sessionScope.gerenteS eq datito.getAsignado()}">
                                        <c:if test="${datito.getEstatus() eq 'En Mantenimiento'}">
                                            <form class='formGerente2A' name="formGerente2A" method="post" action='ControlerZ?accion=Aceptar2A'>
                                                <input type="hidden" class="formGerente2">
                                            </c:if>
                                            <c:if test="${datito.getEstatus() eq 'Mantenimiento Finalizado'}">
                                                <form class='formGerente2' name="formGerente2" method="post" action='ControlerZ?accion=Aceptar2'>
                                                    <input type="hidden" class="formGerente2A">
                                                </c:if>
                                            </c:when>
                                            <c:otherwise>
                                                <form class='formGerente2' name="formGerente2" method="post" action='ControlerZ?accion=Aceptar2'>
                                                    <input type="hidden" class="formGerente2A">
                                                </c:otherwise>
                                            </c:choose>
                                            <div class='estatus'>
                                                <span>¿A qué estatus desea cambiar?</span>

                                                <select name='estatus' class="checkEsta2">
                                                    <option disabled>-Selecciona Estatus-</option>
                                                    <c:choose>
                                                        <c:when test="${datito.getEstatus() eq 'Abierto'}">
                                                            <option value='En Mantenimiento'>En Mantenimiento</option>
                                                            <option value='En Proceso'>En Proceso</option>
                                                        </c:when>
                                                        <c:when test="${datito.getEstatus() eq 'En Mantenimiento'}">
                                                            <option value='En Programacion'>En Programacion</option>
                                                        </c:when>
                                                        <c:when test="${datito.getEstatus() eq 'En Programacion'}">

                                                        </c:when>
                                                        <c:when test="${datito.getEstatus() eq 'Programacion Finalizada'}">

                                                        </c:when>
                                                        <c:when test="${datito.getEstatus() eq 'Mantenimiento Finalizado'}">
                                                            <option value='En Proceso'>En Proceso</option>
                                                        </c:when>
                                                    </c:choose>
                                                </select>
                                            </div>
                                            <input type="hidden" value="${datito.getId()}" name="aceptar">
                                            <button name='aceptado' value='${datito.getId()}' class="aceptar">Aceptar</button>
                                        </form>
                                        </center>
                                        </div>
                                        </dialog>
                                    </c:forEach>

                                    </body>
                                    <script src="reportesjs.js"></script>

                                </c:when>
                                <c:otherwise>
                                    <script>location.replace('inicioSPersonal.html');</script>
                                </c:otherwise>
                            </c:choose>
                            </html>

