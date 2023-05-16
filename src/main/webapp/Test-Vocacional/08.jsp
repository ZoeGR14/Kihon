<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="testVocacional.css"><script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <title>Test Vocacional</title>
    </head>
    <body>
        <header>
            <h1>Test Vocacional</h1>
            <p>¡Descubre tu área de conocimiento!</p>
            <div class="progress">
                <div class="progress__fill" style="width: 70%;"></div>
                <span class="progress__text">70%</span>
            </div>
        </header>
        <div class="container">
            <form id="testVocacional" method="post" action="/Kihon/Test_Vocacional">
                <!--ICFM-->
                <div class="section p1">
                    <h3>43. ¿Te atrae la idea de trabajar en la industria o en el sector tecnológico?</h3>
                    <label>
                        <input type="radio" value="ICFM" name="p1"> Si
                    </label>
                    <label>
                        <input type="radio" value="0" name="p1"> No
                    </label>
                    <label>
                        <input type="radio" value="ICFM2" name="p1"> Tal vez
                    </label>
                </div>
                <!--CSA-->
                <div class="section p2">
                    <h3>44. ¿Te gusta estudiar y analizar la economía y los mercados financieros?</h3>
                    <label>
                        <input type="radio" value="CSA" name="p2"> Si
                    </label>
                    <label>
                        <input type="radio" value="0" name="p2"> No
                    </label>
                    <label>
                        <input type="radio" value="CSA2" name="p2"> Tal vez
                    </label>
                </div>
                <!--CMB-->
                <div class="section p3">
                    <h3>45. ¿Eres capaz de tomar decisiones críticas y rápidas en situaciones de emergencia?</h3>
                    <label>
                        <input type="radio" value="CMB" name="p3"> Si
                    </label>
                    <label>
                        <input type="radio" value="0" name="p3"> No
                    </label>
                    <label>
                        <input type="radio" value="CMB2" name="p3"> Tal vez
                    </label>
                </div>

                <div class="section p4">
                    <h3>46. ¿Te gusta estudiar los sistemas de salud y la administración de los mismos?</h3>
                    <label>
                        <input type="radio" value="CMB" name="p4"> Si
                    </label>
                    <label>
                        <input type="radio" value="0" name="p4"> No
                    </label>
                    <label>
                        <input type="radio" value="CMB2" name="p4"> Tal vez
                    </label>
                </div>
                <!--HA-->
                <div class="section p5">
                    <h3>47. ¿Te interesa el cine y las diferentes formas de expresión audiovisual?</h3>
                    <label>
                        <input type="radio" value="HA" name="p5"> Si
                    </label>
                    <label>
                        <input type="radio" value="0" name="p5"> No
                    </label>
                    <label>
                        <input type="radio" value="HA2" name="p5"> Tal vez
                    </label>
                </div>

                <div class="section p6">
                    <h3>48. ¿Eres capaz de trabajar en equipo y colaborar en proyectos?</h3>
                    <label>
                        <input type="radio" value="HA" name="p6"> Si
                    </label>
                    <label>
                        <input type="radio" value="0" name="p6"> No
                    </label>
                    <label>
                        <input type="radio" value="HA2" name="p6"> Tal vez
                    </label>
                </div>
                
                <input type="hidden" name="accion" value="08">
                <button id="enviar">Siguiente</button>
            </form>
        </div>
    </body>
    <script src="validacion.js"></script>
</html>
