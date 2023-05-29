<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="imagenes/logo_nimo.ico">
        <title>Hábitos y Metas académicas</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&display=swap');
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            
            body{
                font-family: 'Open Sans', sans-serif;
            }
            
            .contenedor{
                padding: 60px 0;
                width: 90%;
                max-width: 1000px;
                margin: auto;
                overflow: hidden;
            }
            
            header{
                width: 100%;
                height: 800px;
                background: #373B44;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #4286f4, #373B44);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #4286f4, #373B44); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment: fixed;
                position: relative;
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
            
            header .texto-header{
                display: flex;
                height: 430px;
                width: 100%;
                align-items: center;
                justify-content: center;
                flex-direction: column;
                text-align: center;
            }
            
            .texto-header h1{
                font-size: 50px;
                color: white;
                font-weight: 900;
            }
            .texto-header h2{
                font-size: 30px;
                color: white;
                font-weight: 400;
            }
            
            .contenedorop{
                width: 100%;
                height: calc(100vh - 200px);
                align-items: center;
                justify-content: center;
            }
            
            .card {
                margin-top: 100px;
  width: calc(100% - 400px);
  height: calc(100vh - 450px);
  border-radius: 4px;
  background: #fff;
  display: flex;
  gap: 35px;
  padding: .4em;
  
}

.card a {
  height: 100%;
  flex: 1;
  overflow: hidden;
  cursor: pointer;
  border-radius: 2px;
  transition: all .5s;
  text-decoration: none;
  border: 3px solid #3E5F8A;
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: #92C5FC;
}


.card a:hover {
  flex: 4;
}

.card a p {
  min-width: 14em;
  padding: .5em;
  text-align: center;
  transform: rotate(-90deg);
  transition: all .5s;
  text-transform: uppercase;
  color: #3E5F8A;
  letter-spacing: .1em;
  text-decoration: none;
  font-weight: 700;
}

.card a:hover p {
  transform: rotate(0);
}
            
            .wave{
                position: absolute;
                bottom: 0;
                width: 100%;
            }
            
        </style>
    </head>
    <body>
        <%
            HttpSession sesion = request.getSession();
            String usuario;
            String tipo;

            if (sesion.getAttribute("alumno") != null && sesion.getAttribute("tipo_usuario") != null) {
                usuario = sesion.getAttribute("alumno").toString();
                tipo = sesion.getAttribute("tipo_usuario").toString();

        %>
        
        <header>
            <nav>
                <a href="habMet.jsp">Inicio</a>
                <a href="cuestHab.jsp">Cuestionario</a>
                <a href="metasSHabMet.jsp">Metas Sugeridas</a>
                <a href="misMetasPHabMet.jsp">Mis Metas</a>
                <a href="cierreSesion.jsp">Cerrar Sesión</a>
            </nav>
            <section class="texto-header">
                <h1>Hábitos y Metas Académicas</h1>
            </section>
                <div class="wave" style="height: 150px; overflow: hidden;" ><svg viewBox="0 0 500 150" preserveAspectRatio="none" style="height: 100%; width: 100%;"><path d="M0.00,49.98 C149.99,150.00 349.20,-49.98 500.00,49.98 L500.00,150.00 L0.00,150.00 Z" style="stroke: none; fill: #fff;"></path></svg></div>
        </header>
        <main>
            <section class="contenedorop">
                <center>
                    <div class="card">
                        <a class="uno" href="cuestHabMet.jsp">
                            <p>Cuestionario</p>
                        </a>
                        <a class="dos" href="metasSHabMet.jsp">
                            <p>Metas Sugeridas</p>
                        </a>
                        <a class="tres" href="misMetasPHabMet.jsp">
                            <p>Mis Metas</p>
                        </a>
                    </div>
                </center>
            </section>
        </main>
        <%
            } else {
                out.print("<script>location.replace('Inicio-Cierre/ini_sesion.jsp');</script>");
            }
        %>
    </body>
</html>
