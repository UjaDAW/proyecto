<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>
<html>

    <head>
        <title>Edita</title>       
        <%@include file="../../jspf/head.jspf"%>
    </head>

    <body class="container">
        <%@include file="../../jspf/menu.jspf" %>


        <div class="row">

            <nav class="col-md-2">
                <h2>Opciones</h2>
                <ul class=" nav nav-pills nav-stacked">
                    <li ><a href='${srvUrl}/visualiza?id=${cliente.id}' class="btn btn-default">Volver</a></li>
                </ul>
            </nav>


            <div class="col-md-6 img-rounded fondo" >
                <h2>Editar Cliente ${cliente.nombre} ${cliente.apellidos} nº: ${cliente.id}</h2>

                <form method="POST">
                    <div class="form-group">

                        <label>Nombre: </label>
                        <input name="nombre" value="${cliente.nombre}" class="form-control">

                        <label>Apellidos: </label>
                        <input name="apellidos" value="${cliente.apellidos}" class="form-control">

                        <label>Email: </label>
                        <input name="email" value="${cliente.email}" class="form-control">

                        <label>Nick: </label>
                        <input name="nick" value="${cliente.nick}" class="form-control"></label>


                    </div>
                    <div class="form-group">
                        <button name="enviar" type="submit" class="btn btn-primary">Guardar cambios</button>
                    </div>
                </form>

            </div>
        </div>





        <%@include file="../../jspf/pie.jspf"%>
    </body>
</html>
