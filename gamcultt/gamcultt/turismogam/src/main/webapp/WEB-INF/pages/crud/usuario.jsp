<%@ include file="/WEB-INF/pages/templates/head.jsp"%>
<%@ include file="/WEB-INF/pages/templates/navbar.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="contenido" class="container-fluid">
    <div class="row">
        <div class="col-lg-1"></div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-10 ">
            <h2><strong>Encargados</strong></h2>
        </div>
    </div>
    <hr>
     <div class="row">
        <div class="col-lg-1"></div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-10 form-inline">
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 form-inline">
                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon1">Búsquedas:</span>
                    <select id="busquedas" class="form-control" aria-describedby="basic-addon1">
                        <option label="--TODOS--" value="0">--TODOS--</option>
                        <option label="Por Nombre" value="1" >Por Clase</option>
                        <option label="Por Casa" value="2" >Por Casa</option>
                        <option label="Por Correo" value="5" >Por Correo</option>
                    </select>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 form-inline">
                <div class="btn-group pull-right" role="group" aria-label="">
                    <button id="addUsuarioButton" class="btn btn-primary">Agregar Encargado</button>
                    <button id="reporteUsuariosPDF" class="btn btn-danger">Reporte PDF</button>
                    <button id="reporteUsuariosExcel" class="btn btn-success">Reporte Excel</button>
                    <button class="btn btn-info reporteIndividualUsuarioButton">Reporte</button>
                </div>
            </div>
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="col-md-1 col-lg-1"></div>
        <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">
            <div class="row table-responsive">
                <table id="usuarioTable" class="table table-striped table-bordered table-hover">
                    <thead id="usuarioThead" class="text-center">
                        <tr>
                            <th>Nombre</th>
                            <th>Casa</th>
                            <th>Teléfono</th>
                            <th>Correo</th>
                            <th>Opciones</th>
                        </tr>
                    </thead>

                    <tbody id="usuarioTbody">
                        <c:forEach items="${usuarios}" var="e" varStatus="status">
                            <tr valign="top">
                                <td class="id">
                                    <label class="nombre">${e.nombre}</label>&#32;
                                    <label class="paterno">${e.paterno}</label>&#32;
                                    <label class="materno">${e.materno}</label>
                                    <label class="ocultar">${e.id}</label>
                                </td>
                                <td>
                                    <label class="casa">${e.casa.nombre}</label>
                                </td>
                                <td>
                                    <label class="telefono">${e.telefono}</label>
                                </td>
                                <td>
                                    <label class="correo">${e.correo}</label>
                                </td>
                                <td>
                                    <div class="btn-group" role="group" aria-label="">
                                        <button class="btn btn-primary usuarioUpdateButton">Editar</button>
                                        <button class="btn btn-danger usuarioDeleteButton">Eliminar</button>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="col-md-1 col-lg-1"></div>
    </div>
</div>

<%@ include file="/WEB-INF/pages/crud/usuarioPopUps.jsp"%>
<%@ include file="/WEB-INF/pages/templates/popUpRespuesta.jsp"%>
<script src="../js/usuario/usuario.js" charset="UTF-8"></script>
<script src="../js/sala/salaReporte.js" charset="UTF-8"></script>
<%@ include file="/WEB-INF/pages/templates/footer.jsp"%>