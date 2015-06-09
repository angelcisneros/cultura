<%-- 
    Document   : registroevento
    Created on : 9/06/2015, 01:30:39 AM
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
                        <div class="alert alert-danger alert-dismissable text-center">
                            <button contenteditable="false" type="button" class="close" data-dismiss="alert"
                            aria-hidden="true">×</button>
                            <b>Si ya te has Regisrado en uno de Nuestro Eventos solo ingresa tu correo
                                de Favor</b>
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
                                <div class="col-sm-2">
                                    <label for="inputEmail3" class="control-label">Nombre del Evento</label>
                                </div>
                                <div class="col-sm-10">
                                    <input type="email" class="form-control" id="inputEmail3" placeholder="Redireccionamiento de Pagina ">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-2">
                                    <label for="inputEmail3" class="control-label">Ingresa Tu Correo</label>
                                </div>
                                <div class="col-sm-10">
                                    <input type="email" class="form-control" id="inputEmail3" placeholder="Ingresa Tu Correo">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-danger">Inscribirme</button>
                                </div>
                            </div>
                        </form>
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
                            <strong>Bienvenido a Nuestra RED CULTURAL Inscribete a Nuestro Evento</strong>
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
                                    <label for="inputEmail3" class="control-label">Nombre del Visitante</label>
                                </div>
                                <div class="col-sm-8">
                                    <input type="email" class="form-control" id="inputEmail3" placeholder="Nombre del Visitante">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4">
                                    <label for="inputEmail3" class="control-label">Apellido Paterno del Visitante</label>
                                </div>
                                <div class="col-sm-8">
                                    <input type="email" class="form-control" id="inputEmail3" placeholder="Apellido Paterno del Visitante">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4">
                                    <label for="inputEmail3" class="control-label">Apellido Materno del Visitante</label>
                                </div>
                                <div class="col-sm-8">
                                    <input type="email" class="form-control" id="inputEmail3" placeholder="Apellido Materno del Visitante">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4">
                                    <label for="inputEmail3" class="control-label">Edad del Visitante</label>
                                </div>
                                <div class="col-sm-8">
                                    <input type="email" class="form-control" id="inputEmail3" placeholder="Edad O Armamos un FOR 1 a 100">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4">
                                    <label for="inputEmail3" class="control-label">Genero del Visitante</label>
                                </div>
                                <div class="col-sm-8">
                                    <select name="OS">
                                        <option selected="" value="0">Seleccione Genero</option>
                                        <option value="Masculino">Masculino</option>
                                        <option value="Femenino">Femenino</option>
                                    </select>
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
                                    <label for="inputEmail3" class="control-label">Desea Recibir Informacion de Evento Similares</label>
                                </div>
                                <div class="col-sm-8">
                                    <select name="OS">
                                        <option selected="" value="0">Respuesta</option>
                                        <option value="Si">Si</option>
                                        <option value="No">No</option>
                                    </select>
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
                        <button type="submit" class="btn btn-lg btn-primary">Registrarme</button>
                    </div>
                </div>
            </div>
        </div>
             <%@ include file="/WEB-INF/pages/casasindivi/fooderind.jsp"%>
    </body>

</html>
