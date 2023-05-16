<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="testVocacional.css"><script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <title>Test Vocacional</title>
    </head>
    <body>
        <header>
            <h1>Test Vocacional</h1>
            <p>¡Descubre tu área de conocimiento!</p>
            <div class="progress">
                <div class="progress__fill" style="width: 0%;"></div>
                <span class="progress__text">0%</span>
            </div>
        </header>
        <div class="container">
            <form id="testVocacional" method="post" action="/Kihon/Test_Vocacional">
                <!--ICFM-->
                <div class="section p1">
                    <h3>1. ¿Disfrutas resolviendo problemas matemáticos y físicos complejos?</h3>
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

                <div class="section p2">
                    <h3>2. ¿Te atrae la idea de trabajar en proyectos de investigación científica?</h3>
                    <label>
                        <input type="radio" value="ICFM" name="p2"> Si
                    </label>
                    <label>
                        <input type="radio" value="0" name="p2"> No
                    </label>
                    <label>
                        <input type="radio" value="ICFM2" name="p2"> Tal vez
                    </label>
                </div>
                <!--CSA-->
                <div class="section p3">
                    <h3>3. ¿Te interesan temas como la psicología, sociología y antropología?</h3>
                    <label>
                        <input type="radio" value="CSA" name="p3"> Si
                    </label>
                    <label>
                        <input type="radio" value="0" name="p3"> No
                    </label>
                    <label>
                        <input type="radio" value="CSA2" name="p3"> Tal vez
                    </label>
                </div>

                <div class="section p4">
                    <h3>4. ¿Eres bueno resolviendo conflictos y mediando entre personas?</h3>
                    <label>
                        <input type="radio" value="CSA" name="p4"> Si
                    </label>
                    <label>
                        <input type="radio" value="0" name="p4"> No
                    </label>
                    <label>
                        <input type="radio" value="CSA2" name="p4"> Tal vez
                    </label>
                </div>
                <!--CMB-->
                <div class="section p5">
                    <h3>5. ¿Te interesa cómo funciona el cuerpo humano y cómo las enfermedades afectan su funcionamiento?</h3>
                    <label>
                        <input type="radio" value="CMB" name="p5"> Si
                    </label>
                    <label>
                        <input type="radio" value="0" name="p5"> No
                    </label>
                    <label>
                        <input type="radio" value="CMB2" name="p5"> Tal vez
                    </label>
                </div>
                <!--HA-->
                <div class="section p6">
                    <h3>6. ¿Te gusta leer y analizar obras literarias y artísticas?</h3>
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
                <input type="hidden" name="accion" value="01">
                <button id="enviar">Siguiente</button>
            </form>
        </div>
    </body>
    <script src="validacion.js"></script>
</html>
