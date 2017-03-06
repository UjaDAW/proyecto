
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js" lang="ES">

    <head>
        <%@include file="WEB-INF/jspf/head.jspf"%>
        <title>Spartan Gym</title>
    </head>


    <body>

        <%@include file="WEB-INF/jspf/menu.jspf" %>

        <!-- Main jumbotron for a primary marketing message or call to action -->
        <div class="jumbotron">
            <div class="container">

                <div class="bs-example">
                    <div id="myCarousel" class="carousel slide" data-interval="3000" data-ride="carousel">
                        <!-- Carousel indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                        </ol>   
                        <!-- Carousel items -->
                        <div class="carousel-inner">
                            
                            <div class="active item">
                                <img src="img/BodyCombat.jpg" width="1500" height="200">
                                <div class="carousel-caption">
                                    <h3>Oferta del mes</h3>
                                    <p>Prueba</p>
                                </div>
                            </div>
                            
                            <div class="item">
                                <img src="img/BodyPump.jpg" width="1500" height="200">
                                <div class="carousel-caption">
                                    <h3>Deporte en compañía</h3>
                                    <p>Prueba</p>
                                </div>
                            </div>
                            
                            <div class="item">
                                <img src="img/Crossfit.jpg" width="1500" height="200">
                                <div class="carousel-caption">
                                    <h3>Cursos gratuitos</h3>
                                    <p>Prueba</p>
                                </div>
                            </div>
                            
                        </div>
                        <!-- Carousel nav -->
                        <a class="carousel-control left" href="#myCarousel" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                        </a>
                        <a class="carousel-control right" href="#myCarousel" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                        </a>
                    </div>
                </div>

            </div>
        </div>



        <div class="container">

            <!-- Example row of columns -->
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-3">
                    <h2>Izquierda</h2>
                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                    <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-6">
                    <h2>Centro</h2>
                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                    <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-3">
                    <h2>Derecha</h2>
                    <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
                    <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
                </div>
            </div>



            <hr>


            <%@include file="WEB-INF/jspf/pie.jspf"%>


        </div> <!-- /container -->        

    </body>
</html>

