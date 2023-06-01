<%@page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cuestionario Hábitos y Metas de Estudio</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="estiloCHabMet.css">
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
            *{
                margin: 0;
                padding: 0;
                outline: none;
                font-family: 'Poppins', sans-serif;
            }
            body{
                width: 100%;
                display: flex;
                align-items: center;
                justify-content: center;
                min-height: 100vh;
                background: linear-gradient(to right, #f2fcfe, #1c92d2); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
                background-image: url(../imagenes/metasS.png);
                overflow: hidden;
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment: fixed;
                position: relative;
                overflow: hidden;
            }
            
                        .headersito{
                width: 100%;
               top: 0;
                left: 0;
                font-family: 'Open Sans', sans-serif;
                position: fixed;
                
            }
            
            nav{
                text-align: right;
                padding: 30px 50px 0 0;
            }
            
            nav a{
                color: #ffff;
                font-weight: 300;
                text-decoration: none;
                margin-right: 16px;
            }
            
            nav a:hover{
                color: #92C5FC;
            }
            
            .containerHM{
                width: 1000px;
                background-color: #4B79AB;
                border-radius: 7px;
                text-align: center;
                padding: 30px 35px 30px 35px;
            }
            
            .containerHM header{
                font-size: 28px;
                font-weight: 600;
                margin: 0 0 30px 0;
            }
            
            .containerHM .form-princ{
                width: 1500%;
                overflow: hidden;
            }
            
            .form-princ form{
                display: flex;
                width: 100%;
                    
            }
            
            .form-princ form .pagina{
                width: 6.6%;
                transition: margin-left 0.3s ease-in-out;
            }
            
            .form-princ form .pagina .titulo{
                text-align: left;
                font-size: 25px;
                font-weight: 500;
                color: #f2fcfe;
            }
            
            .form-princ form .pagina .campo{
                height: 55px;
                width: 1000px;
                margin: 40px 0;
                display: flex;
                position: relative;
            }
            
            .form-princ form .pagina .campo .labe{
                position: absolute;
                top: -30px;
                font-weight: 500;
                font-size: 25px;
                font-style: italic;
                float: left;
                text-align: left;
                width: 100%;
            }
            
            .form-princ form .pagina .campo .radio-input{
                width: 100%;
            }
            
            .form-princ form .pagina .campo button{
                width: 100%;
                height: calc(100% + 5px);
                margin-top: -20px;
                border: none;
                color: white;
                background-color: #373B44;
                cursor: pointer;
                border-radius: 7px;
                font-size: 18px;
                font-weight: 500;
                letter-spacing: 1px;
                text-transform: uppercase;
                transition: 0.3s ease;
            }
            
            .form-princ form .pagina .campo button:hover{
                background-color: #f2fcfe;
                color: #373B44;
            }
            
            .form-princ .pagina .btns button.volver{
                margin-right: 3px;
            }
            
            .form-princ .pagina .btns button.adelante{
                margin-left: 3px;
                font-size: 17px;
            }
            
            .form-princ form .pagina .btns button{
                margin-top: -20px!important;
            }
            
            .form-princ .pagina .btns button.volver{
                margin-right: 3px;
            }
            
            .form-princ .pagina .btns button.adelante{
                margin-left: 3px;
                font-size: 17px;
            }
            
            .form-princ .pagina .btns button.fin{
                margin-left: 3px;
                font-size: 17px;
            }
            
            .containerHM .preguntas{
                display: flex;
                margin: 40px 0;
                font-size: 15px;
            }
            
            .containerHM .preguntas .paso{
                text-align: center;
                width: 100%;
                position: relative;
            }
            
            .preguntas .paso p{
                font-size: 17px;
                font-weight: 300;
                color: #000;
                margin-bottom: 8px;
                transition: 0.2s;
            }
            
            .preguntas .paso .num{
                position: relative;
                width: 25px;
                height: 25px;
                border: 2px solid #000;
                border-radius: 50%;
                display: inline-block;
                font-weight: 500;
                font-size: 17px;
                line-height: 25px;
                transition: 0.2s;
            }
            
            .preguntas .paso .num.active{
                border-color: #f2fcfe;
                background-color: #f2fcfe;
                transition: 0.2s;
            }
            
            .preguntas .paso .num span{
                font-weight: 500;
                font-size: 17px;
                line-height: 25px;
                position: absolute;
                left: 50%;
                transform: translateX(-50%);
            }
            
            .preguntas .paso .num.active span{
                display: none;
                transition: 0.2s;
            }
            
            .preguntas .paso .check{
                display: none;
                position: absolute;
                left: 50%;
                top:45%;
                font-size: 17px;
                transform: translate(-50%,-50%);
                transition: 0.2s;
            }
            
            .preguntas .paso .check.active{
                display: unset;
                color: #4B79AB;
                transition: 0.2s;
            }
            
            .preguntas .paso .num:before,
            .preguntas .paso .num:after{
                position: absolute;
                content:'';
                width: 40px;
                height: 3px;
                bottom: 11px;
                right: -40px;
                background-color: #000;         
            }
            
            .preguntas .paso:last-child .num:before,
            .preguntas .paso:last-child .num:after{
                display: none;
            }
            
            .preguntas .paso .num.active:after{
                background-color: #f2fcfe;
                animation: mov_Linea 0.3s linear forwards;
                transform: scaleX(0);
                transform-origin: left;
            }
            
            
            @keyframes mov_Linea{
                100%{
                    transform: scaleX(1);
                }
            }
            
            .uno, .n1{
                display: initial;
            }
            .dos, .tres, .cuatro, .cinco, .seis, .siete, .ocho, .nueve,.diez, .once, .doce, .trece, .catorce, .quince, .c1{
                display: none;
            }
        </style>
    </head>
    <body>
        <header class="headersito">
            <nav>
                            <a href="../index.jsp">Inicio</a>
                <a href="habMet.jsp">Menú</a>
                <a href="cuestHab.jsp">Cuestionario</a>
                <a href="metasSHabMet.jsp">Metas Sugeridas</a>
                <a href="misMetasPHabMet.jsp">Mis Metas</a>
                <a href="cierreSesion.jsp">Cerrar Sesión</a>
            </nav>
        </header>
        <br>
                <%
            HttpSession sesion = request.getSession();
            String usuario;
            String tipo;

            if (sesion.getAttribute("alumno") != null && sesion.getAttribute("tipo_usuario") != null) {
                usuario = sesion.getAttribute("alumno").toString();
                tipo = sesion.getAttribute("tipo_usuario").toString();
                
Connection conx= null;
                                                Statement sta =null;
                                                Statement sta2 =null;
                                                ResultSet res = null;
                                                ResultSet res2 = null;
                                                
try{
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                        conx  = DriverManager.getConnection("jdbc:mysql://localhost:3306/Kihon?autoReconnect=true&useSSL=false","root","n0m3l0");                               
                                                        sta = conx.createStatement();
                                                        sta2 = conx.createStatement();

                                                    }
                                                    catch(SQLException error){
                                                        out.print(error.toString());
                                                    }   
                                                    try{
                                                    
 
                                
                                                        res = sta.executeQuery("select*from respuestas_habiMet where nom_usu='"+usuario+"';");
                                                        if(!res.next()){
                        out.println("<script>Swal.fire({icon: 'warning',title: 'No has contestado',text: ''});</script>");
                        out.println("<script>function saludos(){location.href ='cuestHab.jsp';}</script>");
                        out.println("<script>setTimeout(saludos, 1500);</script>");
                    }
                                                        else{
                                                        
String r1 = res.getString(3);
String r2 = res.getString(4);
String r3 = res.getString(5);
String r4 = res.getString(6);
String r5 = res.getString(7);
String r6 = res.getString(8);
String r7 = res.getString(9);
String r8 = res.getString(10);
String r9 = res.getString(11);
String r10 = res.getString(12);
String r11 = res.getString(13);
String r12 = res.getString(14);
String r13 = res.getString(15);
String r14 = res.getString(16);
String r15 = res.getString(17);


        %>
        <div class="containerHM">
            <header>
                Respuestas <br>
                Hábitos de Estudio y Metas Académicas
            </header>
            
            <div class="preguntas">
                <div class="paso">
                    <div class="num n1">
                        <span>1</span>
                    </div>
                    <div class="check fas fa-check c1"></div>
                </div>
                <div class="paso">
                    <div class="num n2">
                        <span>2</span>
                    </div>
                    <div class="check fas fa-check c2"></div>
                </div>
                <div class="paso">
                    <div class="num n3">
                        <span>3</span>
                    </div>
                    <div class="check fas fa-check c3"></div>
                </div>
                <div class="paso">
                    <div class="num n4">
                        <span>4</span>
                    </div>
                    <div class="check fas fa-check c4"></div>
                </div>
                <div class="paso">
                    <div class="num">
                        <span>5</span>
                    </div>
                    <div class="check fas fa-check"></div>
                </div>
                <div class="paso">
                    <div class="num">
                        <span>6</span>
                    </div>
                    <div class="check fas fa-check"></div>
                </div>
                <div class="paso">
                    <div class="num">
                        <span>7</span>
                    </div>
                    <div class="check fas fa-check"></div>
                </div>
                <div class="paso">
                    <div class="num">
                        <span>8</span>
                    </div>
                    <div class="check fas fa-check"></div>
                </div>
                <div class="paso">
                    <div class="num">
                        <span>9</span>
                    </div>
                    <div class="check fas fa-check"></div>
                </div>
                <div class="paso">
                    <div class="num">
                        <span>10</span>
                    </div>
                    <div class="check fas fa-check"></div>
                </div>
                <div class="paso">
                    <div class="num">
                        <span>11</span>
                    </div>
                    <div class="check fas fa-check"></div>
                </div>
                <div class="paso">
                    <div class="num">
                        <span>12</span>
                    </div>
                    <div class="check fas fa-check"></div>
                </div>
                <div class="paso">
                    <div class="num">
                        <span>13</span>
                    </div>
                    <div class="check fas fa-check"></div>
                </div>
                <div class="paso">
                    <div class="num">
                        <span>14</span>
                    </div>
                    <div class="check fas fa-check"></div>
                </div>
                <div class="paso">
                    <div class="num">
                        <span>15</span>
                    </div>
                    <div class="check fas fa-check"></div>
                </div>
            </div>
            
            <div class="form-princ">
                <form action="agregaresultadoHM_1.jsp" method="post" name="habitos">
                    
                    <div class="pagina movPag uno" id="uno">
                        <div class="titulo">¿Deseas hacer examen de ingreso a alguna Universidad socilicitada?</div>
                        <div class="campo">
                            <div class="labe">
                                <p>A. Sí</p>
                                
                                <p>B. No</p>
                                
                                <p>C. Lo estoy pensando</p>
                            </div>
                        </div>
                        <div class="campo">
                            <div class="radio-input" style="align-items: center; justify-content: center;">
                                <%
                                    if(r1.equals("1")){
                                %><input type="radio" id="val1" name="uno" value="1" checked="true">
                                <label for="val1">A</label>
                                
                                <input type="radio" id="vel1" name="uno" value="2" disabled="true">
                                <label for="vel1">B</label>
                                
                                <input type="radio" id="vil1" name="uno" value="3" disabled="true">
                                <label for="vil1">C</label>
                                <%
                                    }

                                    else if(r1.equals("2")){
                                %><input type="radio" id="val1" name="uno" value="1" disabled="true">
                                <label for="val1">A</label>
                                
                                <input type="radio" id="vel1" name="uno" value="2" checked="true">
                                <label for="vel1">B</label>
                                
                                <input type="radio" id="vil1" name="uno" value="3" disabled="true">
                                <label for="vil1">C</label>
                                <%
                                    }

                                    else if(r1.equals("3")){
                                %><input type="radio" id="val1" name="uno" value="1" disabled="true">
                                <label for="val1">A</label>
                                
                                <input type="radio" id="vel1" name="uno" value="2" disabled="true">
                                <label for="vel1">B</label>
                                
                                <input type="radio" id="vil1" name="uno" value="3" checked="true">
                                <label for="vil1">C</label>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                        <div class="campo sigPag">
                            <button class="adelante-pag2 adelante" type="button">Siguiente</button>
                        </div>
                    </div>
                    
                    <div class="pagina movPag dos">
                        <div class="titulo">¿De qué Área de conocimiento es la carrera que deseas escoger?</div>
                        <div class="campo">
                            <div class="labe">
                                <p>A. Ciencias Físico Matemáticas</p>
                                
                                <p>B. Ciencias Médico Biológicas</p>
                                
                                <p>C. Ciencias Sociales Administrativas / Arte</p>
                            </div>
                        </div>
                        <div class="campo">
                            <div class="radio-input" style="align-items: center; justify-content: center;">
                                <%
                                    if(r2.equals("1")){
                                %>
                                <input type="radio" id="val2" name="dos" value="1" checked="true">
                                <label for="val2">A</label>
                                
                                <input type="radio" id="vel2" name="dos" value="2" disabled="true">
                                <label for="vel2">B</label>
                                
                                <input type="radio" id="vil2" name="dos" value="3" disabled="true">
                                <label for="vil2">C</label>
                                <%
                                    }
                                    else if(r2.equals("2")){
                                %>
                                <input type="radio" id="val2" name="dos" value="1" disabled="true">
                                <label for="val2">A</label>
                                
                                <input type="radio" id="vel2" name="dos" value="2" checked="true">
                                <label for="vel2">B</label>
                                
                                <input type="radio" id="vil2" name="dos" value="3" disabled="true">
                                <label for="vil2">C</label>
                                <%
                                    }
                                    else if(r2.equals("3")){
                                %>
                                <input type="radio" id="val2" name="dos" value="1" disabled="true">
                                <label for="val2">A</label>
                                
                                <input type="radio" id="vel2" name="dos" value="2" disabled="true">
                                <label for="vel2">B</label>
                                
                                <input type="radio" id="vil2" name="dos" value="3" checked="true">
                                <label for="vil2">C</label>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                        <div class="campo btns">
                            <button class="volver-pag1 volver" type="button">Regresar</button>
                            <button class="adelante-pag3 adelante" type="button">Siguiente</button>
                        </div>
                    </div>
                    
                    <div class="pagina movPag tres">
                        <div class="titulo">¿Has estudiado para tu entrada a Nivel Superior?</div>
                        <div class="campo">
                            <div class="labe">
                                <p>A. Sí, ya he comenzado</p>
                                
                                <p>B. No, pero deseo hacerlo</p>
                                
                                <p>C. Lo he intentado, sin resultados</p>
                            </div>
                        </div>
                        <div class="campo">
                            <div class="radio-input" style="align-items: center; justify-content: center;">
                                <%
                                    if(r3.equals("1")){
                                %>
                                <input type="radio" id="val3" name="tres" value="1" checked="true">
                                <label for="val3">A</label>
                                
                                <input type="radio" id="vel3" name="tres" value="2" disabled="true">
                                <label for="vel3">B</label>
                                
                                <input type="radio" id="vil3" name="tres" value="3" disabled="true">
                                <label for="vil3">C</label>
                                <%
                                    }
                                    else if(r3.equals("2")){
                                %>
                                <input type="radio" id="val3" name="tres" value="1" disabled="true">
                                <label for="val3">A</label>
                                
                                <input type="radio" id="vel3" name="tres" value="2" checked="true">
                                <label for="vel3">B</label>
                                
                                <input type="radio" id="vil3" name="tres" value="3" disabled="true">
                                <label for="vil3">C</label>
                                <%
                                    }
                                    else if(r3.equals("3")){
                                %>
                                <input type="radio" id="val3" name="tres" value="1" disabled="true">
                                <label for="val3">A</label>
                                
                                <input type="radio" id="vel3" name="tres" value="2" disabled="true">
                                <label for="vel3">B</label>
                                
                                <input type="radio" id="vil3" name="tres" value="3" checked="true">
                                <label for="vil3">C</label>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                        <div class="campo btns">
                            <button class="volver-pag2 volver" type="button">Regresar</button>
                            <button class="adelante-pag4 adelante" type="button">Siguiente</button>
                        </div>
                    </div>
                    
                    <div class="pagina movPag cuatro">
                        <div class="titulo">¿s?</div>
                        <div class="titulo">¿Tienes dificultades con alguna materia en especial?</div>
                        <div class="campo">
                            <div class="labe">
                                <p>A. Sí, de mi área</p>
                                
                                <p>B. No, todo me es sencillo</p>
                                
                                <p>C. Sí, pero de una distinta área de conocimientos</p>
                            </div>
                        </div>
                        <div class="campo">
                            <div class="radio-input" style="align-items: center; justify-content: center;">
                                <%
                                    if(r4.equals("1")){
                                %>
                                <input type="radio" id="val4" name="cuatro" value="1" checked="true">
                                <label for="val4">A</label>
                                
                                <input type="radio" id="vel4" name="cuatro" value="2" disabled="true">
                                <label for="vel4">B</label>
                                
                                <input type="radio" id="vil4" name="cuatro" value="3" disabled="true">
                                <label for="vil4">C</label>
                                <%
                                    }
                                    else if(r4.equals("2")){
                                %>
                                <input type="radio" id="val4" name="cuatro" value="1" disabled="true">
                                <label for="val4">A</label>
                                
                                <input type="radio" id="vel4" name="cuatro" value="2" checked="true">
                                <label for="vel4">B</label>
                                
                                <input type="radio" id="vil4" name="cuatro" value="3" disabled="true">
                                <label for="vil4">C</label>
                                <%
                                    }
                                    else if(r4.equals("3")){
                                %>
                                <input type="radio" id="val4" name="cuatro" value="1" disabled="true">
                                <label for="val4">A</label>
                                
                                <input type="radio" id="vel4" name="cuatro" value="2" disabled="true">
                                <label for="vel4">B</label>
                                
                                <input type="radio" id="vil4" name="cuatro" value="3" checked="true">
                                <label for="vil4">C</label>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                        <div class="campo btns">
                            <button class="volver-pag3 volver" type="button">Regresar</button>
                            <button class="adelante-pag5 adelante" type="button">Siguiente</button>
                        </div>
                    </div>
                    
                    <div class="pagina movPag cinco">
                        <div class="titulo">¿Sueles descansar el tiempo adecuado para poder estudiar mejor?</div>
                        <div class="campo">
                            <div class="labe">
                                <p>A. Sí, siempre</p>
                                
                                <p>B. No, nunca</p>
                                
                                <p>C. Solo en algunas ocasiones</p>
                            </div>
                        </div>
                        <div class="campo">
                            <div class="radio-input" style="align-items: center; justify-content: center;">
                                <%
                                    if(r5.equals("1")){
                                %>
                                <input type="radio" id="val5" name="cinco" value="1" checked="true">
                                <label for="val5">A</label>
                                
                                <input type="radio" id="vel5" name="cinco" value="2" disabled="true">
                                <label for="vel5">B</label>
                                
                                <input type="radio" id="vil5" name="cinco" value="3" disabled="true">
                                <label for="vil5">C</label>
                                <%
                                    }
                                    else if(r5.equals("2")){
                                %>
                                <input type="radio" id="val5" name="cinco" value="1" disabled="true">
                                <label for="val5">A</label>
                                
                                <input type="radio" id="vel5" name="cinco" value="2" checked="true">
                                <label for="vel5">B</label>
                                
                                <input type="radio" id="vil5" name="cinco" value="3" disabled="true">
                                <label for="vil5">C</label>
                                <%
                                    }
                                    else if(r5.equals("3")){
                                %>
                                <input type="radio" id="val5" name="cinco" value="1" disabled="true">
                                <label for="val5">A</label>
                                
                                <input type="radio" id="vel5" name="cinco" value="2" disabled="true">
                                <label for="vel5">B</label>
                                
                                <input type="radio" id="vil5" name="cinco" value="3" checked="true">
                                <label for="vil5">C</label>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                        <div class="campo btns">
                            <button class="volver-pag4 volver" type="button">Regresar</button>
                            <button class="adelante-pag6 adelante" type="button">Siguiente</button>
                        </div>
                    </div>
                    
                    <div class="pagina movPag seis">
                        <div class="titulo">¿Eres capaz de identificar aquellas áreas de oportunidad que tienes en el estudio?</div>
                        <div class="campo">
                            <div class="labe">
                                <p>A. Sí, siempre</p>
                                
                                <p>B. No realmente</p>
                                
                                <p>C. Trato de hacerlo, pero sigo sin poder</p>
                            </div>
                        </div>
                        <div class="campo">
                            <div class="radio-input" style="align-items: center; justify-content: center;">
                                <%
                                    if(r6.equals("1")){
                                %>
                                <input type="radio" id="val6" name="seis" value="1" checked="true">
                                <label for="val6">A</label>
                                
                                <input type="radio" id="vel6" name="seis" value="2" disabled="true">
                                <label for="vel6">B</label>
                                
                                <input type="radio" id="vil6" name="seis" value="3" disabled="true">
                                <label for="vil6">C</label>
                                <%
                                    }
                                    else if(r6.equals("2")){
                                %>
                                <input type="radio" id="val6" name="seis" value="1" disabled="true">
                                <label for="val6">A</label>
                                
                                <input type="radio" id="vel6" name="seis" value="2" checked="true">
                                <label for="vel6">B</label>
                                
                                <input type="radio" id="vil6" name="seis" value="3" disabled="true">
                                <label for="vil6">C</label>
                                <%
                                    }
                                    else if(r6.equals("3")){
                                %>
                                <input type="radio" id="val6" name="seis" value="1" disabled="true">
                                <label for="val6">A</label>
                                
                                <input type="radio" id="vel6" name="seis" value="2" disabled="true">
                                <label for="vel6">B</label>
                                
                                <input type="radio" id="vil6" name="seis" value="3" checked="true">
                                <label for="vil6">C</label>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                        <div class="campo btns">
                            <button class="volver-pag5 volver" type="button">Regresar</button>
                            <button class="adelante-pag7 adelante" type="button">Siguiente</button>
                        </div>
                    </div>
                    
                    <div class="pagina movPag siete">
                        <div class="titulo">¿w?</div>
                        <div class="titulo">¿Alguna vez has intentado algún método de estuddio como Pomodoro?</div>
                        <div class="campo">
                            <div class="labe">
                                <p>A. Sí, y me gustó</p>
                                
                                <p>B. No, nunca lo he intentado</p>
                                
                                <p>C. Sí, y no me gustó</p>
                            </div>
                        </div>
                        <div class="campo">
                            <div class="radio-input" style="align-items: center; justify-content: center;">
                                <%
                                    if(r7.equals("1")){
                                %>
                                <input type="radio" id="val7" name="siete" value="1" checked="true">
                                <label for="val7">A</label>
                                
                                <input type="radio" id="vel7" name="siete" value="2" disabled="true">
                                <label for="vel7">B</label>
                                
                                <input type="radio" id="vil7" name="siete" value="3" disabled="true">
                                <label for="vil7">C</label>
                                <%
                                    }
                                    else if(r7.equals("2")){
                                %>
                                <input type="radio" id="val7" name="siete" value="1" disabled="true">
                                <label for="val7">A</label>
                                
                                <input type="radio" id="vel7" name="siete" value="2" checked="true">
                                <label for="vel7">B</label>
                                
                                <input type="radio" id="vil7" name="siete" value="3" disabled="true">
                                <label for="vil7">C</label>
                                <%
                                    }
                                    else if(r7.equals("3")){
                                %>
                                <input type="radio" id="val7" name="siete" value="1" disabled="true">
                                <label for="val7">A</label>
                                
                                <input type="radio" id="vel7" name="siete" value="2" disabled="true">
                                <label for="vel7">B</label>
                                
                                <input type="radio" id="vil7" name="siete" value="3" checked="true">
                                <label for="vil7">C</label>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                        <div class="campo btns">
                            <button class="volver-pag6 volver" type="button">Regresar</button>
                            <button class="adelante-pag8 adelante" type="button">Siguiente</button>
                        </div>
                    </div>
                    
                    <div class="pagina movPag ocho">
                        <div class="titulo">¿Piensas que es importante realizar repasos generales sobre todas las materias?</div>
                        <div class="campo">
                            <div class="labe">
                                <p>A. Sí, mucho</p>
                                
                                <p>B. No lo había pensado</p>
                                
                                <p>C. No, es más pérdia de tiempo</p>
                            </div>
                        </div>
                        <div class="campo">
                            <div class="radio-input" style="align-items: center; justify-content: center;">
                                <%
                                    if(r8.equals("1")){
                                %>
                                <input type="radio" id="val8" name="ocho" value="1" checked="true">
                                <label for="val8">A</label>
                                
                                <input type="radio" id="vel8" name="ocho" value="2" disabled="true">
                                <label for="vel8">B</label>
                                
                                <input type="radio" id="vil8" name="ocho" value="3" disabled="true">
                                <label for="vil8">C</label>
                                <%
                                    }
                                    else if(r8.equals("2")){
                                %>
                                <input type="radio" id="val8" name="ocho" value="1" disabled="true">
                                <label for="val8">A</label>
                                
                                <input type="radio" id="vel8" name="ocho" value="2" checked="true">
                                <label for="vel8">B</label>
                                
                                <input type="radio" id="vil8" name="ocho" value="3" disabled="true">
                                <label for="vil8">C</label>
                                <%
                                    }
                                    else if(r8.equals("3")){
                                %>
                                <input type="radio" id="val8" name="ocho" value="1" disabled="true">
                                <label for="val8">A</label>
                                
                                <input type="radio" id="vel8" name="ocho" value="2" disabled="true">
                                <label for="vel8">B</label>
                                
                                <input type="radio" id="vil8" name="ocho" value="3" checked="true">
                                <label for="vil8">C</label>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                        <div class="campo btns">
                            <button class="volver-pag7 volver" type="button">Regresar</button>
                            <button class="adelante-pag9 adelante" type="button">Siguiente</button>
                        </div>
                    </div>
                    
                    <div class="pagina movPag nueve">
                        <div class="titulo">¿Piensas que es importante realizar sesiones largas de estudio?</div>
                        <div class="campo">
                            <div class="labe">
                                <p>A. Sí, es importante</p>
                                
                                <p>B. No, es agobiante</p>
                                
                                <p>C. Sí, solo cuando es muy necesario</p>
                            </div>
                        </div>
                        <div class="campo">
                            <div class="radio-input" style="align-items: center; justify-content: center;">
                                <%
                                    if(r9.equals("1")){
                                %>
                                <input type="radio" id="val9" name="nueve" value="1" checked="true">
                                <label for="val9">A</label>
                                
                                <input type="radio" id="vel9" name="nueve" value="2" disabled="true">
                                <label for="vel9">B</label>
                                
                                <input type="radio" id="vil9" name="nueve" value="3" disabled="true">
                                <label for="vil9">C</label>
                                <%
                                    }
                                    else if(r9.equals("2")){
                                %>
                                <input type="radio" id="val9" name="nueve" value="1" disabled="true">
                                <label for="val9">A</label>
                                
                                <input type="radio" id="vel9" name="nueve" value="2" checked="true">
                                <label for="vel9">B</label>
                                
                                <input type="radio" id="vil9" name="nueve" value="3" disabled="true">
                                <label for="vil9">C</label>
                                <%
                                    }
                                    else if(r9.equals("3")){
                                %>
                                <input type="radio" id="val9" name="nueve" value="1" disabled="true">
                                <label for="val9">A</label>
                                
                                <input type="radio" id="vel9" name="nueve" value="2" disabled="true">
                                <label for="vel9">B</label>
                                
                                <input type="radio" id="vil9" name="nueve" value="3" checked="true">
                                <label for="vil9">C</label>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                        <div class="campo btns">
                            <button class="volver-pag8 volver" type="button">Regresar</button>
                            <button class="adelante-pag10 adelante" type="button">Siguiente</button>
                        </div>
                    </div>
                    
                    
                    <div class="pagina movPag diez">
                        <div class="titulo">En tu último año de bachillerato, tus calificaciones...</div>
                        <div class="campo">
                            <div class="labe">
                                <p>A. Crecieron</p>
                                
                                <p>B. Decrecieron solo un poco</p>
                                
                                <p>C. Decrecieron bastante</p>
                            </div>
                        </div>
                        <div class="campo">
                            <div class="radio-input" style="align-items: center; justify-content: center;">
                                <%
                                    if(r10.equals("1")){
                                %>
                                <input type="radio" id="val10" name="diez" value="1" checked="true">
                                <label for="val10">A</label>
                                
                                <input type="radio" id="vel10" name="diez" value="2" disabled="true">
                                <label for="vel10">B</label>
                                
                                <input type="radio" id="vil10" name="diez" value="3" disabled="true">
                                <label for="vil10">C</label>
                                <%
                                    }
                                    else if(r10.equals("2")){
                                %>
                                <input type="radio" id="val10" name="diez" value="1" disabled="true">
                                <label for="val10">A</label>
                                
                                <input type="radio" id="vel10" name="diez" value="2" checked="true">
                                <label for="vel10">B</label>
                                
                                <input type="radio" id="vil10" name="diez" value="3" disabled="true">
                                <label for="vil10">C</label>
                                <%
                                    }
                                    else if(r10.equals("3")){
                                %>
                                <input type="radio" id="val10" name="diez" value="1" disabled="true">
                                <label for="val10">A</label>
                                
                                <input type="radio" id="vel10" name="diez" value="2" disabled="true">
                                <label for="vel10">B</label>
                                
                                <input type="radio" id="vil10" name="diez" value="3" checked="true">
                                <label for="vil10">C</label>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                        <div class="campo btns">
                            <button class="volver-pag9 volver" type="button">Regresar</button>
                            <button class="adelante-pag11 adelante" type="button">Siguiente</button>
                        </div>
                    </div>
                    
                    <div class="pagina movPag once">
                        <div class="titulo">En tu último año de bachillerato, tu rendimiento se vio afectado...</div>
                        <div class="campo">
                            <div class="labe">
                                <p>A. Positivamente</p>
                                
                                <p>B. Negativamente</p>
                                
                                <p>C. No se vio afectado</p>
                            </div>
                        </div>
                        <div class="campo">
                            <div class="radio-input" style="align-items: center; justify-content: center;">
                                <%
                                    if(r11.equals("1")){
                                %>
                                <input type="radio" id="val11" name="once" value="1" checked="true">
                                <label for="val11">A</label>
                                
                                <input type="radio" id="vel11" name="once" value="2" disabled="true">
                                <label for="vel11">B</label>
                                
                                <input type="radio" id="vil11" name="once" value="3" disabled="true">
                                <label for="vil11">C</label>
                                <%
                                    }
                                    else if(r11.equals("2")){
                                %>
                                <input type="radio" id="val11" name="once" value="1" disabled="true">
                                <label for="val11">A</label>
                                
                                <input type="radio" id="vel11" name="once" value="2" checked="true">
                                <label for="vel11">B</label>
                                
                                <input type="radio" id="vil11" name="once" value="3" disabled="true">
                                <label for="vil11">C</label>
                                <%
                                    }
                                    else if(r11.equals("3")){
                                %>
                                <input type="radio" id="val11" name="once" value="1" disabled="true">
                                <label for="val11">A</label>
                                
                                <input type="radio" id="vel11" name="once" value="2" disabled="true">
                                <label for="vel11">B</label>
                                
                                <input type="radio" id="vil11" name="once" value="3" checked="true">
                                <label for="vil11">C</label>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                        <div class="campo btns">
                            <button class="volver-pag10 volver" type="button">Regresar</button>
                            <button class="adelante-pag12 adelante" type="button">Siguiente</button>
                        </div>
                    </div>
                    
                    <div class="pagina movPag doce">
                        <div class="titulo">El factor de la Uiversidad, ha influído en ti de manera...</div>
                        <div class="campo">
                            <div class="labe">
                                <p>A. Positiva, me anima a estudiar</p>
                                
                                <p>B. No ha influido</p>
                                
                                <p>C. Negativa, solo me ha estresado</p>
                            </div>
                        </div>
                        <div class="campo">
                            <div class="radio-input" style="align-items: center; justify-content: center;">
                                <%
                                    if(r12.equals("1")){
                                %>
                                <input type="radio" id="val12" name="doce" value="1" checked="true">
                                <label for="val12">A</label>
                                
                                <input type="radio" id="vel12" name="doce" value="2" disabled="true">
                                <label for="vel12">B</label>
                                
                                <input type="radio" id="vil12" name="doce" value="3" disabled="true">
                                <label for="vil12">C</label>
                                <%
                                    }
                                    else if(r12.equals("2")){
                                %>
                                <input type="radio" id="val12" name="doce" value="1" disabled="true">
                                <label for="val12">A</label>
                                
                                <input type="radio" id="vel12" name="doce" value="2" checked="true">
                                <label for="vel12">B</label>
                                
                                <input type="radio" id="vil12" name="doce" value="3" disabled="true">
                                <label for="vil12">C</label>
                                <%
                                    }
                                    else if(r12.equals("3")){
                                %>
                                <input type="radio" id="val12" name="doce" value="1" disabled="true">
                                <label for="val12">A</label>
                                
                                <input type="radio" id="vel12" name="doce" value="2" disabled="true">
                                <label for="vel12">B</label>
                                
                                <input type="radio" id="vil12" name="doce" value="3" checked="true">
                                <label for="vil12">C</label>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                        <div class="campo btns">
                            <button class="volver-pag11 volver" type="button">Regresar</button>
                            <button class="adelante-pag13 adelante" type="button">Siguiente</button>
                        </div>
                    </div>
                    
                    <div class="pagina movPag trece">
                        <div class="titulo">¿Estudias frecuentemente los tem,as que ves en clases?</div>
                        <div class="campo">
                            <div class="labe">
                                <p>A. Si, bastante</p>
                                
                                <p>B. No mucho</p>
                                
                                <p>C. No, para nada</p>
                            </div>
                        </div>
                        <div class="campo">
                            <div class="radio-input" style="align-items: center; justify-content: center;">
                                <%
                                    if(r13.equals("1")){
                                %>
                                <input type="radio" id="val13" name="trece" value="1" checked="true">
                                <label for="val13">A</label>
                                
                                <input type="radio" id="vel13" name="trece" value="2" disabled="true">
                                <label for="vel13">B</label>
                                
                                <input type="radio" id="vil13" name="trece" value="3" disabled="true">
                                <label for="vil13">C</label>
                                <%
                                    }
                                    else if(r13.equals("2")){
                                %>
                                <input type="radio" id="val13" name="trece" value="1" disabled="true">
                                <label for="val13">A</label>
                                
                                <input type="radio" id="vel13" name="trece" value="2" checked="true">
                                <label for="vel13">B</label>
                                
                                <input type="radio" id="vil13" name="trece" value="3" disabled="true">
                                <label for="vil13">C</label>
                                <%
                                    }
                                    else if(r13.equals("3")){
                                %>
                                <input type="radio" id="val13" name="trece" value="1" disabled="true">
                                <label for="val13">A</label>
                                
                                <input type="radio" id="vel13" name="trece" value="2" disabled="true">
                                <label for="vel13">B</label>
                                
                                <input type="radio" id="vil13" name="trece" value="3" checked="true">
                                <label for="vil13">C</label>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                        <div class="campo btns">
                            <button class="volver-pag12 volver" type="button">Regresar</button>
                            <button class="adelante-pag14 adelante" type="button">Siguiente</button>
                        </div>
                    </div>
                    
                    <div class="pagina movPag catorce">
                        <div class="titulo">¿Te gusta estudiar de manera autónoma?</div>
                        <div class="campo">
                            <div class="labe">
                                <p>A. Sí, lo prefiero</p>
                                
                                <p>B. No me afecta</p>
                                
                                <p>C. No, de esa manera no aprendo</p>
                            </div>
                        </div>
                        <div class="campo">
                            <div class="radio-input" style="align-items: center; justify-content: center;">
                                <%
                                    if(r14.equals("1")){
                                %>
                                <input type="radio" id="val14" name="catorce" value="1" checked="true">
                                <label for="val14">A</label>
                                
                                <input type="radio" id="vel14" name="catorce" value="2" disabled="true">
                                <label for="vel14">B</label>
                                
                                <input type="radio" id="vil14" name="catorce" value="3" disabled="true">
                                <label for="vil14">C</label>
                                <%
                                    }
                                    else if(r14.equals("2")){
                                %>
                                <input type="radio" id="val14" name="catorce" value="1" disabled="true">
                                <label for="val14">A</label>
                                
                                <input type="radio" id="vel14" name="catorce" value="2" checked="true">
                                <label for="vel14">B</label>
                                
                                <input type="radio" id="vil14" name="catorce" value="3" disabled="true">
                                <label for="vil14">C</label>
                                <%
                                    }
                                    else if(r14.equals("3")){
                                %>
                                <input type="radio" id="val14" name="catorce" value="1" disabled="true">
                                <label for="val14">A</label>
                                
                                <input type="radio" id="vel14" name="catorce" value="2" disabled="true">
                                <label for="vel14">B</label>
                                
                                <input type="radio" id="vil14" name="catorce" value="3" checked="true">
                                <label for="vil14">C</label>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                        <div class="campo btns">
                            <button class="volver-pag13 volver" type="button">Regresar</button>
                            <button class="adelante-pag15 adelante" type="button">Siguiente</button>
                        </div>
                    </div>
                    
                    <div class="pagina movPag quince">
                        <div class="titulo">Finalmente, ¿te comprometerías a estudiar arduamente para ser exitoso?</div>
                        <div class="campo">
                            <div class="labe">
                                <p>A. Sí, es mi objetivo</p>
                                
                                <p>B. No podría, pero lo intento</p>
                                
                                <p>C. No, no puedo estudiar así</p>
                            </div>
                        </div>
                        <div class="campo">
                            <div class="radio-input" style="align-items: center; justify-content: center;">
                                <%
                                    if(r15.equals("1")){
                                %>
                                <input type="radio" id="val15" name="quince" value="1" checked="true">
                                <label for="val15">A</label>
                                
                                <input type="radio" id="vel15" name="quince" value="2" disabled="true">
                                <label for="vel15">B</label>
                                
                                <input type="radio" id="vil15" name="quince" value="3" disabled="true">
                                <label for="vil15">C</label>
                                <%
                                    }
                                    else if(r15.equals("2")){
                                %>
                                <input type="radio" id="val15" name="quince" value="1" disabled="true">
                                <label for="val15">A</label>
                                
                                <input type="radio" id="vel15" name="quince" value="2" checked="true">
                                <label for="vel15">B</label>
                                
                                <input type="radio" id="vil15" name="quince" value="3" disabled="true">
                                <label for="vil15">C</label>
                                <%
                                    }
                                    else if(r15.equals("3")){
                                %>
                                <input type="radio" id="val15" name="quince" value="1" disabled="true">
                                <label for="val15">A</label>
                                
                                <input type="radio" id="vel15" name="quince" value="2" disabled="true">
                                <label for="vel15">B</label>
                                
                                <input type="radio" id="vil15" name="quince" value="3" checked="true">
                                <label for="vil15">C</label>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                        <div class="campo btns">
                            <button type="button" class="volver-pag14 volver">Regresar</button>
                        </div>
                    </div>                    
                </form>
            </div>
        </div>
    
        <script src="movimientoHM.js"></script>
        
                <%
                    }
conx.close();
                                                        sta.close();
                                                        sta2.close();
                                                    }
                                                    catch(SQLException error){
                                                        out.println("<script>Swal.fire({icon: 'error',title: 'Ocurrió un error',text: 'Inténtelo de nuevo'});</script>");
                    out.println("<script>function saludos(){location.href ='habMet.jsp';}</script>");
                    out.println("<script>setTimeout(saludos, 1500);</script>");}
}else {
                out.print("<script>location.replace('ini_sesion.jsp');</script>");
            }
        %>
    </body>
</html>