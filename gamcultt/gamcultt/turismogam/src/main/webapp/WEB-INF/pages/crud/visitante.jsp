<%@ include file="/WEB-INF/pages/templates/head.jsp"%>
<%@ include file="/WEB-INF/pages/templates/navbar.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="contenido" class="container-fluid">
    <div class="row">
        <div class="col-lg-1"></div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-10 ">
            <h2><strong>Visitantes</strong></h2>
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="col-lg-1"></div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-10 form-inline">
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 form-inline">
                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon1">Búsquedas:</span>
                    <select id="busquedas" class="form-control" aria-describedby="basic-addon1">
                        <option label="--TODOS--" value="0">--TODOS--</option>
                        <option label="Por Nombre Visitante" value="1" >Por Nombre Visitante</option>
                        <option label="Por Genero" value="2" >Por Generor</option>
                        <option label="Por Edad" value="3" >Por Edad</option>
                    </select>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 form-inline">
                <div class="btn-group pull-right" role="group" aria-label="">
                    <button id="addVisitanteButton" class="btn btn-primary">Agregar Visitante</button>
                    <button id="reporteVisitantePDF" class="btn btn-danger">Reporte PDF</button>
                    <button id="reporteVisitanteExcel" class="btn btn-success">Reporte Excel</button>
                </div>
            </div>
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="col-md-1 col-lg-1"></div>
        <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">
            <div class="row table-responsive">
                <table id="visitanteTable" class="table table-striped table-bordered table-hover">
                    <thead id="visitanteThead" class="text-center">
                        <tr>
                            <th>Nombre</th>
                            <th>Correo</th>
                            <th>Teléfono</th>
                            <th>Edad</th>
                            <th>Genero</th>
                            <th>Opciones</th>
                        </tr>
                    </thead>
                <tbody id="visitanteTbody">
                        <%@ include file="/WEB-INF/pages/crud/visitanteBody.jsp"%>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="col-md-1 col-lg-1"></div>
    </div>
</div>
<%@ include file="/WEB-INF/pages/crud/visitantePopUps.jsp"%>
<%@ include file="/WEB-INF/pages/templates/popUpRespuesta.jsp"%>
<%@ include file="/WEB-INF/pages/busquedas/visitanteBusquedas.jsp"%>
<script src="../js/visitante/visitante.js" charset="UTF-8"></script>
<script src="../js/visitante/visitanteReporte.js" charset="UTF-8"></script>
<script src="../js/visitante/visitanteBusquedas.js" charset="UTF-8"></script>
<%@ include file="/WEB-INF/pages/templates/footer.jsp"%>
