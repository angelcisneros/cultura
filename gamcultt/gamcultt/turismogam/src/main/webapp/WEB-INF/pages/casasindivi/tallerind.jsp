<%-- 
    Document   : Tallerind
    Created on : 9/06/2015, 12:58:16 AM
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
                    <div class="col-md-12">
                        <div class="section">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="section">
                                            <div class="container">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div id="fullcarousel-example" data-interval="5000" class="carousel slide"
                                                        data-ride="carousel">
                                                            <div class="carousel-inner">
                                                                <div class="item active">
                                                                    <img src="C:\Users\Lap_christo\Desktop\imagenes gam\danza.jpg">
                                                                    <div class="carousel-caption">
                                                                        <h2>Title</h2>
                                                                        <p>Description</p>
                                                                    </div>
                                                                </div>
                                                                <div class="item">
                                                                    <img src="..\..\..\imagenes gam\Escuela-Satélite.jpg">
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
                                                        <p></p>
                                                        <p></p>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <h1 class="text-danger">Nombre</h1>
                                                        <h2 class="text-center">NombreBase</h2>
                                                        <h1 class="text-danger">Descripcion</h1>
                                                        <h2 class="text-center">DescripcionBase</h2>
                                                        <h1 class="text-danger">Costo del Taller</h1>
                                                        <h2 class="text-center">CostoBase</h2>
                                                    </div>
                                                    <p></p>
                                                    <p></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th class="danger">Lunes</th>
                                    <th class="danger">Martes</th>
                                    <th class="danger">Miercoles</th>
                                    <th class="danger">Jueves</th>
                                    <th class="danger">Viernes</th>
                                    <th class="danger">Sabado</th>
                                    <th class="danger">Domingo</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Base</td>
                                    <td>Base</td>
                                    <td>Base</td>
                                    <td>Base</td>
                                    <td>Base</td>
                                    <td>Base</td>
                                    <td>Base</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <%@ include file="/WEB-INF/pages/casasindivi/fooderind.jsp"%>
    </body>

</html>