<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <title>Cierre Sesión</title>
      <link rel="icon" href="imagenes/logo.ico" />
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
      <link rel="stylesheet" href="loginn.css" />
      <style>
         body {
            background-color: #001c27;
         }
      </style>
      <script src="sweetalert2.all.min.js"></script>
   </head>
   <body>
      <% HttpSession sesion = request.getSession(); sesion.invalidate(); %>

      <script>
         Swal.fire({
            title: "Hasta luego",
            text: "Sesión cerrada exitosamente",
            icon: "success",
            timer: 2000,
            showConfirmButton: false,
         }).then(() => {
            window.location.href = "index.jsp";
         });
      </script>
   </body>
</html>
