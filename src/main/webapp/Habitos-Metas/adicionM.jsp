<%@page import="java.sql.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="../imagenes/logo.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String cod = request.getParameter("actualiza");
            String e1, e2, e3, e4, e5, e6, e7, e8, e9, e10 = null;
            int idd = Integer.parseInt(cod);
            Connection cnx = null;
            Statement sta = null;
            ResultSet rs = null;
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                cnx  = DriverManager.getConnection("jdbc:mysql://mysql-db-kihon:3306/Kihon?autoReconnect=true&useSSL=false","root","n0m3l0");
                sta = cnx.createStatement();
                rs=sta.executeQuery("select * from descripcionMetas where id_metaEdit = '"+idd+"'");
                if(rs.next()){
                String m1 = request.getParameter("r");
                String m2 = request.getParameter("s");
                String m3 = request.getParameter("t");
                String m4 = request.getParameter("u");
                String m5 = request.getParameter("v");
                String m6 = request.getParameter("w");
                String m7 = request.getParameter("x");
                String m8 = request.getParameter("y");
                String m9 = request.getParameter("z");
                String m10 = request.getParameter("a");

                if(m1 == null){
                    e1 = "no";
                }else{
                    e1 = "si";
                }
                if(m2== null){
                    e2 = "no";
                }else{
                    e2 = "si";
                }
                if(m3== null){
                    e3 = "no";
                }else{
                    e3 = "si";
                }
                if(m4== null){
                    e4 = "no";
                }else{
                    e4 = "si";
                }
                if(m5== null){
                    e5 = "no";
                }else{
                    e5 = "si";
                }
                if(m6== null){
                    e6 = "no";
                }else{
                    e6 = "si";
                }
                if(m7== null){
                    e7 = "no";
                }else{
                    e7 = "si";
                }
                if(m8== null){
                    e8 = "no";
                }else{
                    e8 = "si";
                }
                if(m9== null){
                    e9 = "no";
                }else{
                    e9 = "si";
                }
                if(m10== null){
                    e10= "no";
                }else{
                    e10 = "si";
                }
                
                sta.execute("update descripcionMetas set estatus_metaEdit1='"+e1+"', estatus_metaEdit2='"+e2+"', estatus_metaEdit3='"+e3+"', estatus_metaEdit4='"+e4+"', estatus_metaEdit5='"+e5+"', estatus_metaEdit6='"+e6+"', estatus_metaEdit7='"+e7+"', estatus_metaEdit8='"+e8+"', estatus_metaEdit9='"+e9+"', estatus_metaEdit10='"+e10+"'  where id_metaEdit='"+idd+"'");
            RequestDispatcher rd=request.getRequestDispatcher("metasSHabMet.jsp");
            
            rd.forward(request, response);
            
            sta.close();
            rs.close();
            cnx.close();
            }
        }
        catch(SQLException error){
                out.print(error.toString());
            }
        
            
        
        %>
    </body>
</html>
