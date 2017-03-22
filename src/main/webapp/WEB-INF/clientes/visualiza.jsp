<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>



    <head>
        <meta charset="UTF-8">
        <title>Usuario</title>        
        <%@include file="../../jspf/head.jspf"%>
    </head>




    <body class="container">
        <%@include file="../../jspf/menu.jspf" %>
        
        
        
        <main class="row">

            <nav class="col-md-2">
                <h2>Opciones</h2>
                <ul class="nav nav-pills nav-stacked">
                    <li class="active"><a href='${srvUrl}/edita?id=${cliente.id}' class="btn btn-primary">Editar</a></li>
                    <li class="active"><a href='${srvUrl}/borra?id=${cliente.id}' class="btn btn-primary">Borrar</a></li>
                </ul>
            </nav>   

                
            <section class="col-md-6">
                    <h2>Cliente: ${cliente.nombre} ${cliente.apellidos}</h2>
                    
                        <ul class="panel-body list-group">
                            <li class="list-group-item"><strong>ID:</strong></span>
                                <span class="list-group-item-text">${cliente.id}</span></li>
                            <li class="list-group-item"><strong>Nombre:</strong> ${cliente.nombre}</li>
                            <li class="list-group-item"><strong>Apellidos:</strong> ${cliente.apellidos}</li> 
                            <li class="list-group-item"><strong>Email:</strong> ${cliente.email}</li>
                            <li class="list-group-item"><strong>Nick:</strong> ${cliente.nick}</li> 
                            <li class="list-group-item"><strong>Mayor de edad:</strong> ${cliente.mayoredad?"Sí":"No"}</li>
                        </ul>
            </section>

        </main>
        <%@include file="../../jspf/pie.jspf"%>
    </body>



</html>