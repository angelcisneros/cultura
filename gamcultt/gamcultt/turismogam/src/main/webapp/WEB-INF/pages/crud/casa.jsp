<%@ include file="/WEB-INF/pages/templates/head.jsp"%>
<%@ include file="/WEB-INF/pages/templates/navbar.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="contenido" class="container-fluid">
    <div class="row">
        <div class="col-lg-1"></div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-10 ">
            <h2><strong>Casas y Centros Sociales</strong></h2>
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
                        <option label="Por Talleres" value="1" >Por Talleres</option>
                        <option label="Por Salas" value="2" >Por Salas</option>
                        <option label="Por Profesores" value="3" >Por Profesores</option>
                    </select>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 form-inline">
                <div class="btn-group pull-right" role="group" aria-label="">
                    <button id="addCasaButton" class="btn btn-primary">Agregar Casa</button>
                    <button id="reporteCasasPDF" class="btn btn-danger">Reporte PDF</button>
                    <button id="reporteCasasExcel" class="btn btn-success">Reporte Excel</button>
                </div>
            </div>
        </div>

    </div>
    <hr />
    <div class="row">
        <div class="col-md-1 col-lg-1"></div>
        <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">
            <div class="row table-responsive">
                <table id="casaTable" class="table table-striped table-bordered table-hover">
                    <thead id="casaThead" class="text-center">
                        <tr>
                            <th>Nombre</th>
                            <th>Dirección</th>
                            <th>Teléfono</th>
                            <th>Horario</th>
                            <th>Información</th>
                            <th>Link Maps</th>
                            <th>Es Casa</th>
                            <th>Opciones</th>
                        </tr>
                    </thead>
                    <tbody id="casaTbody">
                        <%@ include file="/WEB-INF/pages/crud/casaBody.jsp"%>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="col-md-1 col-lg-1"></div>
    </div>
</div>

<%@ include file="/WEB-INF/pages/crud/casaPopUps.jsp"%>
<%@ include file="/WEB-INF/pages/templates/imagenPopUp.jsp"%>
<%@ include file="/WEB-INF/pages/templates/popUpRespuesta.jsp"%>
<%@ include file="/WEB-INF/pages/busquedas/casaBusquedas.jsp"%>
<script src="../js/casa/casa.js" charset="UTF-8"></script>
<script src="../js/cargarImagenes.js" charset="UTF-8"></script>
<script src="../js/casa/casaReporte.js" charset="UTF-8"></script>
<%@ include file="/WEB-INF/pages/templates/footer.jsp"%>
