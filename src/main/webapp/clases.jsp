
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js" lang="ES">

    <head>
        <%@include file="jspf/head.jspf"%>
        <title>SpartanGYM</title>
    </head>
    

    <body>

        <%@include file="jspf/menu.jspf" %>

        <div class="container">
            <div class="row">

                <div class="col-xs-12 col-md-4 col-sm-6">
                    <img src="images/BodyCombat.jpg" height="200" width="290">
                    <a href="clases/combat.jsp"><h3>Body Combat</h3></a>
                </div>

                <div class="col-xs-12 col-md-4 col-sm-6">
                    <img src="images/Spinning.jpg" height="200" width="290">
                    <a href="clases/spinning.jsp"><h3>Spinning</h3></a>
                </div>

                <div class="col-xs-12 col-md-4 col-sm-6">
                    <img src="images/Crossfit.jpg" height="200" width="290">
                    <a href="clases/crossfit.jsp"><h3>Crossfit</h3></a>
                </div>

                <div class="col-xs-12 col-md-4 col-sm-6">
                    <img src="images/Yoga.jpg" height="200" width="290">
                    <a href="clases/yoga.jsp"><h3>Yoga</h3></a>
                </div>

                <div class="col-xs-12 col-md-4 col-sm-6">
                    <img src="images/BodyPump.jpg" height="200" width="290">
                    <a href="clases/bodypump.jsp"><h3>Body Pump</h3></a>
                </div>

                <div class="col-xs-12 col-md-4 col-sm-6">
                    <img src="images/Zumba.jpg" height="200" width="290">
                    <a href="clases/zumba.jsp"><h3>Zumba</h3></a>
                </div>

            </div>



            <hr>

            <%@include file="jspf/pie.jspf"%>




        </div> <!-- /container -->        
    </body>
</html>

