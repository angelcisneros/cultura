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
                        <option label="Por Clase" value="1" >Por Clase</option>
                        <option label="Por Nombre" value="2" >Por Nombre</option>
                        <option label="Por Edad" value="5" >Por Edad</option>
                        <option label="Por Correo" value="5" >Por Correo</option>
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
                        <c:forEach items="${alumnos}" var="a" varStatus="status">
                            <tr valign="top">
                                <td class="id">
                                    <label class="nombre">${a.nombre}</label>&#32;
                                    <label class="paterno">${a.paterno}</label>&#32;
                                    <label class="materno">${a.materno}</label>
                                    <label class="ocultar">${a.id}</label>
                                </td>
                                <td>
                                    <label class="edad">${a.edad}</label>
                                </td>
                                <td>
                                    <label class="nombreTutor">${a.nombreTutor}</label>
                                </td>
                                <td>
                                    <label class="correo">${a.correo}</label>
                                </td>
                                <td>
                                    <label class="telefono">${a.telefono}</label>
                                </td>
                                <td>
                                    <label class="celular">${a.celular}</label>
                                </td>
                                <td>
                                    <div class="btn-group" role="group" aria-label="">
                                        <button class="btn btn-primary alumnoUpdateButton">Editar</button>
                                        <button class="btn btn-danger alumnoDeleteButton">Eliminar</button>
                                        <button class="btn btn-info alumnoReporteIndividualButton">Reporte</button>
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
<div class="modal fade" id="popUpAlumnoAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Agregar Nuevo Alumno</strong></h4>
            </div>
            <div class="modal-body">
                <form id="alumnoAddForm">
                    <label>Nombre(s):</label>
                    <input id="nombreAdd" name="nombre" class="form-control" type="text" placeholder="Ingrese el nombre del Alumno">
                    <br>
                    <label>Apellido Paterno:</label>
                    <input id="paternoAdd" name="paterno" class="form-control" type="text" placeholder="Ingrese el Apellido Paterno del Alumno">
                    <br>
                    <label>Apellido Materno:</label>
                    <input id="maternoAdd" name="materno" class="form-control" type="text" placeholder="Ingrese el Apellino Materno del Alumno">
                    <br>
                    <label>Edad:</label>
                    <input id="edadAdd" name="edad" class="form-control" type="email" placeholder="Ingrese el Edad">
                    <br>
                    <label>Nombre Tutor:</label>
                    <input id="nombreTutorAdd" name="nombreTutor" class="form-control" type="text" placeholder="Ingrese el Nombre del Tutor">
                    <br>
                    <label>Correo:</label>
                    <input id="correoAdd" name="correo" class="form-control" type="text" placeholder="Ingrese el Correo">
                    <br>
                    <label>Teléfono:</label>
                    <input id="telefonoAdd" name="telefono" class="form-control" type="text" placeholder="Ingrese el Teléfono">
                    <br>
                    <label>Celular:</label>
                    <input id="celularAdd" name="celular" class="form-control" type="text" placeholder="Ingrese el Celular">                    
                </form>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="addAlumno" type="button" class="btn btn-primary">Agregar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<!-- POPUP ACTUALIZAR ALUMNO -->
<div class="modal fade" id="popUpAlumnoUpdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Actualizar Alumno</strong></h4>
            </div>
            <div class="modal-body">
                <form id="alumnoUpdateForm">
                    <label>Nombre(s):</label>
                    <input id="nombreUpdate" name="nombre" class="form-control" type="text" placeholder="Ingrese el nombre del Alumno">
                    <br>
                    <label>Apellido Paterno:</label>
                    <input id="paternoUpdate" name="paterno" class="form-control" type="text" placeholder="Ingrese el Apellido Paterno del Alumno">
                    <br>
                    <label>Apellido Materno:</label>
                    <input id="maternoUpdate" name="materno" class="form-control" type="text" placeholder="Ingrese el Apellino Materno del Alumno">
                    <br>
                    <label>Edad:</label>
                    <input id="edadUpdate" name="edad" class="form-control" type="email" placeholder="Ingrese el Edad">
                    <br>
                    <label>Nombre Tutor:</label>
                    <input id="nombreTutorUpdate" name="nombreTutor" class="form-control" type="text" placeholder="Ingrese el Nombre del Tutor">
                    <br>
                    <label>Correo:</label>
                    <input id="correoUpdate" name="correo" class="form-control" type="text" placeholder="Ingrese el Nombre del Yutor">
                    <br>
                    <label>Teléfono:</label>
                    <input id="telefonoUpdate" name="telefono" class="form-control" type="text" placeholder="Ingrese el Teléfono">
                    <br>
                    <label>Celular:</label>
                    <input id="celularUpdate" name="celular" class="form-control" type="text" placeholder="Ingrese el Celular">
                    <input id="idUpdate" name="id" class="ocultar">
                </form>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="updateAlumno" type="button" class="btn btn-primary">Actualizar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<!-- POPUP ELIMINAR ALUMNO -->
<div class="modal fade" id="popUpAlumnoDelete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Eliminar Alumno</strong></h4>
            </div>
            <div class="modal-body">
                <form id="alumnoDeleteForm">
                    <strong><label>Nombre:</label></strong>
                    <label id="nombreDelete"></label> <label id="paternoDelete"></label> <label id="maternoDelete"></label>
                    <br>
                    <strong><label>Edad:</label></strong>
                    <label id="edadDelete"></label>
                    <br>
                    <strong><label>Tutor:</label></strong>
                    <label id="nombreTutorDelete"></label>
                    <br>
                    <input id="idDelete" name="id" class="form-control ocultar" type="text" placeholder="Ingrese el nombre del Alumno">
                </form>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="deleteAlumno" type="button" class="btn btn-primary">Eliminar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<%@ include file="/WEB-INF/pages/templates/popUpRespuesta.jsp"%>
<script src="../js/alumno/alumno.js" charset="UTF-8"></script>
<%@ include file="/WEB-INF/pages/templates/footer.jsp"%>
