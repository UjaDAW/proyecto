<%-- 
    Document   : contacta
    Created on : 03-mar-2017, 19:39:44
    Author     : josejimenezdelapaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">
        <link rel = "stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">

        <link rel = "stylesheet" href="css/main.css">

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

    </head>





    <body>

        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
        <%@include file="WEB-INF/jspf/header.jspf" %>


        <div class="container" style="margin-top:80px">

            <div class="col-md-7">
                <h2 class="page-heading">Get in <span class="text-muted">touch</span></h2>
                <br>

                <form name="contact" action="process.php" method="post">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon glyphicon glyphicon-user"></span>
                        <input type="text" name="name" class="form-control" placeholder="Your Name" required>
                    </div>
                    <br>
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon glyphicon glyphicon-earphone"></span>
                        <input type="text" name="number" class="form-control" placeholder="Your Mobile">
                    </div>
                    <br>
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">@</span>
                        <input type="email" name="email" class="form-control" placeholder="Your Email" required>
                    </div>
                    <br>
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon glyphicon glyphicon-question-sign"></span>
                        <textarea class="form-control" name="query" style="height: 100px;" placeHolder="Your queries here" required></textarea>
                    </div>
                    <br>

                    <button type="submit" class="pull-right btn-lg btn-primary">Submit Query</button>

                </form>	
            </div>
            <div class="col-md-5">

                <h2 class="page-heading">A M Reddy's</h2>
                <p>
                    A M Reddy's is a chain of online services with a vision to serve the needs of every internet user. Have a look at our <a href="http://www.amreddys.com">home</a> page and let us serve your needs. 
                </p>


                <p>
                    This is the demo of the article published <a href="http://www.amreddys.com/14-technology/web-technologies/9-responsive-contact-form-for-web-sites-using-bootstrap-php-and-mysql">here</a> about contact us form to simply mail the entries submitted.
                </p>
            </div>
        </div>

        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </div> <!-- /container -->        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

    <script src="js/vendor/bootstrap.min.js"></script>

    <script src="js/main.js"></script>

    <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
    <script>
        (function (b, o, i, l, e, r) {
            b.GoogleAnalyticsObject = l;
            b[l] || (b[l] =
                    function () {
                        (b[l].q = b[l].q || []).push(arguments)
                    });
            b[l].l = +new Date;
            e = o.createElement(i);
            r = o.getElementsByTagName(i)[0];
            e.src = '//www.google-analytics.com/analytics.js';
            r.parentNode.insertBefore(e, r)
        }(window, document, 'script', 'ga'));
        ga('create', 'UA-XXXXX-X', 'auto');
        ga('send', 'pageview');
    </script>
</body>
</html>