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
    <div class="row">
        <div class="col-lg-1"></div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-10 form-inline">
            <a id="addEventoButton" class="btn btn-primary btn-lg" role="button">Agregar Nuevo Evento +</a>
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="col-md-1 col-lg-1"></div>
        <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">
            <div class="row table-responsive">
                <table id="eventoTable" class="table table-striped table-bordered table-hover">
                    <thead id="eventoThead" class="text-center">
                        <tr>
                            <th>Nombre</th>
                            <th>Sala</th>
                            <th>Categor�a Evento</th>
                            <th>Fecha</th>
                            <th>Informaci�n</th>
                            <th>Horario</th>
                            <th>Direcci�n</th>
                            <th>Asistencia Estimada</th>
                            <th>Link Maps</th>
                            <th>Opciones</th>
                        </tr>
                    </thead>
                    <tbody id="eventoTbody">
                        <c:forEach items="${eventos}" var="e" varStatus="status">
                            <tr valign="top">
                                <td class="id">
                                    <label class="nombre">${e.nombre}</label>
                                    <label class="ocultar">${e.id}</label>
                                </td>
                                <td>
                                    <label class="sala">${e.sala.nombre}</label>
                                </td>
                                <td>
                                    <label class="categoriaEvento">${e.categoriaEvento.nombre}</label>
                                </td>
                                <td>
                                    Del <label class="fechaInicio">${e.fechaInicio}</label>
                                    al <label class="fechaFin">${e.fechaFin}</label> 
                                </td>
                                <td>
                                    <label class="informacion">${e.informacion}</label>
                                </td>
                                <td>
                                    <label class="horario">${e.horario}</label>
                                </td>
                                <td>
                                    <label class="direccion">${e.direccion}</label>
                                </td>
                                <td>
                                    <label class="asistencia">${e.asistenciaEstimada}</label>
                                </td>
                                <td>
                                    <label class="maps">${e.linkMaps}</label>
                                </td>
                                <td>
                                    <div class="btn-group" role="group" aria-label="">
                                        <button class="btn btn-primary eventoUpdateButton">Editar</button>
                                        <button class="btn btn-danger eventoDeleteButton">Eliminar</button>
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

<!-- POPUP AGREGAR TALLER -->
<div class="modal fade" id="popUpEventoAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Agregar Nuevo Evento</strong></h4>
            </div>
            <div class="modal-body">
                <form id="eventoAddForm">
                    <label>Nombre:</label>
                    <input id="nombreAdd" name="nombre" class="form-control" type="text" placeholder="Ingrese el Nombre del Evento">
                    <br>
                    <label>Sala:</label>
                    <select id="salaAdd" name="sala.id" class="form-control">
                        <option value="0" label="Seleccione...">Seleccione...</option>
                        <c:forEach items="${salas}" var="s" varStatus="status">
                            <option value="${s.id}" label="${s.nombre}">${s.nombre}</option>
                        </c:forEach>
                    </select>
                    <br>
                    <label>Categor�a:</label>
                    <select id="categoriaAdd" name="categoriaEvento.id" class="form-control">
                        <option value="0" label="Seleccione...">Seleccione...</option>
                        <c:forEach items="${categoriaEvento}" var="c" varStatus="status">
                            <option value="${c.id}" label="${c.nombre}">${c.nombre}</option>
                        </c:forEach>
                    </select>
                    <br>
                    <label>Informaci�n:</label>
                    <input id="informacionAdd" name="informacion" class="form-control" type="text" placeholder="Ingrese Informac��n del Evento">
                    <br>
                    <label>Direcci�n:</label>
                    <input id="direccionAdd" name="direccion" class="form-control" type="text" placeholder="Ingrese la Direcci�n del Evento">
                    <br>

                    <br>
                    <label>Fecha Inicio:</label>
                    <input type="date" id="fechaInicioAdd" name="fechaInicio" class="form-control" type="text" placeholder="Ingrese la Fecha de Inicio  del Evento">
                    <br>

                    <br>
                    <label>Fecha Fin:</label>
                    <input type="date" id="fechaFinAdd" name="fechaFin" class="form-control" type="text" placeholder="Ingrese la Fecha de Fin del Evento">
                    <br>

                    <br>
                    <label>Asistencia Estimada:</label>
                    <input id="asistenciaAdd" name="asistenciaEstimada" class="form-control" type="text" placeholder="Ingrese la Asistencia Estimada del Evento">
                    <br>

                    <br>
                    <label>Horario:</label>
                    <input id="horarioAdd" name="horario" class="form-control" type="text" placeholder="Ingrese Horario del Evento">
                    <br>

                    <br>
                    <label>Link:</label>
                    <input id="linkAdd" name="linkMaps" class="form-control" type="text" placeholder="Ingrese Link del Mapa del Evento">
                    <br>
                </form>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="addEvento" type="button" class="btn btn-primary">Agregar >></button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<!-- POPUP ACTUALIZAR EVENTO -->
<div class="modal fade" id="popUpEventoUpdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Actualizar Evento</strong></h4>
            </div>
            <div class="modal-body">
                <form id="eventoUpdateForm">
                    <label>Nombre:</label>
                    <input id="nombreUpdate" name="nombre" class="form-control" type="text" placeholder="Ingrese el nombre del Evento">
                    <br>
                    <label>Sala:</label>
                    <select id="salaUpdate" name="sala.id" class="form-control">
                        <option value="0" label="Seleccione...">Seleccione...</option>
                        <c:forEach items="${salas}" var="s" varStatus="status">
                            <option value="${s.id}" label="${s.nombre}">${s.nombre}</option>
                        </c:forEach>
                    </select>
                    <br>
                    <label>Categor�a:</label>
                    <select id="categoriaUpdate" name="categoriaEvento.id" class="form-control">
                        <option value="0" label="Seleccione...">Seleccione...</option>
                        <c:forEach items="${categorias}" var="c" varStatus="status">
                            <option value="${c.id}" label="${c.nombre}">${c.nombre}</option>
                        </c:forEach>
                    </select>
                    <br><br>
                    <label>Informaci�n:</label>
                    <input id="informacionUpdate" name="informacion" class="form-control" type="text" placeholder="Ingrese Informac��n del Evento">
                    <br>
                    <label>Direcci�n:</label>
                    <input id="direccionUpdate" name="direccion" class="form-control" type="text" placeholder="Ingrese la Direcci�n del Evento">
                    <br>

                    <br>
                    <label>Fecha Inicio:</label>
                    <input type="date" id="fechaInicioUpdate" name="fechaInicio" class="form-control" type="text" placeholder="Ingrese la Fecha de Inicio  del Evento">
                    <br>

                    <br>
                    <label>Fecha Fin:</label>
                    <input type="date" id="fechaFinUpdate" name="fechaFin" class="form-control" type="text" placeholder="Ingrese la Fecha de Fin del Evento">
                    <br>

                    <br>
                    <label>Asistencia Estimada:</label>
                    <input id="asistenciaUpdate" name="asistenciaEstimada" class="form-control" type="text" placeholder="Ingrese la Asistencia Estimada del Evento">
                    <br>

                    <br>
                    <label>Horario:</label>
                    <input id="horarioUpdate" name="horario" class="form-control" type="text" placeholder="Ingrese Horario del Evento">
                    <br>

                    <br>
                    <label>Link:</label>
                    <input id="linkUpdate" name="linkMaps" class="form-control" type="text" placeholder="Ingrese Link del Mapa del Evento">
                    <input id="idUpdate" name="id" class="form-control ocultar" type="text" placeholder="Ingrese la Descripci�n del Evento">
                </form>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="updateEvento" type="button" class="btn btn-primary">Actualizar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<!-- POPUP ELIMINAR TALLER -->
<div class="modal fade" id="popUpEventoDelete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Eliminar Evento</strong></h4>
            </div>
            <div class="modal-body">
                <form id="eventoDeleteForm">
                    <label>Nombre:</label><label id="nombreDelete"></label>
                    <br>
                    <label>Categoria:</label><label id="categoriaDelete"></label>
                    <br>
                    <label>Descripcion:</label><label id="descripcionDelete"></label>
                    <input id="idDelete" name="id" class="form-control ocultar" type="text" placeholder="Ingrese el nombre del Evento">
                    <br>
                </form>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="deleteEvento" type="button" class="btn btn-primary">Eliminar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<%@ include file="/WEB-INF/pages/templates/popUpRespuesta.jsp"%>
<script src="../js/evento/evento.js" charset="UTF-8"></script>
<%@ include file="/WEB-INF/pages/templates/footer.jsp"%>
