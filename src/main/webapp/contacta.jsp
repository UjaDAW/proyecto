
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js" lang="ES">
    <head>
        <%@include file="WEB-INF/jspf/head.jspf"%>
        <title>Spartan Gym</title>
    </head>





    <body>

        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
        <%@include file="WEB-INF/jspf/menu.jspf"%>


        <div class="container">

            <div class="col-md-7 img-rounded fondo" >
                <h2 class="page-heading">Contacta con nosotros</span></h2>
                <br>

                <form name="contact" action="" method="post">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon"><img src="img/person.png" style="height:19px;" alt="persona"></span>
                        <input type="text" name="name" class="form-control" placeholder="Tu nombre" required>
                    </div>
                    <br>
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon"><img src="img/movil.png" style="height:19px;" alt="movil"></span>
                        <input type="text" name="number" class="form-control" placeholder="Tu móvil">
                    </div>
                    <br>
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon"><img src="img/mail.png" style="height:19px;" alt="mail"></span>
                        <input type="email" name="email" class="form-control" placeholder="Tu correo" required>
                    </div>
                    <br>
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon"><img src="img/edit.png" style="height:19px;" alt="persona"></span>
                        <textarea class="form-control" name="query" style="height: 100px;" placeHolder="Tus peticiones aquí" required></textarea>
                    </div>
                    <br>
                    <div class="separacion2">
                        <button type="submit" class="pull-right btn-lg btn-primary">Enviar</button>

                    </div>
                </form>	

            </div>
            <div class="col-md-5" style="padding-top: 8em;">
                <img src="img/staff.jpg"  class="img-responsive center-block text-center img-thumbnail"  alt="staff">

            </div>
            
        </div>

        <div class="container">
        <hr>
            
            <%@include file="WEB-INF/jspf/pie.jspf"%>
        </div>
        

</body>
</html>