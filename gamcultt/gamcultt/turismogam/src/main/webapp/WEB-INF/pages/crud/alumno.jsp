<%@ include file="/WEB-INF/pages/templates/head.jsp"%>
<%@ include file="/WEB-INF/pages/templates/navbar.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="contenido" class="container-fluid">
    <div class="row">
        <div class="col-lg-1"></div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-10 ">
            <h2><strong>Alumnos</strong></h2>
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
                        <option label="Por Nombre Alumno" value="1" >Por Nombre Alumno</option>
                        <option label="Por Nombre Tutor" value="2" >Por Nombre Tutor</option>
                        <option label="Por Edad" value="3" >Por Edad</option>
                    </select>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 form-inline">
                <div class="btn-group pull-right" role="group" aria-label="">
                    <button id="addAlumnoButton" class="btn btn-primary">Agregar Alumno</button>
                    <button id="reporteAlumnosPDF" class="btn btn-danger">Reporte PDF</button>
                    <button id="reporteAlumnosExcel" class="btn btn-success">Reporte Excel</button>
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
                <table id="alumnoTable" class="table table-striped table-bordered table-hover">
                    <thead id="alumnoThead" class="text-center">
                        <tr>
                            <th>Nombre</th>
                            <th>Edad</th>
                            <th>Nombre Tutor</th>
                            <th>Correo</th>
                            <th>Teléfono</th>
                            <th>Celular</th>
                            <th>Opciones</th>
                        </tr>
                    </thead>
                    <tbody id="alumnoTbody">
                        <%@ include file="/WEB-INF/pages/crud/alumnoBody.jsp"%>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="col-md-1 col-lg-1"></div>
    </div>
</div>
<%@ include file="/WEB-INF/pages/crud/alumnoPopUps.jsp"%>
<%@ include file="/WEB-INF/pages/templates/popUpRespuesta.jsp"%>
<%@ include file="/WEB-INF/pages/busquedas/alumnoBusquedas.jsp"%>
<script src="../js/alumno/alumno.js" charset="UTF-8"></script>
<script src="../js/alumno/alumnoReporte.js" charset="UTF-8"></script>
<script src="../js/alumno/alumnosBusquedas.js" charset="UTF-8"></script>
<%@ include file="/WEB-INF/pages/templates/footer.jsp"%>
