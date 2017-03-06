
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js" lang="ES">

    <head>
        <%@include file="WEB-INF/jspf/head.jspf"%>
        <title>SpartanGYM</title>
    </head>
    

    <body>

        <%@include file="WEB-INF/jspf/menu.jspf" %>

        <div class="container">
            <div class="row">

                <div class="col-xs-12 col-md-4 col-sm-6">
                    <img src="img/BodyCombat.jpg" height="200" width="290">
                    <a href="#"><h3>Body Combat</h3></a>
                </div>

                <div class="col-xs-12 col-md-4 col-sm-6">
                    <img src="img/Spinning.jpg" height="200" width="290">
                    <a href="#"><h3>Spinning</h3></a>
                </div>

                <div class="col-xs-12 col-md-4 col-sm-6">
                    <img src="img/Crossfit.jpg" height="200" width="290">
                    <a href="#"><h3>Crossfit</h3></a>
                </div>

                <div class="col-xs-12 col-md-4 col-sm-6">
                    <img src="img/Yoga.jpg" height="200" width="290">
                    <a href="#"><h3>Yoga</h3></a>
                </div>

                <div class="col-xs-12 col-md-4 col-sm-6">
                    <img src="img/BodyPump.jpg" height="200" width="290">
                    <a href="#"><h3>Body Pump</h3></a>
                </div>

                <div class="col-xs-12 col-md-4 col-sm-6">
                    <img src="img/Zumba.jpg" height="200" width="290">
                    <a href="#"><h3>Zumba</h3></a>
                </div>

            </div>



            <hr>

            <%@include file="WEB-INF/jspf/pie.jspf"%>




        </div> <!-- /container -->        
    </body>
</html>

