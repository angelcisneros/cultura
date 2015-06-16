<%@ include file="/WEB-INF/pages/templates/head.jsp"%>
<%@ include file="/WEB-INF/pages/templates/navbar.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="contenido" class="container-fluid">
    <div class="row">
        <div class="col-lg-1"></div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-10 ">
            <h2><strong>Eventos</strong></h2>
        </div>
    </div>
    <hr />
    <hr>
    <div class="row">
        <div class="col-lg-1"></div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-10 form-inline">
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 form-inline">
                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon1">Búsquedas:</span>
                    <select id="busquedas" class="form-control" aria-describedby="basic-addon1">
                        <option label="--TODOS--" value="0">--TODOS--</option>
                        <option label="Por Taller" value="1" >Por Taller</option>
                        <option label="Por Profesor" value="2" >Por Profesor</option>
                        <option label="Por Sala" value="3" >Por Sala</option>
                        <option label="Por Vigencia" value="4" >Por Vigencia</option>
                    </select>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 form-inline">
                <div class="btn-group pull-right" role="group" aria-label="">
                    <button id="addEventoButton" class="btn btn-primary">Agregar Clase</button>
                    <button id="reporteEventoPDF" class="btn btn-danger">Reporte PDF</button>
                    <button id="reporteEventoExcel" class="btn btn-success">Reporte Excel</button>
                </div>
            </div>
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="col-md-1 col-lg-1"></div>
        <div id="busquedasDivPrincipal" class="col-xs-12 col-sm-12 col-md-10 col-lg-10">
            
        </div>
    </div>
    <hr>
    <div class="row">
        <div class="col-md-1 col-lg-1"></div>
        <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">
            <div class="row table-responsive">
                <table id="eventoTable" class="table table-striped table-bordered table-hover">
                    <thead id="eventoThead" class="text-center">
                        <tr>
                            <th>Nombre</th>
                            <th>Sala</th>
                            <th>Categoría Evento</th>
                            <th>Fecha</th>
                            <th>Información</th>
                            <th>Horario</th>
                            <th>Dirección</th>
                            <th>Asistencia Estimada</th>
                            <th>Link Maps</th>
                            <th>Opciones</th>
                        </tr>
                    </thead>
                    <tbody id="eventoTbody">
                        <%@ include file="/WEB-INF/pages/crud/eventoBody.jsp"%>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="col-md-1 col-lg-1"></div>
    </div>
</div>

<%@ include file="/WEB-INF/pages/crud/eventoPopUps.jsp"%>
<%@ include file="/WEB-INF/pages/templates/popUpRespuesta.jsp"%>
<script src="../js/evento/evento.js" charset="UTF-8"></script>
<script src="../js/evento/eventoReporte.js" charset="UTF-8"></script>
<%@ include file="/WEB-INF/pages/templates/footer.jsp"%>
