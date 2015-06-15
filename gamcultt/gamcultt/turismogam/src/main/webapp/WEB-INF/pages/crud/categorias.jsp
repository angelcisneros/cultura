<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/pages/templates/head.jsp"%>
<%@ include file="/WEB-INF/pages/templates/navbar.jsp"%>

<div id="contenido" class="container-fluid">
    <!-- Nav tabs -->
    <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab"><h4>Categorías de Talleres</h4></a></li>
        <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab"><h4>Categorías de Eventos</h4></a></li>
    </ul>

    <!-- Tab panes -->
    <div class="tab-content">
        <!-- TALLERES -->
        <div role="tabpanel" class="tab-pane active" id="profile">
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10 ">
                    <h2><strong>Categorías Talleres</strong></h2>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-10 form-inline">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 form-inline">
                        <div class="btn-group pull-right" role="group" aria-label="">
                            <button id="addCategoriaTallerButton" class="btn btn-primary">Agregar Categoria Taller</button>
                            <button id="reporteCategoriasTallerPDF" class="btn btn-danger">Reporte PDF</button>
                            <button id="reporteCategoriasTallerExcel" class="btn btn-success">Reporte Excel</button>
                        </div>
                    </div>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-1 col-lg-1"></div>
                <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">
                    <div class="row table-responsive">
                        <table id="categoriaTallerTable" class="table table-striped table-bordered table-hover">
                            <thead id="categoriaTallerThead" class="text-center">
                                <tr>
                                    <th>Nombre Taller</th>
                                    <th>descripción</th>
                                    <th>Opciones</th>
                                </tr>
                            </thead>
                            <tbody id="categoriaTallerTbody">
                                <c:forEach items="${categoriasTaller}" var="ct" varStatus="status">
                                    <tr valign="top">
                                        <td class="id">
                                            <label class="nombreTaller">${ct.nombre}</label>
                                            <label id="${ct.id}" class="ocultar">${ct.id}</label>
                                        </td>
                                        <td>
                                            <label class="descripcionTaller">${ct.descripcion}</label>
                                        </td>
                                        <td>
                                            <div class="btn-group" role="group" aria-label="">
                                                <button class="btn btn-primary categoriaTallerUpdateButton">Editar</button>
                                                <button class="btn btn-danger categoriaTallerDeleteButton">Eliminar</button>
                                                <button class="btn btn-warning categoriaTallerImagenButton">Imagen</button>
                                                <button class="btn btn-info categoriaTallerReporteIndividualButton">Reporte</button>
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
        <div role="tabpanel" class="tab-pane" id="messages">
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10 ">
                    <h2><strong>Categorias de Eventos</strong></h2>
                </div>
            </div><hr>
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-10 form-inline">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 form-inline">
                        <div class="btn-group pull-right" role="group" aria-label="">
                            <button id="addCategoriaEventoButton" class="btn btn-primary">Agregar Categoria Alumno</button>
                            <button id="reporteCategoriasEventoPDF" class="btn btn-danger">Reporte PDF</button>
                            <button id="reporteCategoriasEventoExcel" class="btn btn-success">Reporte Excel</button>
                        </div>
                    </div>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-1 col-lg-1"></div>
                <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">
                    <div class="row table-responsive">
                        <table id="categoriaEventoTable" class="table table-striped table-bordered table-hover">
                            <thead id="categoriaEventoThead" class="text-center">
                                <tr>
                                    <th>Nombre</th>
                                    <th>Descripión</th>
                                    <th>Opciones</th>
                                </tr>
                            </thead>
                            <tbody id="categoriaEventoTbody">
                                <c:forEach items="${categoriasEvento}" var="ce" varStatus="status">
                                    <tr valign="top">
                                        <td class="id">
                                            <label class="nombre">${ce.nombre}</label>
                                            <label id="${ce.id}" class="ocultar">${ce.id}</label>
                                        </td>
                                        <td>
                                            <label class="descripcion">${ce.descripcion}</label>
                                        </td>
                                        <td>
                                            <div class="btn-group" role="group" aria-label="">
                                                <button class="btn btn-primary categoriaEventoUpdateButton">Editar</button>
                                                <button class="btn btn-danger categoriaEventoDeleteButton">Eliminar</button>
                                                <button class="btn btn-warning categoriaEventoImagenButton">Imagen</button>
                                                <button class="btn btn-info categoriaEventoReporteIndividualButton">Reporte</button>
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
    </div>
</div>


<%@ include file="/WEB-INF/pages/crud/categoriasEventoPopUps.jsp"%>
<%@ include file="/WEB-INF/pages/crud/categoriasTallerPopUps.jsp"%>
<%@ include file="/WEB-INF/pages/templates/popUpRespuesta.jsp"%>j
<%@ include file="/WEB-INF/pages/templates/imagenPopUp.jsp"%>
<script src="../js/cargarImagenes.js" charset="UTF-8"></script>
<script src="../js/categoriaEvento/categoriaEvento.js" charset="UTF-8"></script>
<script src="../js/categoriaTaller/categoriaTaller.js" charset="UTF-8"></script>
<%@ include file="/WEB-INF/pages/templates/footer.jsp"%>