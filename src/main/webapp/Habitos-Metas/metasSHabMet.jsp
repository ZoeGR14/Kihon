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
                height: 100vh;
                overflow: hidden;
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

            #checklist {
  --background: #fff;
  --text: #414856;
  --check: #4f29f0;
  --disabled: #c3c8de;
  --width: 1080px;
  --height: 730px;
  --border-radius: 10px;
  background: var(--background);
  width: var(--width);
  height: var(--height);
  border-radius: var(--border-radius);
  position: relative;
  box-shadow: 0 10px 30px rgba(65, 72, 86, 0.05);
  padding: 30px 85px;
  display: grid;
  grid-template-columns: 30px auto;
  align-items: center;
  justify-content: center;
}

#checklist label {
  color: var(--text);
  position: relative;
  cursor: pointer;
  display: grid;
  align-items: center;
  width: fit-content;
  transition: color 0.3s ease;
  margin-right: 20px;
  font-family: 'Poppins', sans-serif;
  font-size: 20px;
}

#checklist label::before, #checklist label::after {
  content: "";
  position: absolute;
}

#checklist label::before {
  height: 2px;
  width: 8px;
  left: -27px;
  background: var(--check);
  border-radius: 2px;
  transition: background 0.3s ease;
}

#checklist label:after {
  height: 4px;
  width: 4px;
  top: 8px;
  left: -25px;
  border-radius: 50%;
}

#checklist input[type="checkbox"] {
  -webkit-appearance: none;
  -moz-appearance: none;
  position: relative;
  height: 15px;
  width: 15px;
  outline: none;
  border: 0;
  margin: 0 15px 0 0;
  cursor: pointer;
  background: var(--background);
  display: grid;
  align-items: center;
  margin-right: 20px;
}

#checklist input[type="checkbox"]::before, #checklist input[type="checkbox"]::after {
  content: "";
  position: absolute;
  height: 2px;
  top: auto;
  background: var(--check);
  border-radius: 2px;
}

#checklist input[type="checkbox"]::before {
  width: 0px;
  right: 60%;
  transform-origin: right bottom;
}

#checklist input[type="checkbox"]::after {
  width: 0px;
  left: 40%;
  transform-origin: left bottom;
}

#checklist input[type="checkbox"]:checked::before {
  animation: check-01 0.4s ease forwards;
}

#checklist input[type="checkbox"]:checked::after {
  animation: check-02 0.4s ease forwards;
}

#checklist input[type="checkbox"]:checked + label {
  color: var(--disabled);
  animation: move 0.3s ease 0.1s forwards;
}

#checklist input[type="checkbox"]:checked + label::before {
  background: var(--disabled);
  animation: slice 0.4s ease forwards;
}

#checklist input[type="checkbox"]:checked + label::after {
  animation: firework 0.5s ease forwards 0.1s;
}

@keyframes move {
  50% {
    padding-left: 8px;
    padding-right: 0px;
  }

  100% {
    padding-right: 4px;
  }
}

@keyframes slice {
  60% {
    width: 100%;
    left: 4px;
  }

  100% {
    width: 100%;
    left: -2px;
    padding-left: 0;
  }
}

@keyframes check-01 {
  0% {
    width: 4px;
    top: auto;
    transform: rotate(0);
  }

  50% {
    width: 0px;
    top: auto;
    transform: rotate(0);
  }

  51% {
    width: 0px;
    top: 8px;
    transform: rotate(45deg);
  }

  100% {
    width: 5px;
    top: 8px;
    transform: rotate(45deg);
  }
}

@keyframes check-02 {
  0% {
    width: 4px;
    top: auto;
    transform: rotate(0);
  }

  50% {
    width: 0px;
    top: auto;
    transform: rotate(0);
  }

  51% {
    width: 0px;
    top: 8px;
    transform: rotate(-45deg);
  }

  100% {
    width: 10px;
    top: 8px;
    transform: rotate(-45deg);
  }
}

@keyframes firework {
  0% {
    opacity: 1;
    box-shadow: 0 0 0 -2px #4f29f0, 0 0 0 -2px #4f29f0, 0 0 0 -2px #4f29f0, 0 0 0 -2px #4f29f0, 0 0 0 -2px #4f29f0, 0 0 0 -2px #4f29f0;
  }

  30% {
    opacity: 1;
  }

  100% {
    opacity: 0;
    box-shadow: 0 -15px 0 0px #4f29f0, 14px -8px 0 0px #4f29f0, 14px 8px 0 0px #4f29f0, 0 15px 0 0px #4f29f0, -14px 8px 0 0px #4f29f0, -14px -8px 0 0px #4f29f0;
  }
}

.formso{
    align-items: center;
    justify-content: center;
}

.formso button{
    background-color: #414856;
    color: white;
    padding: 0.5rem;
    padding-left: 1rem;
    padding-right: 1rem;
    font-weight: 500;
    font-size: 15px;
    border: none;
    border-radius: 100px;
    text-transform: uppercase;
    transition: background .5s;
    width: 80%;
    text-decoration: none;
    font-family: 'Poppins', sans-serif;
}

.formso button:hover{
    cursor: pointer;
    background-color: #92C5FC;
    color: #414856;
    border: none;
}
        </style>
    </head>
    <body>
        <header class="headersito">
            <nav>
                            <a href="../index.jsp">Inicio</a>
                <a href="habMet.jsp">Menú</a>
                <a href="cuestHab.jsp">Cuestionario</a>
                <a href="metasSHabMet.jsp">Metas Sugeridas</a>
                <a href="misMetasPHabMet.jsp">Mis Metas</a>
                <a href="cierreSesion.jsp">Cerrar Sesión</a>
            </nav>
        </header>
                <%
            HttpSession sesion = request.getSession();
            String usuario;
            String tipo;

            if (sesion.getAttribute("alumno") != null && sesion.getAttribute("tipo_usuario") != null) {
                usuario = sesion.getAttribute("alumno").toString();
                tipo = sesion.getAttribute("tipo_usuario").toString();
                
Connection conx= null;
                                                Statement sta =null;
                                                Statement sta2 =null;
                                                ResultSet res = null;
                                                ResultSet res2 = null;
                                                
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
                                                    
 
                                
                                                        res = sta.executeQuery("select*from descripcionMetas where nom_usu='"+usuario+"';");
                                                        if(!res.next()){
                        out.println("<script>Swal.fire({icon: 'warning',title: 'Aún no has contestado el cuestionario',text: 'Por favor, contesta para visualizar tus metas'});</script>");
                        out.println("<script>function saludos(){location.href ='cuestHab.jsp';}</script>");
                        out.println("<script>setTimeout(saludos, 1500);</script>");
                    }
                                                        else{
                                                        String e1 = res.getString(3);
                                                        String e2 = res.getString(5);
                                                        String e3 = res.getString(7);
                                                        String e4 = res.getString(9);
                                                        String e5 = res.getString(11);
                                                        String e6 = res.getString(13);
                                                        String e7 = res.getString(15);
                                                        String e8 = res.getString(17);
                                                        String e9 = res.getString(19);
                                                        String e10 = res.getString(21);

        %>
        <form class="formso" action="adicionM.jsp" method="post" name="recuerda">
        <div id="checklist">
            
            <%if(e1.equals("si")){ %>         
            <input value="1" name="r" type="checkbox" id="01" checked="true">
  <label for="01"><%=res.getString(2)%></label>
<%
    } else{
%>
  <input value="1" name="r" type="checkbox" id="01">
  <label for="01"><%=res.getString(2)%></label>
<%
    }
%>
  
<%if(e2.equals("si")){ %>
<input value="2" name="s" type="checkbox" id="02" checked="">
  <label for="02"><%=res.getString(4)%></label>
<%
    } else{
%>  
  <input value="2" name="s" type="checkbox" id="02">
  <label for="02"><%=res.getString(4)%></label>
<%
    }
%>  
  

<%if(e3.equals("si")){ %>
<input value="3" name="t" type="checkbox" id="03" checked="true">
  <label for="03"><%=res.getString(6)%></label>
<%
    } else{
%>
  <input value="3" name="t" type="checkbox" id="03">
  <label for="03"><%=res.getString(6)%></label>
<%
    }
%>
  

<%if(e4.equals("si")){ %>
<input value="4" name="u" type="checkbox" id="04" checked="true">
  <label for="04"><%=res.getString(8)%></label>
<%
    } else{
%>
  <input value="4" name="u" type="checkbox" id="04">
  <label for="04"><%=res.getString(8)%></label>
<%
    }
%>

  
<%if(e5.equals("si")){ %>
<input value="5" name="v" type="checkbox" id="05" checked="true">
  <label for="05"><%=res.getString(8)%></label>
<%
    } else{
%>
  <input value="5" name="v" type="checkbox" id="05">
  <label for="05"><%=res.getString(8)%></label>
<%
    }
%>
  

<%if(e6.equals("si")){ %>
<input value="6" name="w" type="checkbox" id="06" checked="">
  <label for="06"><%=res.getString(10)%></label>
<%
    } else{
%>
  <input value="6" name="w" type="checkbox" id="06">
  <label for="06"><%=res.getString(10)%></label>
<%
    }
%>
  

<%if(e7.equals("si")){ %>
<input value="7" name="x" type="checkbox" id="07" checked="">
  <label for="07"><%=res.getString(12)%></label>
<%
    } else{
%>
  <input value="7" name="x" type="checkbox" id="07">
  <label for="07"><%=res.getString(12)%></label>
<%
    }
%>
  
  
<%if(e8.equals("si")){ %>
<input value="8" name="y" type="checkbox" id="08" checked="true">
  <label for="08"><%=res.getString(14)%></label>
<%
    } else{
%>
  <input value="8" name="y" type="checkbox" id="08">
  <label for="08"><%=res.getString(14)%></label>
<%
    }
%>
  
  
<%if(e9.equals("si")){ %>
<input value="9" name="z" type="checkbox" id="09" checked="true">
  <label for="09"><%=res.getString(16)%></label>
<%
    } else{
%>
  <input value="9" name="z" type="checkbox" id="09">
  <label for="09"><%=res.getString(16)%></label>
<%
    }
%>
  

<%if(e10.equals("si")){ %>
<input value="10" name="a" type="checkbox" id="10" checked="true">
  <label for="10"><%=res.getString(18)%></label>
<%
    } else{
%>
  <input value="10" name="a" type="checkbox" id="10">
  <label for="10"><%=res.getString(18)%></label>
<%
    }
%>
  
  <br><br>

  <center>
      <input type="hidden" name="actualiza" value="<%=res.getString(1)%>" required>
                                    <button type="submit" name="manda" class="bottar">
                                        ACTUALIZAR
                                    </button>
  </center>
                                    
           

</div>
         </form>
        
        
                <%
                    }
conx.close();
                                                        sta.close();
                                                        sta2.close();
                                                    }
                                                    catch(SQLException error){
                                                        out.println("<script>Swal.fire({icon: 'error',title: 'Ocurrió un error',text: 'Inténtelo de nuevo'});</script>");
                    out.println("<script>function saludos(){location.href ='habMet.jsp';}</script>");
                    out.println("<script>setTimeout(saludos, 1500);</script>");}
}else {
                out.print("<script>location.replace('ini_sesion.jsp');</script>");
            }
        %>
    </body>
</html>

