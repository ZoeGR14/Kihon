<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Glass Website</title>
        <link rel="stylesheet" type="text/css" href="perfil.css">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;700&display=swap" rel="stylesheet"/>
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    </head>
    <body>
        <main>
            <section class="glass">
                <div class="dashboard">
                    <div class="user">
                        <!--Traer imagen-->
                        <img src="./images/avatar.png" alt="" />
                        <!--Nombre-->
                        <h3>Usuario</h3>
                        <!--Tipo usuario-->
                        <p>Alumno</p>
                    </div>
                    <div class="links">
                        <div class="link">
                            <i class='bx bx-user-circle bx-md bx-border-circle' style="color: #5a82b8; border-color: #426696;" ></i>
                            <h2>Mis datos</h2>
                        </div>
                        <div class="link">
                            <i class='bx bx-file-find bx-md bx-border-circle' style="color: #5a82b8; border-color: #426696;" ></i>
                            <h2>Resultados</h2>
                        </div>
                        <div class="link">
                            <i class='bx bx-cog bx-md bx-border-circle' style="color: #5a82b8; border-color: #426696;" ></i>
                            <h2>Configuración</h2>
                        </div>
                        <div class="link">
                            <i class='bx bx-user-x bx-md bx-border-circle' style="color: #5a82b8; border-color: #426696;" ></i>
                            <h2>Eliminar cuenta</h2>
                        </div>
                    </div>
                    <button class="pro" style="border: none; cursor: pointer;">
                        <left><i class='bx bxs-home bx-md'></i></left>
                    </button>
                </div>
                <div class="games">
                    <div class="status">
                        <h1>Resultados</h1>
                        <input type="text" disabled/>
                    </div>
                    <div class="cards">
                        <div class="card">
                            <div class="card-info">
                                <h2>MBTI</h2>
                            </div>
                            <h2 class="percentage">ISTJ</h2>
                        </div>
                        <div class="card">
                            <div class="card-info">
                                <h2>Área de conocimiento</h2>
                                <div class="progress"></div>
                            </div>
                            <h2 class="percentage">IyCFM</h2>
                        </div>
                    </div>
                </div>
            </section>
        </main>
        <div class="circle1"></div>
        <div class="circle2"></div>
    </body>
</html>