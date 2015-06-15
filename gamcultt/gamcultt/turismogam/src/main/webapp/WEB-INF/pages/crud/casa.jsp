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
                        <option label="Por Profesores" value="5" >Por Profesores</option>
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
                        <th>Direccion</th>
                        <th>Teléfono</th>
                        <th>Horario</th>
                        <th>Informacion</th>
                        <th>Link Maps</th>
                        <th>Es Casa</th>
                        <th>Opciones</th>
                    </tr>
                </thead>

                <tbody id="casaTbody">
                    <c:forEach items="${casas}" var="c" varStatus="status">
                        <tr valign="top">
                            <td class="id">
                                <label class="nombre">${c.nombre}</label>&#32;
                                <label class="ocultar">${c.id}</label>
                            </td>
                            <td>
                                <label class="direccion">${c.direccion}</label>&#32;
                            </td>
                            <td>
                                <label class="telefono">${c.telefono}</label>
                            </td>
                            <td>
                                <label class="horario">${c.horario}</label>
                            </td>                                    
                            <td>
                                <label class="informacion">${c.informacion}</label>
                            </td>                                    
                            <td>
                                <label class="liknMaps">${c.liknMaps}</label>
                            </td>
                            <td>
                                <label class="esCentro">${c.esCentro}</label>
                            </td>
                            <td>
                                <div class="btn-group" role="group" aria-label="">
                                    <button class="btn btn-primary casaUpdateButton">Editar</button>
                                    <button class="btn btn-danger casaDeleteButton">Eliminar</button>
                                    <button class="btn btn-warning casaImagenButton">Imagen</button>
                                    <button class="btn btn-info reporteIndividualCasa">Reporte</button>
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

<!-- POPUP AGREGAR ALUMNO -->
<div class="modal fade" id="popUpCasaAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Agregar Nueva Casa</strong></h4>
            </div>
            <div class="modal-body">
                <form id="casaAddForm">
                    <label>Nombre de la Casa:</label>
                    <input id="nombreAdd" name="nombre" class="form-control" type="text" placeholder="Ingrese el Nombre del Casa">
                    <br>
                    <label>Dirección:</label>
                    <input id="direccionAdd" name="direccion" class="form-control" type="text" placeholder="Ingrese la Dirección de la Casa">
                    <br>
                    <label>Teléfono:</label>
                    <input id="telefonoAdd" name="telefono" class="form-control" type="text" placeholder="Ingrese el Teléfono">
                    <br>
                    <label>Horario:</label>
                    <input id="horarioAdd" name="horario" class="form-control" type="email" placeholder="Ingrese el Horario de la Casa">
                    <br>
                    <label>Información:</label>
                    <input id="informacionAdd" name="informacion" class="form-control" type="text" placeholder="Ingrese Información Extra de la Casa">
                    <br>
                    <label>Link:</label>
                    <input id="liknMapsAdd" name="liknMaps" class="form-control" type="text" placeholder="Ingrese el Link del Mapa">
                    <label class="checkbox mischeckbox" >
                        <input id="centroSocialAdd" name="esCentro" type="checkbox" class="mischeckbox cambioCheck" /><strong>Es Centro Social</strong>
                    </label>
                </form>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="addCasa" type="button" class="btn btn-primary">Agregar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<!-- POPUP ACTUALIZAR ALUMNO -->
<div class="modal fade" id="popUpCasaUpdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Actualizar Casa</strong></h4>
            </div>
            <div class="modal-body">
                <form id="casaUpdateForm">
                    <label>Nombre de la Casa:</label>
                    <input id="nombreUpdate" name="nombre" class="form-control" type="text" placeholder="Ingrese el Nombre del Casa">
                    <br>
                    <label>Dirección:</label>
                    <input id="direccionUpdate" name="direccion" class="form-control" type="text" placeholder="Ingrese la Dirección de la Casa">
                    <br>
                    <label>Teléfono:</label>
                    <input id="telefonoUpdate" name="telefono" class="form-control" type="text" placeholder="Ingrese el Teléfono">
                    <br>
                    <label>Horario:</label>
                    <input id="horarioUpdate" name="horario" class="form-control" type="email" placeholder="Ingrese el Horario de la Casa">
                    <br>
                    <label>Información:</label>
                    <input id="informacionUpdate" name="informacion" class="form-control" type="text" placeholder="Ingrese Información Extra de la Casa">
                    <br>
                    <label>Link:</label>
                    <input id="liknMapsUpdate" name="liknMaps" class="form-control" type="text" placeholder="Ingrese el Link del Mapa">
                    <label class="checkbox mischeckbox" >
                        <input id="centroSocialUpdate" name="esCentro" type="checkbox" class="mischeckbox cambioCheck" /><strong>Es Centro Social</strong>
                    </label>
                    <input id="idUpdate" name="id" class="form-control ocultar">
                </form>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="updateCasa" type="button" class="btn btn-primary">Actualizar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<!-- POPUP ELIMINAR ALUMNO -->
<div class="modal fade" id="popUpCasaDelete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Eliminar Casa</strong></h4>
            </div>
            <div class="modal-body">
                <form id="casaDeleteForm">
                    <strong><label>Nombre de la Casa:</label></strong>
                    <label id="nombreDelete"></label>
                    <br>
                    <strong><label>Dirección:</label></strong>
                    <label id="direccionDelete"></label>
                    <br>
                    <strong><label>Teléfono:</label></strong>
                    <label id="telefonoDelete"></label>
                    <br>
                    <strong><label>Horario:</label></strong>
                    <label id="horarioDelete"></label>
                    <br>
                    <strong><label>Información:</label></strong>
                    <label id="informacionDelete"></label>
                    <input id="idDelete" name="id" class="form-control ocultar" type="text" placeholder="Ingrese el nombre del Casa">
                </form>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="deleteCasa" type="button" class="btn btn-primary">Eliminar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<%@ include file="/WEB-INF/pages/templates/imagenPopUp.jsp"%>
<%@ include file="/WEB-INF/pages/templates/popUpRespuesta.jsp"%>
<script src="../js/casa/casa.js" charset="UTF-8"></script>
<script src="../js/cargarImagenes.js" charset="UTF-8"></script>
<%@ include file="/WEB-INF/pages/templates/footer.jsp"%>
