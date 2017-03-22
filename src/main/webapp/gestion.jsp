
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

            <div class="col-xs-12  col-md-12">

                <div class="table-responsive" >
                    <h2>Gestión del usuario</h2>
                    <table class="table table-hover fondo img-rounded">
                        <thead> 
                            <tr> 
                                <th></th>
                                <th class="visible-md visible-sm visible-lg">Nombre</th>
                                <th class="visible-md visible-sm visible-lg">Apellidos</th>
                                <th class="visible-md visible-sm visible-lg">Correo</th>
                                <th>Nick</th> 

                            </tr> 
                        </thead> 
                        <tbody>
                            <tr> 
                                <th scope="row">1</th>
                                <td class="visible-md visible-sm visible-lg">Jose</td> 
                                <td class="visible-md visible-sm visible-lg">Jiménez Pérez</td> 
                                <td class="visible-md visible-sm visible-lg">josejdp@gmail.com</td>
                                <td>josejdlp</td>
                                <td><button type="button" class="btn btn-success">Ver</button></td>
                                <td><button type="button" class="btn btn-warning">Editar</button></td>
                                <td><button type="button" class="btn btn-danger">Eliminar</button></td>
                            </tr>
                            <tr> 
                                <th scope="row">2</th>
                                <td class="visible-md visible-sm visible-lg">Mario</td> 
                                <td class="visible-md visible-sm visible-lg">Martínez Pozo</td> 
                                <td class="visible-md visible-sm visible-lg">mariocme@gmail.com</td>
                                <td>mariorp</td>
                                <td><button type="button" class="btn btn-success">Ver</button></td>
                                <td><button type="button" class="btn btn-warning">Editar</button></td>
                                <td><button type="button" class="btn btn-danger">Eliminar</button></td>
                            </tr> 
                            <tr> 
                                <th scope="row">3</th> 
                                <td class="visible-md visible-sm visible-lg">Lucía</td> 
                                <td class="visible-md visible-sm visible-lg">Lendínez Garrido</td> 
                                <td class="visible-md visible-sm visible-lg">lucjus@hotmail.com</td>
                                <td>luleng</td> 
                                <td><button type="button" class="btn btn-success">Ver</button></td>
                                <td><button type="button" class="btn btn-warning">Editar</button></td>
                                <td><button type="button" class="btn btn-danger">Eliminar</button></td>
                            </tr> 
                        </tbody> 
                    </table>



                </div>
<hr>
                <%@include file="WEB-INF/jspf/pie.jspf" %>
            </div>
        </div>


    </body>
</html>
