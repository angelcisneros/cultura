<%-- 
    Document   : casaindividual
    Created on : 7/06/2015, 01:49:08 AM
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
       
        <link rel="stylesheet" href="../css/principal/principal.css">
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
                    <div class="col-md-12">
                        <h1 class="text-danger">${casa.nombre}</h1>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <h2 class="text-danger">Informacion de la Casa</h2>
                        <p class="text-danger text-left">${casa.informacion}</p>
                        <h2 class="text-danger">Horarios de Atención</h2>
                        <h3 class="text-danger">${casa.horario}</h3>
                    </div>
                    <div class="col-md-8">
                        <div id="fullcarousel-example" data-interval="3000" class="carousel slide"
                        data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img src="http://pingendo.github.io/pingendo-bootstrap/assets/placeholder.png">
                                    <div class="carousel-caption">
                                        <h2>Title</h2>
                                        <p>Description</p>
                                    </div>
                                </div>
                                <div class="item">
                                    <img src="http://pingendo.github.io/pingendo-bootstrap/assets/placeholder.png">
                                    <div class="carousel-caption">
                                        <h2>Title</h2>
                                        <p>Description</p>
                                    </div>
                                </div>
                                <div class="item">
                                    <img src="http://pingendo.github.io/pingendo-bootstrap/assets/placeholder.png">
                                    <div class="carousel-caption">
                                        <h2>Title</h2>
                                        <p>Description</p>
                                    </div>
                                </div>
                            </div>
                            <a class="left carousel-control" href="#fullcarousel-example" data-slide="prev"><i class="icon-prev fa fa-angle-left"></i></a>
                            <a class="right carousel-control" href="#fullcarousel-example" data-slide="next"><i class="icon-next fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@ include file="/WEB-INF/pages/casasindivi/fooderind.jsp"%>
    </body>

</html>