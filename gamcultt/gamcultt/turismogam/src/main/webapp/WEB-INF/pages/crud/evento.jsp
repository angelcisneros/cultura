<%@ include file="/WEB-INF/pages/templates/head.jsp"%>
<%@ include file="/WEB-INF/pages/templates/navbar.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="contenido" class="container-fluid">
    <div class="row">
        <div class="col-lg-1"></div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-10 ">
            <h2><strong>Tallers</strong></h2>
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="col-lg-1"></div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-10 form-inline">
            <a id="addTallerButton" class="btn btn-primary btn-lg" role="button">Agregar Nuevo Taller +</a>
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
                            <th>Categoria</th>
                            <th>Descripcion</th>
                            <th>Opciones</th>
                        </tr>
                    </thead>

                    <tbody id="tallerTbody">
                        <c:forEach items="${tallers}" var="t" varStatus="status">
                            <tr valign="top">
                                <td class="id">
                                    <label class="nombre">${t.nombre}</label>
                                    <label class="ocultar">${t.id}</label>
                                </td>
                                <td>
                                    <label class="categoria">${t.categoriaTaller.nombre}</label>
                                </td>
                                <td>
                                    <label class="descripcion">${t.descripcion}</label>
                                </td>
                                <td>
                                    <div class="btn-group" role="group" aria-label="">
                                        <button class="btn btn-primary tallerUpdateButton">Editar</button>
                                        <button class="btn btn-danger tallerDeleteButton">Eliminar</button>
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
<div class="modal fade" id="popUpTallerAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Agregar Nueva Taller</strong></h4>
            </div>
            <div class="modal-body">
                <form id="tallerAddForm">
                    <label>Nombre:</label>
                    <input id="nombreAdd" name="nombre" class="form-control" type="text" placeholder="Ingrese el nombre del Taller">
                    <br>
                    <label>Categoria:</label>
                    <select id="categoriaAdd" name="categoriaTaller.id" class="form-control">
                        <option value="0" label="Seleccione...">Seleccione...</option>
                        <c:forEach items="${categorias}" var="c" varStatus="status">
                            <option value="${c.id}" label="${c.nombre}">${c.nombre}</option>
                        </c:forEach>
                    </select>
                    <br>
                    <label>Descripcion:</label>
                    <input id="descripcionAdd" name="descripcion" class="form-control" type="text" placeholder="Ingrese el Apellino Materno del Taller">
                    <br>
                </form>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="addTaller" type="button" class="btn btn-primary">Siguiente >></button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<!-- POPUP ACTUALIZAR TALLER -->
<div class="modal fade" id="popUpTallerUpdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Actualizar Taller</strong></h4>
            </div>
            <div class="modal-body">
                <form id="tallerUpdateForm">
                    <label>Nombre:</label>
                    <input id="nombreUpdate" name="nombre" class="form-control" type="text" placeholder="Ingrese el nombre del Taller">
                    <br>
                    <label>Categoria:</label>
                    <select id="categoriaUpdate" name="categoriaTaller.id" class="form-control">
                        <option value="0" label="Seleccione...">Seleccione...</option>
                        <c:forEach items="${categorias}" var="c" varStatus="status">
                            <option value="${c.id}" label="${c.nombre}">${c.nombre}</option>
                        </c:forEach>
                    </select>
                    <br>
                    <label>Descripcion:</label>
                    <input id="descripcionUpdate" name="descripcion" class="form-control" type="text" placeholder="Ingrese el Apellino Materno del Taller">
                    <input id="idUpdate" name="id" class="form-control ocultar" type="text" placeholder="Ingrese el nombre del Taller">
                </form>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="updateTaller" type="button" class="btn btn-primary">Actualizar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<!-- POPUP ELIMINAR TALLER -->
<div class="modal fade" id="popUpTallerDelete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Eliminar Taller</strong></h4>
            </div>
            <div class="modal-body">
                <form id="tallerDeleteForm">
                    <label>Nombre:</label><label id="nombreDelete"></label>
                    <br>
                    <label>Categoria:</label><label id="categoriaDelete"></label>
                    <br>
                    <label>Descripcion:</label><label id="descripcionDelete"></label>
                    <input id="idDelete" name="id" class="form-control ocultar" type="text" placeholder="Ingrese el nombre del Taller">
                    <br>
                </form>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="deleteTaller" type="button" class="btn btn-primary">Eliminar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<%@ include file="/WEB-INF/pages/templates/popUpRespuesta.jsp"%>
<script src="../js/taller/taller.js" charset="UTF-8"></script>
<%@ include file="/WEB-INF/pages/templates/footer.jsp"%>
