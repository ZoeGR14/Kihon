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
            <div class="progressbar">
                <div class="progress">
                    <div class="progress__fill" style="width: 10%;"></div>
                </div>
                    <span class="progress__text">10%</span>
            </div>
        </header>
        <div class="container">
            <form id="testVocacional" method="post" action="/Kihon/Test_Vocacional">
                <!--ICFM-->
                <div class="section p1">
                    <h3>7. ¿Te gusta analizar y procesar datos?</h3>
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
                    <h3>8. ¿Te gusta trabajar en equipo y colaborar en proyectos?</h3>
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
                    <h3>9. ¿Te gusta la biología y la química?</h3>
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
                    <h3>10. ¿Eres bueno en matemáticas y en aplicar la estadística?</h3>
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
                    <h3>11. ¿Eres creativo y tienes habilidades para la escritura, pintura, música, actuación u otras formas de expresión artística?</h3>
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
                    <h3>12. ¿Te gusta el estudio de las lenguas y su evolución histórica?</h3>
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
                
                <input type="hidden" name="accion" value="02">
                <div class="inferior">
                    <button id="enviar">Siguiente</button> 2/10
                </div>
            </form>
        </div>
    </body>
    <script src="validacion.js"></script>
</html>
