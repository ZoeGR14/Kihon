<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tipos de personalidades</title>
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
                </div>
                <img src="imagenes/perso.svg" alt="">
            </div>
        </header>


        <section class="personalidades container" id="personalidades">
            <h2>Tipos de personalidades</h2>
            <%
                Connection cnx = null;
                Statement sta = null;
                ResultSet rs = null;

                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/Kihon?autoReconnect=true&useSSL=false", "root", "n0m3l0");
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
