<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Test-Vocacional/testVocacional.css">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <title>Historial</title>
    </head>
    <body>
        <header>
            <h1>Historial de Resultados</h1><br>
            <p>Aquí se encuentran todos tus resultados obtenidos</p>
        </header>
        <button class="historial" onclick="location.href = 'Test_Vocacional?ver=resultados'"><i class='bx bx-arrow-back'></i><b>Regresar</b></button>
        <c:forEach items="${historial}" var="datito" varStatus="status">
            <h1>Registro ${status.index + 1}</h1>
            <div class="contenedor">
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
                <br>
            </div>
        </c:forEach>
    </body>
</html>
