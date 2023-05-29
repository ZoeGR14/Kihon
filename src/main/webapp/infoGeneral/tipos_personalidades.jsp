<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Restaurante</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <header>
            <div class="menu container">
                <link rel="stylesheet" href="info_gen.css">
                <a hred="#" class="logo"></a>
                <input type="checkbox" id="menu">
                <label for="menu">
                    <img src="imagenes/menu-btn.png" class="menu-icono" alt="">
                </label>

                <nav class="navbar">
                    <ul>
                        <li><a href="tipos_personalidades.jsp#analistas">Analistas</a></li>
                        <li><a href="tipos_personalidades.jsp#diplomaticos">Diplomáticos</a></li>
                        <li><a href="tipos_personalidades.jsp#centinelas">Centinelas</a></li>
                        <li><a href="tipos_personalidades.jsp#exploradores">Exploradores</a></li>
                    </ul>
                </nav>
            </div>
            <div class="header-content container">
                <link rel="stylesheet" href="info_gen.css">
                <div class="content">
                    <h1>Tipos de personalidades</h1>
                    <br><br><br><br><br><br><br><br><br><br>
                    <br><br><br><br><br><br><br><br><br><br>
                </div>

            </div>

        </header>


        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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
        <section class="dis-sto" id="analistas">
            <div class="container">
                <div class="res-info">


                    <div class="res-des pad-rig">
                        <div class="global">
                            <h2 class="h2-sub">
                                <span class="fil">A</span>nalistas
                            </h2>
                            <h1 class="head hea-dark"><%=rs.getString(2)%></h1>
                            <div class="circle">
                                <i class="fas fa-circle"></i>
                            </div>
                        </div>
                        <p>
                            <%=rs.getString(5)%>
                        </p>
                        <a href="<%=rs.getString(9)%>" class="btn cta-btn">Más información</a>
                    </div>

                </div>
            </div>
        </section>
        <%
        } else {
            if (rs.getString(3).equals("2")) {
        %>



        <section class="dis-sto" id="diplomaticos">
            <div class="container">
                <div class="res-info">


                    <div class="res-des pad-rig">
                        <div class="global">
                            <h2 class="h2-sub">
                                <span class="fil">D</span>iplomáticos
                            </h2>
                            <h1 class="head hea-dark"><%=rs.getString(2)%></h1>
                            <div class="circle">
                                <i class="fas fa-circle"></i>
                            </div>
                        </div>
                        <p>
                            <%=rs.getString(5)%>
                        </p>
                        <a href="<%=rs.getString(9)%>" class="btn cta-btn">Más información</a>
                    </div>

                </div>
            </div>
        </section>
        <%
        } else {
            if (rs.getString(3).equals("3")) {
        %>
        <section class="dis-sto" id="centinelas">
            <div class="container">
                <div class="res-info">


                    <div class="res-des pad-rig">
                        <div class="global">
                            <h2 class="h2-sub">
                                <span class="fil">C</span>entinelas
                            </h2>
                            <h1 class="head hea-dark"><%=rs.getString(2)%></h1>
                            <div class="circle">
                                <i class="fas fa-circle"></i>
                            </div>
                        </div>
                        <p>
                            <%=rs.getString(5)%>
                        </p>
                        <a href="<%=rs.getString(9)%>" class="btn cta-btn">Más información</a>
                    </div>

                </div>
            </div>
        </section>

        <%
        } else {
            if (rs.getString(3).equals("4")) {
        %>      

        <section class="dis-sto" id="exploradores">
            <div class="container">
                <div class="res-info">


                    <div class="res-des pad-rig">
                        <div class="global">
                            <h2 class="h2-sub">
                                <span class="fil">E</span>xploradores
                            </h2>
                            <h1 class="head hea-dark"><%=rs.getString(2)%></h1>
                            <div class="circle">
                                <i class="fas fa-circle"></i>
                            </div>
                        </div>
                        <p>
                            <%=rs.getString(5)%>
                        </p>
                        <a href="<%=rs.getString(9)%>" class="btn cta-btn">Más información</a>
                    </div>

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



    </body>
</html>