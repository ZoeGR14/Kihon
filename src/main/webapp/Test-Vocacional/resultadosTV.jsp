<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Test-Vocacional/testVocacional.css">
        <title>Resultados</title>
    </head>
    <body>
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
        <h1>Áreas:</h1>
        <div class="contenedor">
            <c:forEach var="datito" items="${areas}">
                <div class="box">
                    <div class="percent">
                        <svg>
                        <circle cx="70" cy="70" r="70" class="c1"></circle>
                        <circle cx="70" cy="70" r="70" class="c2" style="stroke-dashoffset: calc(440 - (440 * ${datito.getICFM()}) / 100);"></circle>
                        </svg>
                        <div class="number">
                            <h2>${datito.getICFM()}<span>%</span></h2>
                        </div>
                    </div>
                    <h2 class="text">Ingenierías y Ciencias Físico-Matemáticas</h2>
                </div>
                <div class="box">
                    <div class="percent">
                        <svg>
                        <circle cx="70" cy="70" r="70" class="c1"></circle>
                        <circle cx="70" cy="70" r="70" class="c2" style="stroke-dashoffset: calc(440 - (440 * ${datito.getCSA()}) / 100);"></circle>
                        </svg>
                        <div class="number">
                            <h2>${datito.getCSA()}<span>%</span></h2>
                        </div>
                    </div>
                    <h2 class="text">Ciencias Sociales y Administrativas</h2>
                </div>
                <div class="box">
                    <div class="percent">
                        <svg>
                        <circle cx="70" cy="70" r="70" class="c1"></circle>
                        <circle cx="70" cy="70" r="70" class="c2" style="stroke-dashoffset: calc(440 - (440 * ${datito.getCMB()}) / 100);"></circle>
                        </svg>
                        <div class="number">
                            <h2>${datito.getCMB()}<span>%</span></h2>
                        </div>
                    </div>
                    <h2 class="text">Ciencias <br>Médico-Biológicas</h2>
                </div>
                <div class="box">
                    <div class="percent">
                        <svg>
                        <circle cx="70" cy="70" r="70" class="c1"></circle>
                        <circle cx="70" cy="70" r="70" class="c2" style="stroke-dashoffset: calc(440 - (440 * ${datito.getHA()}) / 100);"></circle>
                        </svg>
                        <div class="number">
                            <h2>${datito.getHA()}<span>%</span></h2>
                        </div>
                    </div>
                    <h2 class="text">Humanidades<br>y Artes</h2>
                </div>
            </c:forEach>

        </div>
        <h1>Carrerras:</h1>
    </body>
</html>
