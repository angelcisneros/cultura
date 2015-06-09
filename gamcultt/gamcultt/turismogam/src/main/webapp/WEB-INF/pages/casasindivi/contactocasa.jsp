<%-- 
    Document   : contactocasa
    Created on : 8/06/2015, 11:24:05 PM
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
                        <hr>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="text-danger">Contactanos</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <form role="form">
                            <div class="form-group">
                                <label class="control-label" for="exampleInputEmail1">Nombre</label>
                                <input class="form-control" id="exampleInputEmail1" placeholder="Nombre"
                                type="email">
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="exampleInputPassword1">Correo Electronico</label>
                                <input class="form-control" id="exampleInputEmail1"
                                placeholder="Enter email" type="email">
                            </div>
                            <button type="submit" class="btn btn-default">Submit</button>
                        </form>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label" for="exampleInputPassword1">Comentario</label>
                            <input class="form-control" id="exampleInputEmail1"
                            placeholder="Comentario" type="email">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h2 class="text-danger">Dirección</h2>
                        <h2 class="text-center">base</h2>
                        <h2 class="text-danger">Telefono</h2>
                        <h2 class="text-center">Base</h2>
                        <h2 class="text-danger">Correo&nbsp;</h2>
                        <h2 class="text-center">Base</h2>
                    </div>
                    <div class="col-md-6">
                        <div class="responsive">
                            <iframe frameborder="0" scrolling="no" marginheight="0" marginwidth="0"
                            src="https://www.google.com/maps/d/embed?mid=zjQc6wjcorqU.kKvtSxX5y7dg&amp;hl=es"
                            width="540" height="480"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
           <%@ include file="/WEB-INF/pages/casasindivi/fooderind.jsp"%>
    </body>

</html>