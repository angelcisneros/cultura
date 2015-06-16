<!-- POPUP AGREGAR ALUMNO -->
<div class="modal fade" id="popUpClaseAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Agregar Nueva Clase</strong></h4>
            </div>
            <div class="modal-body">
                <form id="claseAddForm">
                    <label>Profesor:</label>
                    <select id="profesorAdd" name="profesor.id" class="form-control">
                        <option value="0" label="Seleccione...">Seleccione...</option>
                        <c:forEach items="${profesores}" var="p" varStatus="status">
                            <option value="${p.id}" label="${p.nombre} ${p.paterno} ${p.materno}">${p.nombre} ${p.paterno} ${p.materno}</option>
                        </c:forEach>
                    </select>
                    <br>
                    <label>Sala:</label>
                    <select id="salaAdd" name="sala.id" class="form-control">
                        <option value="0" label="Seleccione...">Seleccione...</option>
                        <c:forEach items="${salas}" var="s" varStatus="status">
                            <option value="${s.id}" label="${s.nombre}">${s.nombre}</option>
                        </c:forEach>
                    </select>
                    <br>
                    <label>Taller:</label>
                    <select id="tallerAdd" name="taller.id" class="form-control">
                        <option value="0" label="Seleccione...">Seleccione...</option>
                        <c:forEach items="${talleres}" var="t" varStatus="status">
                            <option value="${t.id}" label="${t.nombre}">${t.nombre}</option>
                        </c:forEach>
                    </select>
                    <label>Status:</label>
                    <input id="statusAdd" name="status" class="form-control" type="text" placeholder="Ingrese el Status">
                </form>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="addClase" type="button" class="btn btn-primary">Agregar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<!-- POPUP ACTUALIZAR CLASE -->
<div class="modal fade" id="popUpClaseUpdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Actualizar Clase</strong></h4>
            </div>
            <div class="modal-body">
                <form id="claseUpdateForm">
                    <label>Profesor:</label>
                    <select id="profesorUpdate" name="profesor.id" class="form-control">
                        <option value="0" label="Seleccione...">Seleccione...</option>
                        <c:forEach items="${profesores}" var="p" varStatus="status">
                            <option value="${p.id}" label="${p.nombre} ${p.paterno} ${p.materno}">${p.nombre} ${p.paterno} ${p.materno}</option>
                        </c:forEach>
                    </select>
                    <br>
                    <label>Sala:</label>
                    <select id="salaUpdate" name="sala.id" class="form-control">
                        <option value="0" label="Seleccione...">Seleccione...</option>
                        <c:forEach items="${salas}" var="s" varStatus="status">
                            <option value="${s.id}" label="${s.nombre}">${s.nombre}</option>
                        </c:forEach>
                    </select>
                    <br>
                    <label>Taller:</label>
                    <select id="talleUpdate" name="taller.id" class="form-control">
                        <option value="0" label="Seleccione...">Seleccione...</option>
                        <c:forEach items="${talleres}" var="t" varStatus="status">
                            <option value="${t.id}" label="${t.nombre}">${t.nombre}</option>
                        </c:forEach>
                    </select>
                    <br>
                    <label>Status:</label>
                    <input id="statusUpdate" name="status" class="form-control" type="text" placeholder="Ingrese el Status de la Clase">
                    <br>
                    <input id="idUpdate" name="id" class="form-control ocultar" type="text" placeholder="Ingrese el nombre del Grado">
                </form>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="updateClase" type="button" class="btn btn-primary">Actualizar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<!-- POPUP ELIMINAR ALUMNO -->
<div class="modal fade" id="popUpClaseDelete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Eliminar Clase</strong></h4>
            </div>
            <div class="modal-body">
                <form id="claseDeleteForm">
                    <strong><label>Nombre:</label></strong>
                    <label id="nombreDelete"></label>
                    <br>
                    <strong><label>Empresa</label></strong>
                    <label id="empresaDelete"></label>
                    <br>
                    <strong><label>Correo</label></strong>
                    <label id="correoDelete"></label>
                    <br>
                    <strong><label>Télefonos:</label></strong>
                    <label id="telefonoDelete"></label>
                    <br>
                    <strong><label>Dirección:</label></strong>
                    <label id="direccionDelete"></label>
                    <input id="idDelete" name="id" class="form-control ocultar" type="text" placeholder="Ingrese el nombre del Clase">
                </form>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="deleteClase" type="button" class="btn btn-primary">Eliminar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
