<%@page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reportes</title>
        <script src="sweetalert2.all.min.js"></script>
        <link rel="stylesheet" href="loginn.css">
        <style>
            body{
                background: url('imagenes/fondohuehue.png') no-repeat;
            }
        </style>
    </head>
    <body>
        <%            
                Connection con= null;
                Statement stat =null;
                //Statement stat2 =null;
                
                
                ResultSet res=null;
                //ResultSet res2=null;
                

                
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/baseDatSop?autoReconnect=true&useSSL=false","root","n0m3l0");                               
                    stat = con.createStatement();
                    //stat2 = con.createStatement();
                    
                }
                catch(SQLException error){
                    out.print(error.toString());
                }
                try{
                    String usu=request.getParameter("usuario");
                    
                    res=stat.executeQuery("select*from clientes where cliente='"+usu+"';");
                    
                    if(!res.next()){
                        out.println("<script>Swal.fire({icon: 'error',title: 'Usuario no encontrado',text: 'Inténtelo de nuevo'});</script>");
                        out.println("<script>function saludos(){location.href ='asistente.jsp';}</script>");
                        out.println("<script>setTimeout(saludos, 1500);</script>");
                    }
                    else{
                    out.println("<br><br>");
                                        out.println("<div class='login-card-container'>");
                                        out.println("<div class='login-card'>");
                                        out.println("<div class='login-card-header'>");
                                        out.println("<h1>Usuario encontrado</h1>");
                                        out.println("<div>Redirigiendo al formulario de reportes</div>");
                                        out.println("</div>");
                                        out.println("<form name='reportitos' action='levantarReportes.jsp' method='post' class='login-card-form'>");
                                        out.println("<input type='hidden' name='nusuar' value='"+usu+"'><br><br>"); 
                                        out.println("<button type='submit' name='vamos' id='boton' value='Siguiente'>Cargar</button>");
                                        out.println("</form>");
                                        out.println("</div>");
                                        out.println("</div>");
                    }
            }
                
                catch(SQLException error){
                    out.println("<script>Swal.fire({icon: 'error',title: 'Algo salió mal',text: 'Inténtelo de nuevo'});</script>");
                    out.println("<script>function saludos(){location.href ='asistente.jsp';}</script>");
                    out.println("<script>setTimeout(saludos, 1500);</script>");
                }
             %>
    </body>
</html>
