
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js" lang="ES">

    <head>
        <%@include file="jspf/head.jspf"%>
        <title>Spartan Gym</title>
    </head>


    <body>
        <%@include file="jspf/menu.jspf" %>
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
                                <img src="images/BodyCombat.jpg" width="1500" height="200">
                                <div class="carousel-caption">
                                    <h3>Oferta del mes</h3>
                                    <p>Prueba</p>
                                </div>
                            </div>

                            <div class="item">
                                <img src="images/BodyPump.jpg" width="1500" height="200">
                                <div class="carousel-caption">
                                    <h3>Deporte en compañía</h3>
                                    <p>Prueba</p>
                                </div>
                            </div>

                            <div class="item">
                                <img src="images/Crossfit.jpg" width="1500" height="200">
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

                <div class="col-xs-12 col-sm-8 col-md-9">
                    <section id="club-index-news">
                        <h2>Lo más nuevo de Spartan Gym</h2>

                        <article class="club-index-article">
                            <img src="images/pack.jpg" width="190" height="150" class="imgright">
                            <header>
                                <img src="images/estrella.png" class="imgleft"   width="42" height="42" alt="">         
                                <h3>THE PACK</h3>
                            </header>
                            <div class="club-index-article-text">
                                Tres equipos, cuatro desafíos de alta intensidad y la última tecnología en clases de spin se unen para crear un entrenamiento estimulante y lleno de acción.

                                Deja que nuestros líderes te lleven a un viaje inolvidable.   
                            </div>
                        </article>

                        <article class="club-index-article">
                            <img src="images/combat.jpg" width="190" height="150" class="imgright">
                            <header>
                                <img src="images/fuego.png" class="imgleft"   width="42" height="42" alt="">         
                                <h3>Nuevo Body Combat</h3>
                            </header>
                            <div class="club-index-article-text">
                                Porque la vida es una lucha constante, defiéndete con el Body Combat.

                                Esta nueva clase usa la combinación de artes marciales como el karate, boxeo… 
                                que elevaran tu intensidad 
                                de entrenamiento y mejorara tu condición física. No te lo pierdas! 
                            </div>
                        </article>


                        <article class="club-index-article">
                            <img src="images/bicis.jpg" width="190" height="150" class="imgright">
                            <header>
                                <img src="images/cara.png" class="imgleft"  width="42" height="42" alt="">         
                                <h3>Experiencia Spin Live</h3>
                            </header>
                            <div class="club-index-article-text">
                                Un verdadero entrenamiento ciclista de calidad. Descubre paisajes por donde nunca antes has pedaleado y déjate guiar por nuestro nuevos sistema MyRide con proyecciones panorámicas de alta definición.   
                            </div>
                        </article>



                    </section>
                </div>
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="sidebar-post">
                        <h4><a href="" title="Leer 'Nutrición deportiva: alimentos pre-deporte'"><b>Nutrición deportiva: alimentos pre-deporte</b></a></h4>
                        <a href="" title="Leer 'Nutrición deportiva: alimentos pre-deporte'"><img src="images/zumo.jpg" width="75" height="75" alt="zumo-pera" class="imgleft"></a> 
                        <div>Una buena alimentación&nbsp;es tan importante como seguir las pautas de tu entrenador a la hora de...</div>
                        <a href="" title="Leer 'Nutrición deportiva: alimentos pre-deporte'" class="read-more">Leer más</a>  
                    </div>   
                        
                      <div class="sidebar-post">
                        <h4><a href="" title="Leer 'Nutrición deportiva: alimentos pre-deporte'"><b>Fútbol: cómo mejorar tu velocidad</b></a></h4>
                        <a href="" title="Leer 'Nutrición deportiva: alimentos pre-deporte'"><img src="images/futbol.jpg" width="75" height="75" alt="zumo-pera" class="imgleft"></a> 
                        <div>Como en la mayoría de los deportes, la velocidad en el fútbol es una cualidad altamente...</div>
                        <a href="/blog/nutricion-deportiva-alimentos-pre-deporte" title="Leer 'Nutrición deportiva: alimentos pre-deporte'" class="read-more">Leer más</a>  
                    </div>   

                      <div class="sidebar-post">
                        <h4><a href="" title="Leer 'Nutrición deportiva: alimentos pre-deporte'"><b>Clases colectivas para novatos</b></a></h4>
                        <a href="" title="Leer 'Nutrición deportiva: alimentos pre-deporte'"><img src="images/novatos.jpg" width="75" height="75" alt="zumo-pera" class="imgleft"></a> 
                        <div>Si quieres ponerte en forma, estar bien contigo mismo y además conocer gente y sentir que...</div>
                        <a href="" title="Leer 'Nutrición deportiva: alimentos pre-deporte'" class="read-more">Leer más</a>  
                    </div>   

                </div>
            </div>



            <hr>


            <%@include file="jspf/pie.jspf"%>


        </div> <!-- /container -->        

    </body>
</html>

