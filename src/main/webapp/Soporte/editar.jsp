<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="../imagenes/logo.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar FAQS</title>
        <style>
            body{
                background: url('../imagenes/fondohuehue.png') no-repeat;
            }
        </style>
    </head>
    <body>
                <link rel="stylesheet" href="styleAsistente.css">

                <%
                    String id_FAQ = request.getParameter("cod");
                    Connection cnx = null;
                    Statement sta = null;
                    ResultSet rs = null;

                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        cnx = DriverManager.getConnection("jdbc:mysql://mysql-db-kihon:3306/Kihon?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                        sta = cnx.createStatement();
                        rs = sta.executeQuery("select * from editor where id_FAQ = " + id_FAQ + "");
                        rs.next();
                %>
                <section class="explore">
                    <div class="ini_acci" >

                        <div class="margensito" style="margin-top: 70px; align-content: center; justify-content: center;">
                            <h5 align="center">Editar FAQS:</h5>
                            <table border="1" width="700" align="center" class="tablita" cellSpacing=1 cellPadding=1>

                                <form action="">
                                    <!--
                                    <tr style="color: #001c27; border-radius:10px;">
                                        <td>Id:</td>
                                    -->
                                        <input type="hidden" name="txtcod" value="<%=rs.getString(1)%>" 
                                                   readonly="readonly">
                                    <tr>
                                        <td align="center">Pregunta frecuente:</td>
                                        <td align="center">
                                            <input type="text" name="txttitulo" value="<%=rs.getString(3)%>">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center">Respuesta:</td>
                                        <td align="center">
                                            <input type="text" name="txtcosto" value="<%=rs.getString(4)%>">
                                        </td>
                                    </tr>

                                    <input type="submit" name="btnFAQ" value="Verificar FAQ">
                                    </table>
                                </form>
                                <%} catch (SQLException error) {
                                        out.print(error.toString());
                                    }
                                    if (request.getParameter("btnFAQ") != null) {
                                        String id = request.getParameter("txtcod");
                                        String pregunta = request.getParameter("txttitulo");
                                        String respuesta = request.getParameter("txtcosto");
                                        sta.execute("update editor set preguntaFAQ='" + pregunta + "' where id_FAQ=" + id + "");
                                        sta.execute("update editor set respuestaFAQ='" + respuesta + "' where id_FAQ=" + id + "");
                                        RequestDispatcher rd = request.getRequestDispatcher("listado.jsp");

                                        rd.forward(request, response);

                                        sta.close();
                                        rs.close();
                                        cnx.close();
                                    }
                                %>
                        </div>
                    </div>
                </section>
    </body>
</html>