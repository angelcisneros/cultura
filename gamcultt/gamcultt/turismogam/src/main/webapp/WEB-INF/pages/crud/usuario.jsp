<%@ include file="/WEB-INF/pages/templates/head.jsp"%>
<%@ include file="/WEB-INF/pages/templates/navbar.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="contenido" class="container-fluid">
    <div class="row">
        <div class="col-lg-1"></div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-10 ">
            <h2><strong>Usuarios</strong></h2>
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="col-lg-1"></div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-10 form-inline">
            <a id="addUsuarioButton" class="btn btn-primary btn-lg" role="button">Agregar Nuevo Usuario +</a>
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
                            <th>telefono</th>
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

<!-- POPUP AGREGAR ALUMNO -->
<div class="modal fade" id="popUpUsuarioAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Agregar Nueva Usuario</strong></h4>
            </div>
            <div class="modal-body">
                <form id="usuarioAddForm">
                    <label>Nombre(s):</label>
                    <input id="nombreAdd" name="nombre" class="form-control" type="text" placeholder="Ingrese el nombre del Usuario">
                    <br>
                    <label>Apellido Paterno:</label>
                    <input id="paternoAdd" name="paterno" class="form-control" type="text" placeholder="Ingrese el Apellido Paterno del Usuario">
                    <br>
                    <label>Apellido Materno:</label>
                    <input id="maternoAdd" name="materno" class="form-control" type="text" placeholder="Ingrese el Apellino Materno del Usuario">
                    <br>
                    <label>Casa:</label>
                    <select id="casaAdd" name="casa.id" class="form-control">
                        <option value="0" label="Seleccione...">Seleccione...</option>
                        <c:forEach items="${casas}" var="c" varStatus="status">
                            <option value="${c.id}" label="${c.nombre}">${c.nombre}</option>
                        </c:forEach>
                    </select>
                    <label>Télefono:</label>
                    <input id="telefonoAdd" name="telefono" class="form-control" type="text" placeholder="Ingrese el telefono">
                    <label>*Correo:</label>
                    <input id="correoAdd" name="correo" class="form-control" type="text" placeholder="Ingrese el Apellino Materno del Empleado">
                    <br>
                    <label>*Cuenta:</label>
                    <br>
                    <input id="activadaAdd" type="radio" value="true" checked="true" name="estado">Activada.
                    <br> 
                    <input id="desactivadaAdd" type="radio" value="false">Desactivada.
                    <br>
                </form>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="addUsuario" type="button" class="btn btn-primary">Agregar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<!-- POPUP ACTUALIZAR ALUMNO -->
<div class="modal fade" id="popUpUsuarioUpdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Actualizar Usuario</strong></h4>
            </div>
            <div class="modal-body">
                <form id="usuarioUpdateForm">
                    <label>Nombre(s):</label>
                    <input id="nombreUpdate" name="nombre" class="form-control" type="text" placeholder="Ingrese el nombre del Usuario">
                    <br>
                    <label>Apellido Paterno:</label>
                    <input id="paternoUpdate" name="paterno" class="form-control" type="text" placeholder="Ingrese el Apellido Paterno del Usuario">
                    <br>
                    <label>Apellido Materno:</label>
                    <input id="maternoUpdate" name="materno" class="form-control" type="text" placeholder="Ingrese el Apellino Materno del Usuario">
                    <br>
                    <label>Télefono:</label>
                    <input id="telefonoUpdate" name="telefono" class="form-control" type="email" placeholder="Ingrese el Edad">
                    <br>
                    <label>Casa:</label>
                    <select id="casaUpdate" name="casa.id" class="form-control">
                        <option value="0" label="Seleccione...">Seleccione...</option>
                        <c:forEach items="${casas}" var="c" varStatus="status">
                            <option value="${c.id}" label="${c.nombre}">${c.nombre}</option>
                        </c:forEach>
                    </select>
                    <label>*Correo:</label>
                    <input id="correoUpdate" name="correo" class="form-control" type="text" placeholder="Ingrese el Apellino Materno del Empleado">
                    <br>
                    <label>*Cuenta:</label>
                    <br>
                    <input id="activadaAdd" type="radio" value="true" checked="true" name="estado">Activada.
                    <br> 
                    <input id="desactivadaAdd" type="radio" value="false">Desactivada.
                    <br>
                    <input id="idUpdate" name="id" class="ocultar">
                </form>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="updateUsuario" type="button" class="btn btn-primary">Actualizar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<!-- POPUP ELIMINAR ALUMNO -->
<div class="modal fade" id="popUpUsuarioDelete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Eliminar Usuario</strong></h4>
            </div>
            <div class="modal-body">
                <form id="usuarioDeleteForm">
                    <strong><label>Nombre:</label></strong>
                    <label id="nombreDelete"></label> <label id="paternoDelete"></label> <label id="maternoDelete"></label>
                    <br>
                    <strong><label>Edad:</label></strong>
                    <label id="edadDelete"></label>
                    <br>
                    <strong><label>Tutor:</label></strong>
                    <label id="nombreTutorDelete"></label>
                    <br>
                    <input id="idDelete" name="id" class="form-control ocultar" type="text" placeholder="Ingrese el nombre del Usuario">
                </form>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="deleteUsuario" type="button" class="btn btn-primary">Eliminar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<%@ include file="/WEB-INF/pages/templates/popUpRespuesta.jsp"%>
<script src="../js/usuario/usuario.js" charset="UTF-8"></script>
<%@ include file="/WEB-INF/pages/templates/footer.jsp"%>
