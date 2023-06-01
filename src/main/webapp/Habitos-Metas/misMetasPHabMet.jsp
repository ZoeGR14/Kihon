<%@page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cuestionario Hábitos y Metas de Estudio</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="estiloCHabMet.css">
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
                        @import url('https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&display=swap');

            *{
                margin: 0;
                padding: 0;
                outline: none;
                
            }
            body{
                width: 100%;
                display: flex;
                align-items: center;
                justify-content: center;
                min-height: 100vh;
background: linear-gradient(to right, #4286f4, #373B44);
background-image: url(../imagenes/metasS.png);
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment: fixed;
                position: relative;
            }
            
                        .headersito{
                width: 100%;
               top: 0;
                left: 0;
                font-family: 'Open Sans', sans-serif;
                position: fixed;
                
            }
            
            nav{
                text-align: right;
                padding: 30px 50px 0 0;
            }
            
            nav a{
                color: #ffff;
                font-weight: 300;
                text-decoration: none;
                margin-right: 16px;
            }
            
            nav a:hover{
                color: #92C5FC;
            }

            
                        body {
  position: relative;
  margin: 0;
}
.sect {
  width: 100%;
  min-height: 100vh;
}
#sect1,
#sect3 {
  background-color: rgba(0,0,0,0.5);
  color: #fff;
}
#sect2 {
  background-color: #dddddd7d;
  color: #333;
}

.imagensita {
  position: fixed;
  right: 0;
  bottom: 0;
  min-width: 105%;
  min-height: 100%;
  transform: translateX(calc((100% - 100vw) / 2));
  transform: translateY(100px);
  z-index: -2;
}
h1 {
  margin: 0;
  padding-top: 3rem;
  padding-left: 2rem;
}
h2 {
  margin: 0;
  padding-top: 3rem;
  padding-left: 2rem;
}
.gridd{
    margin-top: 0;
                margin-bottom: 50px;
                margin-left: 150px;
                display: grid;
  grid-template-columns: repeat(3, 1fr); /* establece 3 columnas con ancho igual */
  grid-auto-rows: minmax(100px, 700px); /* establece una altura mínima de 100px */
  grid-gap: 100px; /* establece el espacio entre los elementos */
}


.cardContainer {
  width: 400px;
  height: 450px;
  background-color: rgb(255, 255, 255);
  display: flex;
  align-items: center;
  justify-content: center;
  position: relative;
  transition-duration: .5s;
  border-radius: 10px;
  margin-top: 55%;
}

.profileDiv {
  z-index: 2;
  width: 100%;
  height: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  background-color: #0f2f76;
  transition-duration: .5s;
  color: white;
  font-family: Whitney, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica, Arial, sans-serif;
  font-weight: 500;
  font-size: 20px;
  border-radius: 10px;
}

.cardContainer:hover .profileDiv {
  transform: translateX(-25%) translateY(-20%);
  transition-duration: .5s;
}

.infoDiv {
  position: absolute;
  width: 100%;
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  background-color: aliceblue;
  z-index: 1;
  border-radius: 10px;
  background-color: rgba(255, 255, 255,0.3);
}

.nameDiv {
  width: 75%;
  height: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: flex-end;
  background-color: aliceblue;
  font-family: Whitney, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica, Arial, sans-serif;
  gap: 2px;
  border-radius: 10px;
  background-color: rgba(255, 255, 255,0.3);
}

.name {
  margin: 0;
  padding: 0;
  font-size: 16px;
  font-weight: 500;
  color: black;
}

.role {
  margin: 0;
  padding: 0;
  font-size: 13px;
  font-weight: 400;
  color: rgb(48, 48, 48);
  margin-bottom: 5px;
}

.socialDiv {
  width: 25%;
  height: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  color: rgb(14, 14, 14);
  gap: 25px;
  background-color: rgba(255, 255, 255,0.3);
  border-radius: 10px;
}

.infoDiv a {
  width: 50%;
}

.socials {
  width: 100%;
  fill: rgb(14, 14, 14);
}

.bottar{
    background-color: rgba(255, 255, 255,0.3);
    border: none;
    cursor: pointer;
}

        </style>
    </head>
    <body>
        <header class="headersito">
            <nav>
                            <a href="../inicio.jsp">Inicio</a>
                <a href="habMet.jsp">Menú</a>
                <a href="cuestHab.jsp">Cuestionario</a>
                <a href="metasSHabMet.jsp">Metas Sugeridas</a>
                <a href="misMetasPHabMet.jsp">Mis Metas</a>
                
            </nav>
        </header>
        <br>
                <%
            HttpSession sesion = request.getSession();
            String usuario;
            String tipo;

            if (sesion.getAttribute("alumno") != null && sesion.getAttribute("tipo_usuario") != null) {
                usuario = sesion.getAttribute("alumno").toString();
                tipo = sesion.getAttribute("tipo_usuario").toString();
                %>
                <section id="sect1" class="sect">
            <div class="gridd">
            
        <%
                Connection cnx = null;
                Statement sta = null;
                ResultSet rs = null;
                Statement sta2 = null;
                ResultSet rs2 = null;
                Statement sta3 = null;
                ResultSet rs3 = null;

                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    cnx  = DriverManager.getConnection("jdbc:mysql://localhost:3306/Kihon?autoReconnect=true&useSSL=false","root","n0m3l0");                               
                    sta = cnx.createStatement();
                    rs = sta.executeQuery("select * from descripcionMetas where nom_usu='"+usuario+"'");
                    while (rs.next()) { 
                        for(int i = 2; i <= 20; i = i + 2){
                        %>
      
        
        
        <div class="cardContainer">
            <div class="profileDiv">
                <center>  
                        Meta:<br>
                       * <%=rs.getString(i)%><br>


                        
                 </center>
            </div>
            <div class="infoDiv">
                <div class="nameDiv"></div>
                <div class="socialDiv">
                    <form action="completarM.jsp" method="post" name="completaM">
                                    <input type="hidden" name="meta" value="<%=rs.getString(i)%>" required>
                                    <button type="submit" name="manda" class="bottar">
                                        <img src="../imagenes/palomita.png" alt="alt">
                                    </button>
                    </form>
                </div>
            </div>
        </div>
                                    <%
                                        }}
                        sta.close();
                        cnx.close();
                        rs.close();
                    }
                    catch (SQLException error){
                        out.print(error.toString());
                    }
                %>
            </div>
            </section>
                
                
                <%

}else {
                out.print("<script>location.replace('ini_sesion.jsp');</script>");
            }
        %>
    </body>
</html>