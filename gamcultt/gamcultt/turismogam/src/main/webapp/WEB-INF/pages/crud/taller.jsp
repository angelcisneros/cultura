<%@ include file="/WEB-INF/pages/templates/head.jsp"%>
<%@ include file="/WEB-INF/pages/templates/navbar.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="contenido" class="container-fluid">
    <div class="row">
        <div class="col-lg-1"></div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-10 ">
            <h2><strong>Talleres</strong></h2>
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
                        <option label="Por Clase" value="2" >Por Clase</option>
                        <option label="Por Sala" value="5" >Por Sala</option>
                        <option label="Por Precio" value="5" >Por Precio</option>
                    </select>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 form-inline">
                <div class="btn-group pull-right" role="group" aria-label="">
                    <button id="addTallerButton" class="btn btn-primary">Agregar Taller</button>
                    <button id="reporteTalleresPDF" class="btn btn-danger">Reporte PDF</button>
                    <button id="reporteTalleresExcel" class="btn btn-success">Reporte Excel</button>
                </div>
            </div>
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="col-md-1 col-lg-1"></div>
        <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">
            <div class="row table-responsive">
                <table id="tallerTable" class="table table-striped table-bordered table-hover">
                    <thead id="tallerThead" class="text-center">
                        <tr>
                            <th>Nombre</th>
                            <th>Categoría</th>
                            <th>Costo</th>
                            <th>Horario</th>
                            <th>Descripción</th>
                            <th>Opciones</th>
                        </tr>
                    </thead>

                    <tbody id="tallerTbody">
                        <%@ include file="/WEB-INF/pages/crud/tallerBody.jsp"%>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="col-md-1 col-lg-1"></div>
    </div>
</div>

<%@ include file="/WEB-INF/pages/crud/tallerPopUps.jsp"%>
<%@ include file="/WEB-INF/pages/crud/galeriaTaller.jsp"%>
<%@ include file="/WEB-INF/pages/templates/popUpRespuesta.jsp"%>
<script src="../js/inputFile.js" charset="UTF-8"></script>
<script src="../js/taller/taller.js" charset="UTF-8"></script>
<script src="../js/cargarImagenes.js" charset="UTF-8"></script>
<script src="../js/taller/galeriaTaller.js" charset="UTF-8"></script>
<script src="../js/sala/salaReporte.js" charset="UTF-8"></script>
<%@ include file="/WEB-INF/pages/templates/footer.jsp"%>
