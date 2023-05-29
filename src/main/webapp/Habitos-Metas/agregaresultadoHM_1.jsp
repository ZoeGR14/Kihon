<%@page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Guarda 115</title>
        <style>@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Archivo+Black&display=swap');
            *{
                font-family: 'Poppins', sans-serif;
            }
            body{
                background-color: #4B79AB;
            }
            </style>
            <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </head>
    <body>
 <%
            HttpSession sesion = request.getSession();
            String usuario;
            String tipo;
            
            if(sesion.getAttribute("alumno")!=null && sesion.getAttribute("tipo_usuario")!=null){
                usuario = sesion.getAttribute("alumno").toString();
                tipo = sesion.getAttribute("tipo_usuario").toString();
            
        
                Connection conx= null;
                                                Statement sta =null;
                                                Statement sta2 =null;
                                                ResultSet res = null;
                                                ResultSet res2 = null;
                                                
                                                int val1 = Integer.parseInt(request.getParameter("uno"));
                                                    int val2 = Integer.parseInt(request.getParameter("dos"));
                                                    int val3 = Integer.parseInt(request.getParameter("tres"));
                                                    int val4 = Integer.parseInt(request.getParameter("cuatro"));
                                                    int val5 = Integer.parseInt(request.getParameter("cinco"));
                                                    int val6 = Integer.parseInt(request.getParameter("seis"));
                                                    int val7 = Integer.parseInt(request.getParameter("siete"));
                                                    int val8 = Integer.parseInt(request.getParameter("ocho"));
                                                    int val9 = Integer.parseInt(request.getParameter("nueve"));
                                                    int val10 = Integer.parseInt(request.getParameter("diez"));
                                                    int val11 = Integer.parseInt(request.getParameter("once"));
                                                    int val12 = Integer.parseInt(request.getParameter("doce"));
                                                    int val13 = Integer.parseInt(request.getParameter("trece"));
                                                    int val14 = Integer.parseInt(request.getParameter("catorce"));
                                                    int val15 = Integer.parseInt(request.getParameter("quince"));
                                                    
                                                    int suma = val1 + val2 + val3 + val4 + val5 + val6 + val7 + val8 + val9 + val10 + val11 + val12 + val13 + val14 + val15;
                                                    String rango = null;
                                                    
                                                    if(suma>=15 && suma<=25){rango = "W";}
                                                    else if(suma>=26 && suma<=35){rango = "X";}
                                                    else if(suma>=36 && suma<=45){rango = "Y";}
                                                
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
                                                    
 
                                
                                                        res = sta.executeQuery("select*from usuarios where nom_usu='"+usuario+"';");
                                                        if(!res.next()){
                        out.println("<script>Swal.fire({icon: 'error',title: 'No es usuario',text: 'Inténtelo de nuevo'});</script>");
                        out.println("<script>function saludos(){location.href ='habMet.jsp';}</script>");
                        out.println("<script>setTimeout(saludos, 1500);</script>");
                    }
                                                        else{
                                                            try{
                                                            
                                                            
                                                            res2 = sta2.executeQuery("select*from metasRango where id_rangoHM='"+rango+"';");
                                                            if(!res2.next()){
                        out.println("<script>Swal.fire({icon: 'error',title: 'No hay metas',text: 'Inténtelo de nuevo'});</script>");
                        out.println("<script>function saludos(){location.href ='habMet.jsp';}</script>");
                        out.println("<script>setTimeout(saludos, 1500);</script>");
                    }
                                                        else{
                                                        
                                                        String m1 = res2.getString(2);
                                                        String m2 = res2.getString(3);
                                                        String m3 = res2.getString(4);
                                                        String m4 = res2.getString(5);
                                                        String m5 = res2.getString(6);
                                                        String m6 = res2.getString(7);
                                                        String m7 = res2.getString(8);
                                                        String m8 = res2.getString(9);
                                                        String m9 = res2.getString(10);
                                                        String m10 = res2.getString(11);
                                                        String p = "pendiente";
                                                            sta2.executeUpdate("insert into respuestas_habiMet values(null,'"+usuario+"','"+val1+"','"+val2+"','"+val3+"','"+val4+"','"+val5+"','"+val6+"','"+val7+"','"+val8+"','"+val9+"','"+val10+"','"+val11+"','"+val12+"','"+val13+"','"+val14+"','"+val15+"','"+rango+"');");
                                                            String estado = "no";
                                                            sta2.executeUpdate("insert into descripcionMetas values(null,'"+m1+"','"+estado+"','"+m2+"','"+estado+"','"+m3+"','"+estado+"','"+m4+"','"+estado+"','"+m5+"','"+estado+"','"+m6+"','"+estado+"','"+m7+"','"+estado+"','"+m8+"','"+estado+"','"+m9+"','"+estado+"','"+m10+"','"+estado+"','"+usuario+"','"+p+"','"+p+"','"+p+"','"+p+"','"+p+"','"+p+"','"+p+"','"+p+"','"+p+"','"+p+"');");
                                                  out.println("<script>Swal.fire('Resultados guardados exitosamente','','success')</script>");
                                out.println("<script>function saludos(){location.href ='habMet.jsp';}</script>");
                                out.println("<script>setTimeout(saludos, 1500);</script>");
                                                  }}
                                                  catch(SQLException error){
                                                        out.println("<script>Swal.fire({icon: 'error',title: 'Algo salió mal',text: 'Inténtelo de nuevo'});</script>");
                    out.println("<script>function saludos(){location.href ='habMet.jsp';}</script>");
                    out.println("<script>setTimeout(saludos, 1500);</script>");
                                                    }

                                                        }

                                                        conx.close();
                                                        sta.close();
                                                        sta2.close();
                                                    }
                                                    catch(SQLException error){
                                                        out.println("<script>Swal.fire({icon: 'error',title: 'Ocurrió un error',text: 'Inténtelo de nuevo'});</script>");
                    out.println("<script>function saludos(){location.href ='habMet.jsp';}</script>");
                    out.println("<script>setTimeout(saludos, 1500);</script>");
                                                    }
        }
        else{
            out.print("<script>location.replace('ini_sesion.jsp');</script>");
        }
    %>
    </body>
</html>
