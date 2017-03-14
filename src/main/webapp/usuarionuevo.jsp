
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js" lang="ES">

    <head>
        <%@include file="WEB-INF/jspf/head.jspf"%>
        <title>Spartan Gym</title>
    </head>


    <body>

        <%@include file="WEB-INF/jspf/menu.jspf" %>

        <div class="container">

            <div class="col-md-5 img-rounded fondo" >
                <h2>NUEVO USUARIO</h2>
                <form method="POST">
                    <div class="form-group">
                        <label for="nombre">Nombre</label>
                        <input type="text" class="form-control" id="nombre" placeholder="Nombre">
                    </div>
                    <div class="form-group">
                        <label for="nombre">Apellidos</label>
                        <input type="text" class="form-control" id="apellidos" placeholder="Apellido1 Apellido2">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="ejemplo@gmail.com">
                    </div>
                    <div class="form-group">
                        <label for="fecha">Fecha de nacimiento</label>
                        <input type="date" class="form-control" id="fechaNacimiento">
                    </div>
                    <div class="form-group">
                        <label for="nick">Nick del sistema</label>
                        <input type="text" class="form-control" id="nick" placeholder="nick">
                    </div>
                    <div class="form-group">
                        <label for="password1">Contraseña</label>
                        <input type="password" class="form-control" id="password1" placeholder="********">
                    </div>
                    <div class="form-group">
                        <label for="password2">Repite la contraseña</label>
                        <input type="password" class="form-control" id="password2" placeholder="********">
                    </div>

                    <button type="submit" class="pull-right btn-lg btn-primary">Enviar</button>
                </form>


                
            </div>
            
            <div class="col-md-7 separacion">
                <img src="img/pesas.jpg"  class="img-responsive center-block text-center img-thumbnail"  alt="staff">

            </div>
            
            
            
        </div><!-- /container -->
        <div class="container">
        <hr>
            <%@include file="WEB-INF/jspf/pie.jspf" %>
        </div>

    </body>
</html>