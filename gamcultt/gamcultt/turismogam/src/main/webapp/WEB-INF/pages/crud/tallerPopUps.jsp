<!-- POPUP AGREGAR TALLER -->
<div class="modal fade" id="popUpTallerAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Agregar Nuevo Taller</strong></h4>
            </div>
            <div class="modal-body">
                <form id="tallerAddForm">
                    <label>Nombre:</label>
                    <input id="nombreAdd" name="nombre" class="form-control" type="text" placeholder="Ingrese el nombre del Taller">
                    <br>
                    <label>Categoría:</label>
                    <select id="categoriaAdd" name="categoriaTaller.id" class="form-control">
                        <option value="0" label="Seleccione...">Seleccione...</option>
                        <c:forEach items="${categorias}" var="c" varStatus="status">
                            <option value="${c.id}" label="${c.nombre}">${c.nombre}</option>
                        </c:forEach>
                    </select>
                    <br>
                    <label>Costo:</label>
                    <input id="costoAdd" name="costo" class="form-control" type="text" placeholder="Ingrese la Descripción del Taller">
                    <br>
                    <label>Horario</label>
                    <input id="horarioAdd" name="horario" class="form-control" type="text" placeholder="Ingrese la Descripción del Taller">
                    <br>
                    <label>Descripción:</label>
                    <input id="descripcionAdd" name="descripcion" class="form-control" type="text" placeholder="Ingrese la Descripción del Taller">
                    
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
                    <input id="nombreUpdate" name="nombre" class="form-control" type="text" placeholder="Ingrese el Nombre del Taller">
                    <br>
                    <label>Categoría:</label>
                    <select id="categoriaUpdate" name="categoriaTaller.id" class="form-control">
                        <option value="0" label="Seleccione...">Seleccione...</option>
                        <c:forEach items="${categorias}" var="c" varStatus="status">
                            <option value="${c.id}" label="${c.nombre}">${c.nombre}</option>
                        </c:forEach>
                    </select>
                    <br>
                    <label>Costo:</label>
                    <input id="costoUpdate" name="costo" class="form-control" type="text" placeholder="Ingrese el Costo del Taller">
                    <br>
                    <label>Horario</label>
                    <input id="horarioUpdate" name="horario" class="form-control" type="text" placeholder="Ingrese el Horario del Taller">
                    <br>
                    <br>
                    <label>Descripción:</label>
                    <input id="descripcionUpdate" name="descripcion" class="form-control" type="text" placeholder="Ingrese la Descripción del Taller">
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
                    <label>Categoría:</label><label id="categoriaDelete"></label>
                    <br>
                    <label>Descripción:</label><label id="descripcionDelete"></label>
                    <input id="idDelete" name="id" class="form-control ocultar" type="text" placeholder="Ingrese la Descripción del Taller">
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