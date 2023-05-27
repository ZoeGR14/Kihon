<%@page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="sweetalert2.all.min.js"></script>
        <style>
            body{
                background_color: #001c27;
            }
        </style>
    </head>
    <body>
        <%
            Connection con = null;
            Statement stat = null;
            //Statement stat2 =null;

            ResultSet res = null;
            //ResultSet res2=null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Kihon?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                stat = con.createStatement();
                //stat2 = con.createStatement();

            } catch (SQLException error) {
                out.print(error.toString());
            }
            try {
                String usu = request.getParameter("usuario");
                String contra = request.getParameter("contrasenia");
                res = stat.executeQuery("select*from usuarios where nom_usu='" + usu + "';");

                if (!res.next()) {
                    out.println("<script>Swal.fire({icon: 'error',title: 'Usuario no encontrado',text: 'Inténtelo de nuevo'});</script>");
                    out.println("<script>function saludos(){location.href ='inicioSesion.html';}</script>");
                    out.println("<script>setTimeout(saludos, 1500);</script>");
                } else {

                    if (res.getString("pass_usu").equals(contra)) {
                        String tipotra = res.getString("tipo_usu");
                        HttpSession sesion = request.getSession();
                        sesion.setAttribute("tipo_usuario", tipotra);
                        if (tipotra.equals("1")) {
                            sesion.setAttribute("user", usu);
                            System.out.println(usu);
                            out.println("<script>Swal.fire('Bienvenido','Asistente','success')</script>");
                            out.println("<script>function saludos(){location.href ='Soporte/asistente.jsp';}</script>");
                            out.println("<script>setTimeout(saludos, 1500);</script>");
                        } else if (tipotra.equals("2")) {
                            sesion.setAttribute("gerenteS", usu);
                            System.out.println(usu);
                            out.println("<script>Swal.fire('Bienvenido','Gerente de Soporte','success')</script>");
                            out.println("<script>function saludos(){location.href ='Soporte/reportes.jsp';}</script>");
                            out.println("<script>setTimeout(saludos, 1500);</script>");
                            //response.sendRedirect("reportes.jsp");
                        } else if (tipotra.equals("3")) {
                            sesion.setAttribute("gerenteM", usu);
                            System.out.println(usu);
                            out.println("<script>Swal.fire('Bienvenido','Gerente de Mantenimiento','success')</script>");
                            out.println("<script>function saludos(){location.href ='Soporte/reportesMantenimiento.jsp';}</script>");
                            out.println("<script>setTimeout(saludos, 1500);</script>");
                            //response.sendRedirect("reportesMantenimiento.jsp");
                        } else if (tipotra.equals("4")) {
                            sesion.setAttribute("ingeS", usu);
                            System.out.println(usu);
                            out.println("<script>Swal.fire('Bienvenido','Ingeniero de Soporte','success')</script>");
                            out.println("<script>function saludos(){location.href ='Soporte/reportess.jsp';}</script>");
                            out.println("<script>setTimeout(saludos, 1500);</script>");
                            //response.sendRedirect("reportess.jsp");
                        } else if (tipotra.equals("5")) {
                            sesion.setAttribute("ingeM", usu);
                            System.out.println(usu);
                            out.println("<script>Swal.fire('Bienvenido','Ingeniero de Manntenimiento','success')</script>");
                            out.println("<script>function saludos(){location.href ='Soporte/verRepMan.jsp';}</script>");
                            out.println("<script>setTimeout(saludos, 1500);</script>");
                            //response.sendRedirect("verRepMan.jsp");
                        } else if (tipotra.equals("6")) {
                            System.out.println(usu);
                            sesion.setAttribute("editor", usu);
                            out.println("<script>Swal.fire('Bienvenido','Editor','success')</script>");
                            out.println("<script>function saludos(){location.href ='Soporte/listado.jsp';}</script>");
                            out.println("<script>setTimeout(saludos, 1500);</script>");
                            //response.sendRedirect("editor.jsp");
                        } else if (tipotra.equals("0")) {
                            System.out.println(usu);
                            sesion.setAttribute("editor", usu);
                            out.println("<script>Swal.fire('Bienvenido','¡Gracias por elegir Kihon!','success')</script>");
                            out.println("<script>function saludos(){location.href ='inicio.jsp';}</script>");
                            out.println("<script>setTimeout(saludos, 1500);</script>");
                        }

                    } else {
                        out.println("<script>Swal.fire({icon: 'error',title: 'Contraseña incorrecta',text: 'Inténtelo de nuevo'});</script>");
                        out.println("<script>function saludos(){location.href ='inicioSesion.html';}</script>");
                        out.println("<script>setTimeout(saludos, 1500);</script>");
                    }
                }
            } catch (SQLException error) {
                out.println("<script>Swal.fire({icon: 'error',title: 'Algo salió mal',text: 'Inténtelo de nuevo'});</script>");
                out.println("<script>function saludos(){location.href ='inicioSesion.html';}</script>");
                out.println("<script>setTimeout(saludos, 1500);</script>");
            }
        %>
    </body>
</html>
