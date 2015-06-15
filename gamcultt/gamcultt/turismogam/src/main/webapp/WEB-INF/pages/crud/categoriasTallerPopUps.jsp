<!-- POPUP AGREGAR CASA TALLER -->
<div class="modal fade" id="popUpCategoriaTallerAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Agregar Nueva Categoría de Taller</strong></h4>
            </div>
            <div class="modal-body">
                <form id="categoriaTallerAddForm">
                    <label>Nombre:</label>
                    <input id="nombreTallerAdd" name="nombre" class="form-control" type="text" placeholder="Ingrese el Nombre del la Categoría del Taller">
                    <br>
                    <label>Descripción:</label>
                    <input id="descripcionTallerAdd" name="descripcion" class="form-control" type="text" placeholder="Ingrese la Descripción del Taller">
                    <br>
                </form>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="addCategoriaTaller" type="button" class="btn btn-primary">Agregar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<!-- POPUP ACTUALIZAR CASA -->
<div class="modal fade" id="popUpCategoriaTallerUpdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Actualizar Categoría del Taller</strong></h4>
            </div>
            <div class="modal-body">
                <form id="categoriaTallerUpdateForm">
                    <label>Nombre:</label>
                    <input id="nombreTallerUpdate" name="nombre" class="form-control" type="text" placeholder="Ingrese el Nombre de la Categoría del Taller">
                    <br>
                    <label>Descripción:</label>
                    <input id="descripcionTallerUpdate" name="descripcion" class="form-control" type="text" placeholder="Ingrese la Descripción del Taller">
                    <input id="idTallerUpdate" name="id" class="form-control ocultar" type="text" placeholder="Ingrese el Nombre Taller ">
                </form>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="updateCategoriaTaller" type="button" class="btn btn-primary">Actualizar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<!-- POPUP ELIMINAR CASA TALLER -->
<div class="modal fade" id="popUpCategoriaTallerDelete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Eliminar Categoría de Taller</strong></h4>
            </div>
            <div class="modal-body">
                <form id="categoriaTallerDeleteForm">
                    <strong><label>Nombre:</label></strong>
                    <label id="nombreTallerDelete"></label>
                    <strong><label>Descripción:</label></strong>
                    <label id="descripcionTallerDelete"></label>
                    <input id="idTallerDelete" name="id" class="form-control ocultar" type="text" placeholder="Ingrese la Descripción del Taller">
                </form>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="deleteCategoriaTaller" type="button" class="btn btn-primary">Eliminar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
