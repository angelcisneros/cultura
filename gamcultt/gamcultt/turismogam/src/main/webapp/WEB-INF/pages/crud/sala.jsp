<%@ include file="/WEB-INF/pages/templates/head.jsp"%>
<%@ include file="/WEB-INF/pages/templates/navbar.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="contenido" class="container-fluid">
    <div class="row">
        <div class="col-lg-1"></div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-10 ">
            <h2><strong>Salas</strong></h2>
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
                        <option label="Por Nombre" value="1" >Por Nombre</option>
                        <option label="Por Capacidad" value="2" >Por Capacidad</option>
                        <option label="Por Casa" value="5" >Por Casa</option>
                        <option label="Por Clase" value="5" >Por Clase</option>
                    </select>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 form-inline">
                <div class="btn-group pull-right" role="group" aria-label="">
                    <button id="addSalaButton" class="btn btn-primary">Agregar Sala</button>
                    <button id="reporteSalasPDF" class="btn btn-danger">Reporte PDF</button>
                    <button id="reporteSalasExcel" class="btn btn-success">Reporte Excel</button>
                    <button class="btn btn-info ProfesorReporteIndividualButton">Reporte</button>
                </div>
            </div>
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="col-md-1 col-lg-1"></div>
        <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">
            <div class="row table-responsive">
                <table id="salaTable" class="table table-striped table-bordered table-hover">
                    <thead id="salaThead" class="text-center">
                        <tr>
                            <th>Nombre</th>
                            <th>Casa</th>
                            <th>Capacidad</th>
                            <th>Opciones</th>
                        </tr>
                    </thead>

                    <tbody id="salaTbody">
                        <%@ include file="/WEB-INF/pages/crud/salaBody.jsp"%>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="col-md-1 col-lg-1"></div>
    </div>
</div>

<%@ include file="/WEB-INF/pages/crud/salaPopUps.jsp"%>
<%@ include file="/WEB-INF/pages/templates/popUpRespuesta.jsp"%>
<script src="../js/sala/sala.js" charset="UTF-8"></script>
<script src="../js/sala/salaReporte.js" charset="UTF-8"></script>
<%@ include file="/WEB-INF/pages/templates/footer.jsp"%>
