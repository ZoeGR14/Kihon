<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
        <link rel="stylesheet" href="loginn.css">
        <style>
            body{
                background-color: #001c27;
            }
        </style>
        <script src="sweetalert2.all.min.js"></script>
    </head>
    <body>    
        <%
            Connection conec = null;
            PreparedStatement pstat = null;
            Statement sta = null;
            ResultSet results = null;
            Connection conec2 = null;
            PreparedStatement pstat2 = null;
            Statement sta2 = null;
            ResultSet results2 = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conec = DriverManager.getConnection("jdbc:mysql://localhost:3306/Kihon?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                pstat = conec.prepareStatement("select * from usuarios where nom_usu=?");
                String usu = request.getParameter("usuario");
                //String contras=request.getParameter("contrasenia");
                pstat.setString(1, usu);
                results = pstat.executeQuery();
                if (results.next()) {
                    out.println("<script>Swal.fire({icon: 'error',title: 'El usuario ya existe',text: 'Inténtelo de nuevo'});</script>");
                    out.println("<script>function saludos(){location.href ='registro.html';}</script>");
                    out.println("<script>setTimeout(saludos, 1500);</script>");
                    pstat.close();
                } else {
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        conec2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/Kihon?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                        pstat2 = conec2.prepareStatement("select * from usuarios where email_usu=?");
                        String correito = request.getParameter("correo");
                        pstat2.setString(1, correito);
                        results2 = pstat2.executeQuery();
                        if (results2.next()) {
                            out.println("<script>Swal.fire({icon: 'error',title: 'El correo ya ha sido registrado con otra cuenta',text: 'Inténtelo de nuevo'});</script>");
                            out.println("<script>function saludos(){location.href ='registro.html';}</script>");
                            out.println("<script>setTimeout(saludos, 1500);</script>");
                            pstat.close();
                        } else {
                            String cor = request.getParameter("correo");
                            String usuar = request.getParameter("usuario");
                            String con = request.getParameter("password");

                            try {
                                sta = conec2.createStatement();

                                sta.executeUpdate("insert into usuarios values('" + usuar + "', '" + con + "', '" + cor + "', 0)");
                                out.println("<script>Swal.fire('Registro dado de alta','','success')</script>");
                                out.println("<script>function saludos(){location.href ='inicioSesion.html';}</script>");
                                out.println("<script>setTimeout(saludos, 1500);</script>");
                                conec.close();
                                sta.close();
                            } catch (SQLException error) {
                                out.println("<script>Swal.fire({icon: 'error',title: 'Algo salió mal',text: 'Inténtelo de nuevo'});</script>");
                                out.println("<script>function saludos(){location.href ='registro.html';}</script>");
                                out.println("<script>setTimeout(saludos, 1500);</script>");
                            }
                        }
                    } catch (SQLException error) {
                        out.println("<script>Swal({icon: 'error',title: 'Ocurrió un error',text: 'Inténtelo de nuevo'});</script>");
                        out.println("<script>function saludos(){location.href ='registro.html';}</script>");
                    }
                }
            } catch (SQLException error) {
                out.println("<script>Swal({icon: 'error',title: 'Ocurrió un error',text: 'Inténtelo de nuevo'});</script>");
                out.println("<script>function saludos(){location.href ='registro.html';}</script>");
                out.println("<script>setTimeout(saludos, 1000);</script>");
            }

        %>        
    </body>
</html>
