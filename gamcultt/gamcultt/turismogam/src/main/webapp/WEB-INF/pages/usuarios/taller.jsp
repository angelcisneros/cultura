<%-- 
    Document   : taller
    Created on : 4/06/2015, 01:08:19 AM
    Author     : Lap_christo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <c:forEach items="${categoriasTaller}" var="ct" varStatus="status">
            <c:choose>
                <c:when test="${status.count % 2 eq 0}">
                    <div class="section">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6 text-center">
                                    <img src="C:\Users\Lap_christo\Desktop\imagenes gam\danza.jpg" class="img-responsive img-thumbnail">
                                </div>
                                <div class="col-md-6">
                                    <h1 class="text-danger">${ct.nombre}</h1>
                                    <p class="text-danger">${ct.descripcion}</p>
                                    <a class="btn btn-danger verMas" alt="${ct.id}">Ver mas ....</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="section section-danger">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6">
                                    <h1 class="text-inverse">${ct.nombre}</h1>
                                    <p class="text-inverse text-justify">${ct.descripcion}</p>
                                    <a class="btn btn-danger verMas" alt="${ct.id}">Ver mas ....</a>
                                </div>
                                <div class="col-md-6">
                                    <img src="C:\Users\Lap_christo\Desktop\imagenes gam\artes.jpg" class="center-block img-responsive img-thumbnail">
                                </div>
                            </div>
                        </div>
                    </div>
                </c:otherwise>
            </c:choose>
        </c:forEach>
        <!-- POPUP DIRIGE -->
        <div class="modal fade" id="popUpMandaCasas" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header amarillo">
                        <button type="button" class="close" data-dismiss="modal">
                            <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                        </button>
                        <h2 class="modal-title"><strong id="tituloPopUp">Casas deonde se imparte</strong></h2>
                    </div>
                    <div class="modal-body" id="contenidoCasasImpartenTaller">
                        <%@ include file="/WEB-INF/pages/usuarios/casasImpartenTaller.jsp"%>
                    </div>
                    <div class="modal-footer amarillo">
                        <button type="button" class="btn btn-primary" data-dismiss="modal">Aceptar</button>
                    </div>
                </div> <!-- /.modal-content -->
            </div> <!-- /.modal-dialog -->
        </div>
        <script src="js/main.js" charset="UTF-8"></script>
        <script src="js/vistasGenerales/vistasGenerales.js"></script>
        <%@ include file="/WEB-INF/pages/usuarios/fooder.jsp"%>
    </body>
</html>