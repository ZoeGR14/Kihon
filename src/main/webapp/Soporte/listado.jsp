<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="../imagenes/logo.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado FAQS</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap');
            *{
                    font-family: 'Poppins', sans-serif;
            }
            body{
                background: url('../imagenes/fondoo.png') no-repeat;
            }
            .aa{
                color: #357088;
            }
            
        </style>
    </head>
        <body>
            <link rel="stylesheet" href="headerStyle.css">
                <header class="headersito" id="header">
                    <a href="cierreSesion.jsp" class="logoin">
                        <img src="../imagenes/KihonPNG.png" alt="" class="logoni" draggable="false">
                    </a>
                    <ul class="nav">
                        <a href="../ControlerZ">Volver</a>
                    </ul>
                    <ul class="nav">
                        <a href="cierreSesion.jsp" class="">Cerrar Sesión</a>
                    </ul>
                </header>
            <link rel="stylesheet" href="styleAsistente.css">
            <section class="explore">
                 <div class="tablita2" >

                     <div class="margensito" style="margin-top: 70px; align-content: center; justify-content: center;">
                         <h5 align="center">FAQS:</h5>
                         <table border="1" width="700" align="center" class="tablita" cellSpacing=1 cellPadding=1>


                <th>
                    <a class="aa" href="nuevo.jsp">Nueva FAQ</a>
                </th>
                <th>
                    <a class="aa" href="reportesCerrados.jsp">Reportes Cerrados</a>
                </th>
                <tr style="color: #001c27; border-radius:10px;">
                    <th>Id</th>
                    <th>Pregunta frecuente</th>
                    <th>Respuesta</th>
                    <th>Fecha y hora</th>
                </tr>
                <%
                    Connection cnx = null;
                    Statement sta = null;
                    ResultSet rs = null;

                    try{
                        Class.forName("com.mysql.jdbc.Driver");
                        cnx  = DriverManager.getConnection("jdbc:mysql://mysql-db-kihon:3306/Kihon?autoReconnect=true&useSSL=false","root","n0m3l0");
                        sta = cnx.createStatement();
                        rs = sta.executeQuery("select * from editor");
                        while (rs.next()) {   
                            if (rs.getString(5).equals("A")) {                                            
                    %>
                    <tr>
                        <td align="center"><%=rs.getString(1)%></td>
                        <td align="center"><%=rs.getString(3)%></td>
                        <td align="center"><%=rs.getString(4)%></td>
                        <td align="center"><%=rs.getString(2)%></td>
                        <td align="center">
                            <a href="editar.jsp?cod=<%=rs.getString(1)%>">Editar</a>
                            <a href="eliminar.jsp?paso=<%=rs.getString(1)%>">Eliminar</a>
                        </td>                    
                    </tr>
                    <%
                        }
                        else{
                    %>
                    <tr>
                        <td align="center"><%=rs.getString(1)%></td>
                        <td align="center"><%=rs.getString(3)%></td>
                        <td align="center"><%=rs.getString(4)%></td>
                        <td align="center"><%=rs.getString(2)%></td>  
                        <td align="center">                            
                            <a href="eliminar.jsp?paso=<%=rs.getString(1)%>">Eliminar</a>
                        </td>   
                    </tr>
                    <%
                        }
                    
                            }
                            sta.close();
                            cnx.close();
                            rs.close();
                        }
                        catch (SQLException error){
                            out.print(error.toString());
                        }
                    %>
            </table>
                     </div>
                 </div>
            </section>
    </body>
</html>
