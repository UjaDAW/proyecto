<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>


<html class="no-js" lang="ES">

    <head>
        <%@include file="../../jspf/head.jspf"%>
        <title>Alta Clientes Spartan GYM</title>
    </head>


    <body>

        <%@include file="../../jspf/menu.jspf" %>

        <div class="container">

            <div class="col-md-6 col-xs-12 col-sm-12 img-rounded fondo" >
                <h2>Registro</h2>
                <form method="POST">
                    <div class="form-group">


                        <label>Nombre</label>
                        <input type="text" name="nombre" value="${cliente.nombre}" class="form-control">

                        <label>Apellidos</label>
                        <input type="text" name="apellidos" value="${cliente.apellidos}" class="form-control">

                        <label>Correo electronico</label>
                        <input type="email" name="email" value="${cliente.email}" class="form-control">

                        <label>Nick</label>
                        <input type="text" name="nick" value="${cliente.nick}" class="form-control">

                        <label>Contraseña</label>
                        <input type="password" name="pass" value="${cliente.pass}" class="form-control" placeholder="********">


                    </div>

                    <div class=" nav form-group">
                        <label>¿Eres mayor de edad? Sí </label>
                        <input type="checkbox" name="mayoredad" value="${cliente.mayoredad}" class="nav">
                    </div>
                    
                    <div class="form-group">
                        <button name="enviar" type="submit" class="btn btn-primary">Enviar</button>
                    </div>

                </form>



            </div>

            <div class="col-md-6img-rounded">
                <img src=<c:url value='/images/pesas.jpg'/> class="img-responsive center-block text-center img-thumbnail"  alt="staff">

            </div>



        </div><!-- /container -->

        <div class="container">
            <hr>
            <%@include file="../../jspf/pie.jspf" %>
        </div>

    </body>
</html>