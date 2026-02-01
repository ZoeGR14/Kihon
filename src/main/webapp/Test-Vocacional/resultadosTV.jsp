<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="imagenes/logo.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Test-Vocacional/testVocacional.css">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <title>Resultados</title>
    </head>
    <body>
        <button class="inicio-btn" onclick="location.href = './inicio.jsp'" style="position: fixed; top: 20px; left: 20px; z-index: 1000;"><i class='bx bx-home'></i><b> Inicio</b></button>
        <header>
            <h1>Resultados del Test</h1>
            <p>¡Estos son tus resultados!</p>
            <div class="progressbar">
                <div class="progress">
                    <div class="progress__fill" style="width: 100%;"></div>
                </div>
                <span class="progress__text">100%</span>
            </div>
        </header>
        <button class="historial" onclick="location.href = 'Test_Vocacional?ver=historial'"><i class='bx bx-history'></i><b>Historial</b></button>
        <h1>Áreas:</h1>
        <div class="contenedor">
            <c:forEach var="datito" items="${areas}">
                <div class="box">
                    <div class="percent">
                        <svg>
                        <circle cx="70" cy="70" r="70" class="c1"></circle>
                        <circle cx="70" cy="70" r="70" class="c2" style="stroke-dashoffset: calc(440 - (440 * ${datito.getICFM()}) / 100);
                                <c:if test="${fn:contains(areaMayor, 'ICFM')}">stroke: #228B22;</c:if> ">
                                </circle>
                                </svg>
                                <div class="number">
                                    <h2>${datito.getICFM()}<span>%</span></h2>
                        </div>
                    </div>
                    <h2 class="text">Ingenierías y Ciencias Físico-Matemáticas (ICFM)</h2>
                </div>
                <div class="box">
                    <div class="percent">
                        <svg>
                        <circle cx="70" cy="70" r="70" class="c1"></circle>
                        <circle cx="70" cy="70" r="70" class="c2" style="stroke-dashoffset: calc(440 - (440 * ${datito.getCSA()}) / 100);
                                <c:if test="${fn:contains(areaMayor, 'CSA')}">stroke: #228B22;</c:if> ">
                                </circle>
                                </svg>
                                <div class="number">
                                    <h2>${datito.getCSA()}<span>%</span></h2>
                        </div>
                    </div>
                    <h2 class="text">Ciencias Sociales y Administrativas <br>(CSA)</h2>
                </div>
                <div class="box">
                    <div class="percent">
                        <svg>
                        <circle cx="70" cy="70" r="70" class="c1"></circle>
                        <circle cx="70" cy="70" r="70" class="c2" style="stroke-dashoffset: calc(440 - (440 * ${datito.getCMB()}) / 100);
                               <c:if test="${fn:contains(areaMayor, 'CMB')}">stroke: #228B22;</c:if> ">
                        </circle>
                        </svg>
                        <div class="number">
                            <h2>${datito.getCMB()}<span>%</span></h2>
                        </div>
                    </div>
                    <h2 class="text">Ciencias <br>Médico-Biológicas (CMB)</h2>
                </div>
                <div class="box">
                    <div class="percent">
                        <svg>
                        <circle cx="70" cy="70" r="70" class="c1"></circle>
                        <circle cx="70" cy="70" r="70" class="c2" style="stroke-dashoffset: calc(440 - (440 * ${datito.getHA()}) / 100);
                                <c:if test="${fn:contains(areaMayor, 'HA')}">stroke: #228B22;</c:if> ">
                        </circle>
                        </svg>
                        <div class="number">
                            <h2>${datito.getHA()}<span>%</span></h2>
                        </div>
                    </div>
                    <h2 class="text">Humanidades<br>y Artes <br>(HA)</h2>
                </div>
            </c:forEach>

        </div>
        <h1>Carreras:</h1>
        <div class="tabla">
            <table class="tablaResultados">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Nombre de la carrera</th>
                        <th>Institución</th>
                        <th>Área</th>
                    </tr>
                </thead>
                <tbody>
                    <c:set var="num" value="${0}"/>
                    <c:forEach items="${carreras}" var="elementos2" varStatus="status2">
                        <c:forEach items="${elementos2}" var="elementos" varStatus="status">
                        <c:set var="num" value="${num + 1}"/>
                            <tr>
                                <td id="number"><b>${num}</b></td>
                                <td id="carrera">${elementos}</td>
                                <td id="insti">
                                    <c:choose>
                                        <c:when test="${areaMayor[status2.index] eq 'HA'}">
                                            Universidad Autónoma de México
                                        </c:when>
                                        <c:otherwise>
                                            Instituto Politécnico Nacional
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td id="area">${areaMayor[status2.index]}</td>
                            </tr>
                        </c:forEach>
                    </c:forEach>
                </tbody>
            </table>
        </div>

    </body>
</html>
