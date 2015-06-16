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
                    <label>Categoría:</label>
                    <select id="categoriaAdd" name="categoriaEvento.id" class="form-control">
                        <option value="0" label="Seleccione...">Seleccione...</option>
                        <c:forEach items="${categoriaEvento}" var="c" varStatus="status">
                            <option value="${c.id}" label="${c.nombre}">${c.nombre}</option>
                        </c:forEach>
                    </select>
                    <br>
                    <label>Información:</label>
                    <input id="informacionAdd" name="informacion" class="form-control" type="text" placeholder="Ingrese Informacíón del Evento">
                    <br>
                    <label>Dirección:</label>
                    <input id="direccionAdd" name="direccion" class="form-control" type="text" placeholder="Ingrese la Dirección del Evento">
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
                    <label>Categoría:</label>
                    <select id="categoriaUpdate" name="categoriaEvento.id" class="form-control">
                        <option value="0" label="Seleccione...">Seleccione...</option>
                        <c:forEach items="${categorias}" var="c" varStatus="status">
                            <option value="${c.id}" label="${c.nombre}">${c.nombre}</option>
                        </c:forEach>
                    </select>
                    <br><br>
                    <label>Información:</label>
                    <input id="informacionUpdate" name="informacion" class="form-control" type="text" placeholder="Ingrese Informacíón del Evento">
                    <br>
                    <label>Dirección:</label>
                    <input id="direccionUpdate" name="direccion" class="form-control" type="text" placeholder="Ingrese la Dirección del Evento">
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
                    <input id="idUpdate" name="id" class="form-control ocultar" type="text" placeholder="Ingrese la Descripción del Evento">
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
