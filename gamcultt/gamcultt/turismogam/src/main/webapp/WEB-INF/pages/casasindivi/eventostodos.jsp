<%-- 
    Document   : tallertodos
    Created on : 8/06/2015, 11:14:30 PM
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
                    <div class="col-md-4">
                        <ul class="list-group">
                            <li class="list-group-item">Cras justo odio</li>
                            <li class="list-group-item">Dapibus ac facilisis in</li>
                            <li class="list-group-item">Morbi leo risus</li>
                            <li class="list-group-item">Porta ac consectetur ac</li>
                            <li class="list-group-item">Vestibulum at eros</li>
                            <li class="list-group-item">Cras justo odio</li>
                            <li class="list-group-item">Dapibus ac facilisis in</li>
                            <li class="list-group-item">Morbi leo risus</li>
                            <li class="list-group-item">Porta ac consectetur ac</li>
                            <li class="list-group-item">Vestibulum at eros</li>

                        </ul>
                    </div>
                    <div class="col-md-8">
                        <h1 class="text-danger">Nombre</h1>
                        <h2 class="text-center">NombreBase</h2>
                        <h1 class="text-danger">Descripción</h1>
                        <h2 class="text-center">DescripciónBase</h2>
                        <h1 class="text-danger">Fecha del Evento</h1>
                        <h2 class="text-center">FechaBase</h2>
                        <h1 class="text-danger">Horario del Evento</h1>
                        <h2 class="text-center">HorarioBase</h2>

                    </div>
                    </div>
                    <div class="section"> 
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6">
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3761.193842445406!2d-99.11852479999999!3d19.4902896!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85d1f99978cf24a5%3A0x295b88b166640ddf!2sProlongaci%C3%B3n+Misterios%2C+Santa+Isabel+Tola%2C+07010+Ciudad+de+M%C3%A9xico%2C+D.F.!5e0!3m2!1ses!2smx!4v1433401593985" width="500" height="400" frameborder="0" style="border:0"></iframe>
                                </div>
                                <div class="col-md-6">
                                    <div id="fullcarousel-example" data-interval="false" class="carousel slide"
                                         data-ride="carousel">
                                        <div class="carousel-inner">
                                            <div class="item active">
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
                    <div class="row text-right">
                        <div class="col-md-12 text-right">
                            <a class="btn btn-danger btn-lg">Registrarme a Evento</a>
                        </div>
                    </div>  
                
            </div>

        </div>
        <%@ include file="/WEB-INF/pages/casasindivi/fooderind.jsp"%>
    </body>


</html>