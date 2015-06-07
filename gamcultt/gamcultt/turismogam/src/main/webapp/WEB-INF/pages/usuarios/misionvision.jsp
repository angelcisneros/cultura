<%-- 
    Document   : misionvision
    Created on : 4/06/2015, 01:47:17 AM
    Author     : Lap_christo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
        rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="css/principal/principal.css">
    </head>
    
    <body>
        <%@ include file="/WEB-INF/pages/usuarios/navbar.jsp"%>
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
                        <hr>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h1 class="text-danger">Mision</h1>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisici elit,
                            <br>sed eiusmod tempor incidunt ut labore et dolore magna aliqua.
                            <br>Ut enim ad minim veniam, quis nostrud</p>
                    </div>
                    <div class="col-md-6">
                        <h1 class="text-danger">Vision</h1>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisici elit,
                            <br>sed eiusmod tempor incidunt ut labore et dolore magna aliqua.
                            <br>Ut enim ad minim veniam, quis nostrud</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="text-center text-danger">Representantes de la Casa</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <img src="http://pingendo.github.io/pingendo-bootstrap/assets/user_placeholder.png"
                        class="center-block img-circle img-responsive">
                        <h3 class="text-center">Nombre Representante</h3>
                        <p class="text-center text-danger">Cargo</p>
                    </div>
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <img src="http://pingendo.github.io/pingendo-bootstrap/assets/user_placeholder.png"
                        class="center-block img-circle img-responsive">
                        <h3 class="text-center">Nombre Representante</h3>
                        <p class="text-center text-danger">cargo</p>
                    </div>
                </div>
            </div>
        </div>
        <%@ include file="/WEB-INF/pages/usuarios/fooder.jsp"%>
    </body>

</html>
