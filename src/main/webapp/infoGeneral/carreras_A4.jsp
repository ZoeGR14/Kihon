<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carreras profesionales- ÁREA 4</title>
        <link rel="stylesheet" href="carreras.css">
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
                        <li><a href="carreras_A1.jsp">Área 1</a></li>
                        <li><a href="carreras_A2.jsp">Área 2</a></li>
                        <li><a href="carreras_A3.jsp">Área 3</a></li>
                        <li><a href="carreras_A4.jsp">Área 4</a></li>                        
                    </ul>
                </nav>
            </div>
            <div class="header-content container">
                <div class="content">
                    <h1>Carreras Profesionales</h1>
                    <br>
                    <h1>ÁREA 4. Humanidades y de las Artes</h1>
                    <p>
                        A continuación se enlistan las carreras universitarias que imparte la Universidad Autónoma de México (UNAM) correspondientes al área 4.
                    </p 
                    <br><br><br><br><br><br><br><br><br><br><br><br><br>
                </div>               
            </div>
        </header>
        <div class="contenedorsito">
            <%
                Connection cnx = null;
                Statement sta = null;
                ResultSet rs = null;

                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/Kihon?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                    sta = cnx.createStatement();

                    rs = sta.executeQuery("select * from carreras_info");

                    while (rs.next()) {
                        if (rs.getString(3).equals("4")) {
            %>

            <div class="card2">
                <p class="price">
                    <%=rs.getString(2)%>
                </p>
                <a href="<%=rs.getString(7)%>" class="action">
                    Ver más
                </a>
                <ul class="lists">
                    <li class="list">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"><g stroke-width="0" id="SVGRepo_bgCarrier"></g><g stroke-linejoin="round" stroke-linecap="round" id="SVGRepo_tracerCarrier"></g><g id="SVGRepo_iconCarrier"> <path fill="#ffffff" d="M21.5821 5.54289C21.9726 5.93342 21.9726 6.56658 21.5821 6.95711L10.2526 18.2867C9.86452 18.6747 9.23627 18.6775 8.84475 18.293L2.29929 11.8644C1.90527 11.4774 1.89956 10.8443 2.28655 10.4503C2.67354 10.0562 3.30668 10.0505 3.70071 10.4375L9.53911 16.1717L20.1679 5.54289C20.5584 5.15237 21.1916 5.15237 21.5821 5.54289Z" clip-rule="evenodd" fill-rule="evenodd"></path> </g></svg>
                        <span><%=rs.getString(6)%></span>
                    </li>
                    <li class="list">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"><g stroke-width="0" id="SVGRepo_bgCarrier"></g><g stroke-linejoin="round" stroke-linecap="round" id="SVGRepo_tracerCarrier"></g><g id="SVGRepo_iconCarrier"> <path fill="#ffffff" d="M21.5821 5.54289C21.9726 5.93342 21.9726 6.56658 21.5821 6.95711L10.2526 18.2867C9.86452 18.6747 9.23627 18.6775 8.84475 18.293L2.29929 11.8644C1.90527 11.4774 1.89956 10.8443 2.28655 10.4503C2.67354 10.0562 3.30668 10.0505 3.70071 10.4375L9.53911 16.1717L20.1679 5.54289C20.5584 5.15237 21.1916 5.15237 21.5821 5.54289Z" clip-rule="evenodd" fill-rule="evenodd"></path> </g></svg>
                        <span>ÁREA 4. Humanidades y de las Artes</span>
                    </li>
                    <li class="list">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"><g stroke-width="0" id="SVGRepo_bgCarrier"></g><g stroke-linejoin="round" stroke-linecap="round" id="SVGRepo_tracerCarrier"></g><g id="SVGRepo_iconCarrier"> <path fill="#ffffff" d="M21.5821 5.54289C21.9726 5.93342 21.9726 6.56658 21.5821 6.95711L10.2526 18.2867C9.86452 18.6747 9.23627 18.6775 8.84475 18.293L2.29929 11.8644C1.90527 11.4774 1.89956 10.8443 2.28655 10.4503C2.67354 10.0562 3.30668 10.0505 3.70071 10.4375L9.53911 16.1717L20.1679 5.54289C20.5584 5.15237 21.1916 5.15237 21.5821 5.54289Z" clip-rule="evenodd" fill-rule="evenodd"></path> </g></svg>
                        <span>IPN, <%=rs.getString(5)%></span>
                    </li>

                    </li>        
                </ul>
            </div>
            <br><br>
            <%
                        }

                    }

                    sta.close();
                    cnx.close();
                    rs.close();
                } catch (SQLException error) {
                }
            %> 
        </div>
    </body>
</html>
