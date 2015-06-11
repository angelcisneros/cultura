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
                        <h1 class="text-danger">Descripcion</h1>
                        <h2 class="text-center">DescripcionBase</h2>
                        <h1 class="text-danger">Costo del Taller</h1>
                        <h2 class="text-center">CostoBase</h2>
                        <h1 class="text-danger">Costo del Taller</h1>
                        <table class="table responsive">
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
                        <div id="carousel-example" data-interval="false" class="carousel slide"
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
                            <a class="left carousel-control" href="#carousel-example" data-slide="prev"><i class="icon-prev  fa fa-angle-left"></i></a>
                            <a class="right carousel-control" href="#carousel-example" data-slide="next"><i class="icon-next fa fa-angle-right"></i></a>
                        </div>
                        <div class="row text-right">
                            <div class="col-md-8 text-right">
                                <a class="btn btn-danger btn-lg">Registrarme a Evento</a>
                            </div>
                        </div> 
                    </div>
                </div>
            </div>
        </div>
        <%@ include file="/WEB-INF/pages/casasindivi/fooderind.jsp"%>
    </body>


</html>