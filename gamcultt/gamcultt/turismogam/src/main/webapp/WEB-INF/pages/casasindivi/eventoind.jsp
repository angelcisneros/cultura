<%-- 
    Document   : eventoind
    Created on : 9/06/2015, 01:18:41 AM
    Author     : Lap_christo
--%>

<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
        rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="../../css/principal/principal.css">
    </head>
    
    <body>
        <%@ include file="/WEB-INF/pages/casasindivi/navbarind.jsp"%>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section">
                            <div class="background-image"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div id="carousel-example" data-interval="3000" class="carousel slide"
                        data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img src="http://pingendo.github.io/pingendo-bootstrap/assets/placeholder.png">
                                    <div class="carousel-caption">
                                        <h2></h2>
                                        <p></p>
                                    </div>
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example" data-slide="prev"><i class="icon-prev  fa fa-angle-left"></i></a>
                            <a class="right carousel-control" href="#carousel-example" data-slide="next"><i class="icon-next fa fa-angle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <h1 class="text-danger">Nombre del Evento</h1>
                        <h2 class="text-right">Nombre del Evento Base</h2>
                        <h1 class="text-danger">Fecha del Evento</h1>
                        <h2 class="text-right">Fecha Inico del Evento Base</h2>
                        <h1 class="text-danger">Horario del Evento</h1>
                        <h2 class="text-right">Horario del Evento Base</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h1 class="text-danger">Información del Evento</h1>
                        <h3>Información del Evento Base</h3>
                        <h1 class="text-danger">Dirección del Evento</h1>
                        <h3>Dirección del Evento Base</h3>
                    </div>
                    <div class="col-md-6">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3760.7833269565795!2d-99.13537064999998!3d19.50795565!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85d1f9c890b7d2af%3A0x8814dc9f4076398f!2sFuturama%2C+07320+Ciudad+de+M%C3%A9xico%2C+D.F.!5e0!3m2!1ses!2smx!4v1432273232629"
                        width="600" height="450" frameborder="0" style="border:0"></iframe>
                    </div>
                </div>
            </div>
        </div>
         <%@ include file="/WEB-INF/pages/casasindivi/fooderind.jsp"%>
    </body>

</html>