<%@ include file="/WEB-INF/pages/templates/head.jsp"%>
<%@ include file="/WEB-INF/pages/templates/navbar.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="contenido" class="container-fluid">
    <div class="row">
        <div class="col-lg-1"></div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-10 ">
            <h2><strong>Profesores</strong></h2>
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="col-lg-1"></div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-10 form-inline">
            <a id="addProfesorButton" class="btn btn-primary btn-lg" role="button">Agregar Nuevo Profesor +</a>
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="col-md-1 col-lg-1"></div>
        <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">
            <div class="row table-responsive">
                <table id="profesorTable" class="table table-striped table-bordered table-hover">
                    <thead id="profesorThead" class="text-center">
                        <tr>
                            <th>Nombre</th>
                            <th>Correo</th>
                            <th>Telefono</th>
                            <th>Celular</th>
                            <th>Opciones</th>
                        </tr>
                    </thead>

                    <tbody id="profesorTbody">
                        <c:forEach items="${profesors}" var="p" varStatus="status">
                            <tr valign="top">
                                <td class="id">
                                    <label class="nombre">${p.nombre}</label>&#32;   
                                    <label class="paterno">${p.paterno}</label>&#32;
                                    <label class="materno">${p.materno}</label>
                                    <label id="${p.id}" class="ocultar">${p.id}</label>
                                </td>
                                <td>
                                    <label class="correo">${p.correo}</label>
                                </td>
                                <td>
                                    <label class="telefono">${p.telefono}</label>
                                </td>
                                <td>
                                    <label class="celular">${p.celular}</label>
                                </td>
                                <td>
                                    <div class="btn-group" role="group" aria-label="">
                                        <button class="btn btn-primary profesorUpdateButton">Editar</button>
                                        <button class="btn btn-danger profesorDeleteButton">Eliminar</button>
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

<!-- POPUP AGREGAR PROFESOR -->
<div class="modal fade" id="popUpProfesorAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Agregar Nuevo Profesor</strong></h4>
            </div>
            <div class="modal-body">
                <form id="profesorAddForm">
                    <label>Nombre(s):</label>
                    <input id="nombreAdd" name="nombre" class="form-control" type="text" placeholder="Ingrese el nombre del Profesor">
                    <br>
                    <label>Apellido Paterno:</label>
                    <input id="paternoAdd" name="paterno" class="form-control" type="text" placeholder="Ingrese el Apellido Paterno del Profesor">
                    <br>
                    <label>Apellido Materno:</label>
                    <input id="maternoAdd" name="materno" class="form-control" type="text" placeholder="Ingrese el Apellino Materno del Profesor">
                    <br>
                    <label>Correo:</label>
                    <input id="correoAdd" name="correo" class="form-control" type="email" placeholder="Ingrese el Correo del Profesor">
                    <br>
                    <label>Teléfono:</label>
                    <input id="telefonoAdd" name="telefono" class="form-control" type="text" placeholder="Ingrese el Teléfono del Profesor">
                    <br>
                    <label>Celular:</label>
                    <input id="celularAdd" name="celular" class="form-control" type="text" placeholder="Ingrese el Celular del Profesor">
                </form>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="addProfesor" type="button" class="btn btn-primary">Agregar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<!-- POPUP ACTUALIZAR ALUMNO -->
<div class="modal fade" id="popUpProfesorUpdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Actualizar Profesor</strong></h4>
            </div>
            <div class="modal-body">
                <form id="profesorUpdateForm">
                    <label>Nombre(s):</label>
                    <input id="nombreUpdate" name="nombre" class="form-control" type="text" placeholder="Ingrese el nombre del Profesor">
                    <br>
                    <label>Apellido Paterno:</label>
                    <input id="paternoUpdate" name="paterno" class="form-control" type="text" placeholder="Ingrese el Apellido Paterno del Profesor">
                    <br>
                    <label>Apellido Materno:</label>
                    <input id="maternoUpdate" name="materno" class="form-control" type="text" placeholder="Ingrese el Apellino Materno del Profesor">
                    <br>
                    <label>Correo:</label>
                    <input id="correoUpdate" name="correo" class="form-control" type="email" placeholder="Ingrese el Correo">
                    <br>
                    <label>Teléfono:</label>
                    <input id="telefonoUpdate" name="telefono" class="form-control" type="text" placeholder="Ingrese el Teléfono">
                    <br>
                    <label>Celular:</label>
                    <input id="celularUpdate" name="celular" class="form-control" type="text" placeholder="Ingrese el Celular">
                    <input id="idUpdate" name="id" class="form-control ocultar" type="text" placeholder="Ingrese el nombre del Profesor">
                </form>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="updateProfesor" type="button" class="btn btn-primary">Actualizar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<!-- POPUP ELIMINAR ALUMNO -->
<div class="modal fade" id="popUpProfesorDelete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Eliminar Profesor</strong></h4>
            </div>
            <div class="modal-body">
                <form id="profesorDeleteForm">
                    <strong><label>Nombre:</label></strong>
                    <label id="nombreDelete"></label>
                    <br>
                    <strong><label>Apellido Paterno:</label></strong>
                    <label id="paternoDelete"></label>
                    <br>
                    <strong><label>Apellido Materno:</label></strong>
                    <label id="maternoDelete"></label>
                    <br>
                    <strong><label>Correo:</label></strong>
                    <label id="correoDelete"></label>
                    <br>
                    <strong><label>Teléfono:</label></strong>
                    <label id="telefonoDelete"></label>
                    <br>
                    <strong><label>Celular:</label></strong>
                    <label id="celularDelete"></label>
                    <input id="idDelete" name="id" class="form-control ocultar" type="text" placeholder="Ingrese el nombre del Profesor">
                </form>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="deleteProfesor" type="button" class="btn btn-primary">Eliminar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<%@ include file="/WEB-INF/pages/templates/popUpRespuesta.jsp"%>
<script src="../js/profesor/profesor.js" charset="UTF-8"></script>
<%@ include file="/WEB-INF/pages/templates/footer.jsp"%>






