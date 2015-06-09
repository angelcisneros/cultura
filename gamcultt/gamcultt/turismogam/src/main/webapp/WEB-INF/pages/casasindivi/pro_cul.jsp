<%-- 
    Document   : pro_cul
    Created on : 9/06/2015, 01:55:02 AM
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
                        <div class="alert alert-dismissable alert-warning text-center">
                            <button contenteditable="false" type="button" class="close" data-dismiss="alert"
                            aria-hidden="true">×</button>
                            <strong>Bienvenido a Nuestra RED CULTURAL Inscribete Tu Propuesta</strong>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <div class="col-sm-4">
                                    <label for="inputEmail3" class="control-label" contenteditable="true">Nombre del Representante</label>
                                </div>
                                <div class="col-sm-8">
                                    <input type="email" class="form-control" id="inputEmail3" placeholder="Nombre Completo del Representante">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4">
                                    <label for="inputEmail3" class="control-label">Nombre de la Propuesta Cultural</label>
                                </div>
                                <div class="col-sm-8">
                                    <input type="email" class="form-control" id="inputEmail3" placeholder="Nombre de la Propuesta ">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4">
                                    <label for="inputEmail3" class="control-label">Objetivo de la Propuesta Cultural</label>
                                </div>
                                <div class="col-sm-8">
                                    <input type="email" class="form-control" id="inputEmail3" placeholder="Objetivo de la Propuesta">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4">
                                    <label for="inputEmail3" class="control-label">Descripcion de la Propuesta Cultural</label>
                                </div>
                                <div class="col-sm-8">
                                    <input type="email" class="form-control" id="inputEmail3" placeholder="Descripcion de la Propuesta">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4">
                                    <label for="inputEmail3" class="control-label">Telefono</label>
                                </div>
                                <div class="col-sm-8">
                                    <input type="search" class="form-control" id="inputEmail3" placeholder="Telefono">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4">
                                    <label for="inputEmail3" class="control-label">Correo Electronico</label>
                                </div>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="inputEmail3" placeholder="Correo Electronico">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4">
                                    <label for="inputEmail3" class="control-label">Personas que Participan</label>
                                </div>
                                <div class="col-sm-8">
                                    <input type="email" class="form-control" id="inputEmail3" placeholder="Cantidad de Personas">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4">
                                    <label for="inputEmail3" class="control-label">Cantidad de Personas que se Estima beneficiar</label>
                                </div>
                                <div class="col-sm-8">
                                    <input type="email" class="form-control" id="inputEmail3" placeholder="Cantidad de Personas que se Estima beneficiar">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10 text-right">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox">
                                    <a href="#">ACEPTA TERMINOS Y A VER LEIDO EL AVISO DE PRIVACIDAD </a>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-right">
                        <button type="submit" class="btn btn-lg btn-primary">Enviar</button>
                    </div>
                </div>
            </div>
        </div>
      <%@ include file="/WEB-INF/pages/casasindivi/fooderind.jsp"%>
    </body>

</html>