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
                    <h3>1. ¿Eres capaz de trabajar en equipo para resolver problemas complejos?</h3>
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
                    <h3>2. ¿Eres bueno comunicando tus ideas y pensamientos?</h3>
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
                    <h3>3. ¿Te atrae la idea de investigar y descubrir nuevas formas de tratamiento para enfermedades?</h3>
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
                    <h3>4. ¿Eres capaz de mantener la concentración durante períodos prolongados de tiempo?</h3>
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
                    <h3>5. ¿Te atrae la idea de trabajar en áreas relacionadas con la historia, la arqueología y la antropología?</h3>
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
                    <h3>6. ¿Eres capaz de apreciar diferentes formas de arte y cultura?</h3>
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
