<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="testVocacional.css">
        <title>Test Vocacional</title>
    </head>
    <body>
        <header>
            <h1>Test Vocacional</h1>
            <p>¡Descubre tu área de conocimiento!</p>
        </header>
        <div class="container">
            <form>
                <!--ICFM-->
                <div class="section p1">
                    <h3>1. ¿Eres capaz de identificar y solucionar problemas técnicos de manera rápida y efectiva?</h3>
                    <label>
                        <input type="radio" value="ICFM" name="p1"> Si
                    </label>
                    <label>
                        <input type="radio" value="0" name="p1"> No
                    </label>
                    <label>
                        <input type="radio" value="" name="p1"> Tal vez
                    </label>
                </div>
                <!--CSA-->
                <div class="section p2">
                    <h3>2. ¿Eres bueno planificando y organizando tareas y eventos?</h3>
                    <label>
                        <input type="radio" value="" name="p2"> Si
                    </label>
                    <label>
                        <input type="radio" value="0" name="p2"> No
                    </label>
                    <label>
                        <input type="radio" value="" name="p2"> Tal vez
                    </label>
                </div>
                <!--CMB-->
                <div class="section p3">
                    <h3>3. ¿Te interesa la prevención y la promoción de la salud?</h3>
                    <label>
                        <input type="radio" value="" name="p3"> Si
                    </label>
                    <label>
                        <input type="radio" value="0" name="p3"> No
                    </label>
                    <label>
                        <input type="radio" value="" name="p3"> Tal vez
                    </label>
                </div>

                <div class="section p4">
                    <h3>4. ¿Eres capaz de manejar situaciones estresantes y de alta presión?</h3>
                    <label>
                        <input type="radio" value="" name="p4"> Si
                    </label>
                    <label>
                        <input type="radio" value="0" name="p4"> No
                    </label>
                    <label>
                        <input type="radio" value="" name="p4"> Tal vez
                    </label>
                </div>
                <!--HA-->
                <div class="section p5">
                    <h3>5. ¿Eres capaz de identificar patrones en la cultura y las artes?</h3>
                    <label>
                        <input type="radio" value="" name="p5"> Si
                    </label>
                    <label>
                        <input type="radio" value="0" name="p5"> No
                    </label>
                    <label>
                        <input type="radio" value="" name="p5"> Tal vez
                    </label>
                </div>

                <div class="section p6">
                    <h3>6. ¿Te interesa la psicología y cómo se aplica en el arte y la cultura?</h3>
                    <label>
                        <input type="radio" value="" name="p6"> Si
                    </label>
                    <label>
                        <input type="radio" value="0" name="p6"> No
                    </label>
                    <label>
                        <input type="radio" value="" name="p6"> Tal vez
                    </label>
                </div>
                
                <button>Siguiente</button>
            </form>
        </div>
    </body>
</html>
