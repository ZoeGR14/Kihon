<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="imagenes/logo.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Información general</title>
        <link rel="stylesheet" href="info_gen.css">
    </head>
    <body>
        <header>
            <div class="menu container">
                <a hred="#" class="logo"></a>
                <input type="checkbox" id="menu">
                <label for="menu">
                    <img src="imagenes/menu-btn.png" class="menu-icono" alt="">
                </label>

                <nav class="navbar">
                    <ul>
                        <li><a href="#">Inicio</a></li>
                        <li><a href="#">Test vocacional</a></li>
                        <li><a href="#">Test de personalidad</a></li>
                        <li><a href="#">Carreras</a></li>
                        <li><a href="#">Metas</a></li>
                    </ul>
                </nav>
            </div>
            <div class="header-content container">
                <div class="content">
                    <h1>Elección de carrera</h1>
                    <p>
                        La vocación es una especie de «llamado» que todas las personas desarrollan para dedicarse en el área
                        que más les gusta, pero para llegar a ese punto es necesario pasar por una serie de etapas que
                        ayudarán a entender cuál carrera es la mejor opción.
                    </p>
                    <a href="https://www.uam.mx/lineauam/lineauam_uni1.htm" class="btn-1">Más información d</a>
                    <a href="https://www.orienta.unam.mx/UNAMORIENTA/pages/conocete.html" class="btn-1">Más información</a>
                </div>
                <img src="imagenes/perso.svg" alt="">
            </div>
        </header>
        <main class="services container" id="test">
            <h2>Test vocacional</h2>
            <br><br>
            <div class="service">

                <img src="imagenes/icon1.svg" alt="">
                <h3>¿Qué es?</h3>
                <p>
                    El test de orientación vocacional ayuda a esclarecer las mejores opciones para tu futuro, basándose en
                    intereses, aptitudes, debilidades, entre otras características personales. El objetivo de esta
                    herramienta es guiar y señalar dónde podrías prosperar profesionalmente.
                </p>

            </div>
            <div class="service">
                <img src="imagenes/icon1.svg" alt="">
                <h3>¿Para qué sirve?</h3>
                <p>
                    La orientación vocacional es un mecanismo que permite acercar a las personas hacia sus futuros
                    profesionales, en base a las características particulares de cada uno, garantizando que se desarrollen
                    en áreas que disfruten y en las que tengan habilidades.
                </p>
            </div>
            <div class="service">
                <img src="imagenes/icon1.svg" alt="">
                <h3>Test de personalidad</h3>
                <p>
                    Permiten identificar en qué carreras y labores puedes desenvolverte con facilidad, según tus
                    características particulares que conforman tu personalidad, como carácter, gustos, afinidades, entre
                    otras.
                </p>
            </div>
            <div class="service">
                <img src="imagenes/icon1.svg" alt="">
                <h3>Test de los intereses</h3>
                <p>
                    Esta estrategia generalmente ocupa el test Holland, método con el que podrás conocer el ámbito en la que
                    mejor te desempeñarías. ¿Cómo funciona? Se combinan hasta 3 de las 6 áreas de trabajo que son: realista,
                    investigador, artístico, social, emprendedor y convencional.
                </p>
            </div>
            <div class="service">
                <img src="imagenes/icon1.svg" alt="">
                <h3>Test de las aptitudes</h3>
                <p>
                    Establecen como te desempeñas en una tarea determinada. Este test no tiene que ver con la personalidad,
                    sino con tu capacidad de resolver tareas específicas de cada área.
                </p>
            </div>
        </main>


        <section class="personalidades container" id="personalidades">
            <h2>Tipos de personalidades</h2>
            <%
                Connection cnx = null;
                Statement sta = null;
                ResultSet rs = null;

                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    cnx = DriverManager.getConnection("jdbc:mysql://mysql-db-kihon:3306/Kihon?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                    sta = cnx.createStatement();
                    rs = sta.executeQuery("select * from tipos_perso");
                    while (rs.next()) {
                        if (rs.getString(3).equals("1")) {
            %>

            <div class="personalidades">
                <img src="" alt="">
                <div class="personalidad 1">
                    <h2>ANALISTAS</h2>
                    <h3><%=rs.getString(2)%></h3>
                    <p><%=rs.getString(4)%></p>                
                    <div>
                        <div class="info-content">
                            <div class="info-text">
                                <p class="resumen"><%=rs.getString(5)%></p>                            
                            </div>
                        </div>
                    </div>
                    <br>
                    <a href="<%=rs.getString(9)%>" class="btn-2">Más información</a>
                    <br><br><br><br>
                </div>            
            </div>                

            <%
            } else {
                if (rs.getString(3).equals("2")) {
            %>
            <div class="personalidades">
                <img src="" alt="">
                <div class="personalidad 1">
                    <h2>DIPLOMÁTICOS</h2>
                    <h3><%=rs.getString(2)%></h3>
                    <p><%=rs.getString(4)%></p>                
                    <div>
                        <div class="info-content">
                            <div class="info-text">
                                <p class="resumen"><%=rs.getString(5)%></p>                            
                            </div>
                        </div>
                    </div>
                    <br>
                    <a href="<%=rs.getString(9)%>" class="btn-2">Más información</a>
                    <br><br><br><br>
                </div>            
            </div>   
            <%
            } else {
                if (rs.getString(3).equals("3")) {
            %>
            <div class="personalidades">
                <img src="" alt="">
                <div class="personalidad 1">
                    <h2>CENTINELAS</h2>
                    <h3><%=rs.getString(2)%></h3>
                    <p><%=rs.getString(4)%></p>                
                    <div>
                        <div class="info-content">
                            <div class="info-text">
                                <p class="resumen"><%=rs.getString(5)%></p>                            
                            </div>
                        </div>
                    </div>
                    <br>
                    <a href="<%=rs.getString(9)%>" class="btn-2">Más información</a>
                    <br><br><br><br>
                </div>            
            </div> 
            <%
            } else {
                if (rs.getString(3).equals("4")) {
            %>
            <div class="personalidades">
                <img src="" alt="">
                <div class="personalidad 1">
                    <h2>EXPLORADORES</h2>
                    <h3><%=rs.getString(2)%></h3>
                    <p><%=rs.getString(4)%></p>                
                    <div>
                        <div class="info-content">
                            <div class="info-text">
                                <p class="resumen"><%=rs.getString(5)%></p>                            
                            </div>
                        </div>
                    </div>
                    <br>
                    <a href="<%=rs.getString(9)%>" class="btn-2">Más información</a>
                    <br><br><br><br>
                </div>            
            </div> 
        </section> 
        <%
            }

        %>

        <section class="personalidades container" id="carreras"> 
            <h2>Carreras por áreas</h2>
            <%rs = sta.executeQuery("select * from carreras_info");

                while (rs.next()) {
                    if (rs.getString(4).equals("1")) {
            %>
            <div class="personalidades">
                <img src="" alt="">
                <div class="personalidad 1">
                    <h3><%=rs.getString(2)%></h3>
                    <p>Área 1: Ingeniería y Ciencias Físico Matemáticas</p>
                    <p>Instituto Politécnico Nacional -IPN</p>
                    <h4>Escuela que la imparte en la Ciudad de México: </h4>
                    <p><%=rs.getString(6)%></p>

                    <div>
                        <div class="info-content">
                            <div class="info-text">
                                <h4>Objetivo: </h4>
                                <p class="resumen"><%=rs.getString(3)%></p>

                            </div>
                        </div>
                    </div>
                    <br>
                    <a href="<%=rs.getString(7)%>">Más información</a>

                    <br><br><br><br>
                </div>

            </div>
            <%
            } else {
                if (rs.getString(3).equals("2")) {
            %>        
            <div class="personalidades">
                <img src="" alt="">
                <div class="personalidad 1">
                    <h3><%=rs.getString(2)%></h3>
                    <p>Área 2: Ciencias Médico Biológicas</p>
                    <p>Instituto Politécnico Nacional -IPN</p>
                    <h4>Escuela que la imparte en la Ciudad de México: </h4>
                    <p><%=rs.getString(6)%></p>

                    <div>
                        <div class="info-content">
                            <div class="info-text">
                                <h4>Objetivo: </h4>
                                <p class="resumen"><%=rs.getString(3)%></p>

                            </div>
                        </div>
                    </div>
                    <br>
                    <a href="<%=rs.getString(7)%>">Más información</a>

                    <br><br><br><br>
                </div>

            </div>
            <%
            } else {
                if (rs.getString(3).equals("3")) {
            %> 
            <div class="personalidades">
                <img src="" alt="">
                <div class="personalidad 1">
                    <h3><%=rs.getString(2)%></h3>
                    <p>Área 3: Ciencias Sociales y Administrativas</p>
                    <p>Instituto Politécnico Nacional -IPN</p>
                    <h4>Escuela que la imparte en la Ciudad de México: </h4>
                    <p><%=rs.getString(6)%></p>

                    <div>
                        <div class="info-content">
                            <div class="info-text">
                                <h4>Objetivo: </h4>
                                <p class="resumen"><%=rs.getString(3)%></p>

                            </div>
                        </div>
                    </div>
                    <br>
                    <a href="<%=rs.getString(7)%>">Más información</a>

                    <br><br><br><br>
                </div>

            </div>
            <%
            } else {
                if (rs.getString(3).equals("4")) {
            %> 
            <div class="personalidades">
                <img src="" alt="">
                <div class="personalidad 1">
                    <h3><%=rs.getString(2)%></h3>
                    <p>Área 4: Humanidades y de las Artes</p>
                    <p>Universidad Nacional Autónoma de México -UNAM</p>
                    <h4>Escuela que la imparte en la Ciudad de México: </h4>
                    <p><%=rs.getString(6)%></p>

                    <div>
                        <div class="info-content">
                            <div class="info-text">
                                <h4>Objetivo: </h4>
                                <p class="resumen"><%=rs.getString(3)%></p>

                            </div>
                        </div>
                    </div>
                    <br>
                    <a href="<%=rs.getString(7)%>">Más información</a>

                    <br><br><br><br>
                </div>

            </div>
        </section>           
        <%
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                sta.close();
                cnx.close();
                rs.close();
            } catch (SQLException error) {
            }
        %> 
        <footer>
            <div class="container" id="habitos">
                <div class="info">
                    <div class="info-content">                    
                        <div class="concepts">
                            <img src="imagenes/icon1.svg" alt="">
                            <h3>Procrastinación</h3>
                            <p>
                                Solución: Establece metas fijas y gestiona tu tiempo, por ejemplo, con la técnica pomodoro para estudiar.
                            </p>                                                 
                        </div>
                        <div class="concepts">
                            <img src="imagenes/icon1.svg" alt="">
                            <h3>Distracciones</h3>
                            <p>
                                Las distracciones en el estudio pueden deberse a diferentes razones. Una de las que más ha crecido en la actualidad es la dependencia al celular. De acuerdo a una encuesta de Motorola publicada en 2019, 54% de los jóvenes mexicanos entre 10 y 19 años pasan la mitad del tiempo con el celular en la mano. Otra razón de las distracciones es la falta de interés en un tema o materia, simplemente no te dan ganas de ocupar tu tiempo en ella.

                                Solución: Platica con tu profesor, cuéntale tu problema. Él debe tener el conocimiento y técnicas para encontrar la forma de motivarte. 
                        </div>
                        <div class="concepts">
                            <img src="imagenes/icon1.svg" alt="">
                            <h3>Falta de organización para estudiar</h3>
                            <p>
                                Solución: Cómprate un calendario y/o agenda. Haz una lista de todas tus actividades y calcula/define cuánto tiempo necesitas para cada una. Ojo, es importante que incluyas detalles como tiempos de traslado u hora de comida.
                            </p>                                                 
                        </div>
                        <div class="concepts">
                            <img src="imagenes/icon1.svg" alt="">
                            <h3>Estudiar solo para el examen</h3>
                            <p>
                                Solución: Fortalece tu curiosidad, haz preguntas de todos los temas que ves en la prepa y busca las respuestas en tus tiempos de estudio. No te aprendas la información, mejor comprende procesos, identifica generalidades y, muy importante, reconoce la importancia que esos conocimientos tienen en tu vida.
                            </p>                                                 
                        </div>
                        <br><br>
                        <div class="info-txt">
                            <h2>Consejos para elimiar los malos hábitos de estudio: </h2>                            
                            <ol>
                                <li>- Crea un nuevo hábito en 60 días, que incluya hacer un repaso diario de tus apuntes y de los temas que viste en la semana.</li>
                                <li>- Procura abrazar una rutina.</li>
                                <li>- Encuentra una manera de disfrutar tu trabajo escolar, como por ejemplo escuchando música que te guste.</li>
                                <li>- Toma descansos.</li>
                                <li>- Desarrolla objetivos realistas.</li>
                                <li>- Siempre apaga o pon tu teléfono inteligente en modo avión durante el tiempo de estudio.</li>
                            </ol>
                            <p>
                                La gestión del tiempo es una habilidad esencial para cualquier estudiante sin importar el grado que curse, de ahí la importancia de crear un horario semanal para equilibrar el tiempo dedicado al estudio, al descanso, a actividades físicas, eventos sociales y familiares, etc. Algunos estudiantes usan un tablero o agenda para estructurar su tiempo de la semana. El buen manejo de este tiempo reduce el estrés, lo que a su vez puede promover un mejor aprendizaje durante el período.
                            </p>       
                            <a href="#" class="btn-1">¡Comienza a organizarte!</a>                            
                        </div>
                    </div>
                    <hr>
                    <div class="enlaces">
                        <img src="" alt="">
                        <div class="enlaces">
                            <li><a href="info_general.jsp#test" class="boton-go">Test de personalidad</a></li>
                            <li><a href="info_general.jsp#personalidades" class="boton-go">Tipos de personalidades</a></li>
                            <li><a href="info_general.jsp#carreras" class="boton-go">Carreras por áreas</a></li>
                            <li><a href="info_general.jsp#habitos" class="boton-go">Hábitos de estudio</a></li>                        
                        </div>                    
                    </div>

                </div>

            </div>
        </footer>        
    </body>
</html>
