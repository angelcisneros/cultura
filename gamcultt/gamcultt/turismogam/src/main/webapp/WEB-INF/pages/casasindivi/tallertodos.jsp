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
                <div class="row text-left">
                    <div class="col-md-12">
                        <h1 class="text-danger">Taller de Nuestra Casa</h1>
                        <div class="col-md-12">
                            <div class="btn-group btn-group-lg col-md-12 text-justify">
                                <a class="btn btn-default dropdown-toggle" data-toggle="dropdown"> Seleccione Categoria del Taller  <span class="fa fa-caret-down"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="section section-danger">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <img src="http://pingendo.github.io/pingendo-bootstrap/assets/placeholder.png"
                            class="img-responsive">
                        </div>
                        <div class="col-md-6">
                            <h1 class="text-inverse">A title</h1>
                            <p class="text-inverse">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo
                                ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis
                                dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies
                                nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.
                                Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In
                                enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum
                                felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus
                                elementum semper nisi.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <h1>A title</h1>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo
                                ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis
                                dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies
                                nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.
                                Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In
                                enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum
                                felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus
                                elementum semper nisi.</p>
                        </div>
                        <div class="col-md-6">
                            <img src="http://pingendo.github.io/pingendo-bootstrap/assets/placeholder.png"
                            class="img-responsive">
                        </div>
                    </div>
                </div>
            </div>
       <%@ include file="/WEB-INF/pages/casasindivi/fooderind.jsp"%>
    </body>

</html>