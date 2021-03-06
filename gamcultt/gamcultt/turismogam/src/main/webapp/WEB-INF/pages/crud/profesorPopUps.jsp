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
                    <label>Tel�fono:</label>
                    <input id="telefonoAdd" name="telefono" class="form-control" type="text" placeholder="Ingrese el Tel�fono ejemplo 55-XX-XX-XX">
                    <br>
                    <label>Celular:</label>
                    <input id="celularAdd" name="celular" class="form-control" type="text" placeholder="Ingrese el Celular ejemplo 044-55-XX-XX-XX-XX">
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

<!-- POPUP ACTUALIZAR Profesor -->
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
                    <label>Tel�fono:</label>
                    <input id="telefonoUpdate" name="telefono" class="form-control" type="text" placeholder="Ingrese el Tel�fono  ejemplo 55-XX-XX-XX">
                    <br>
                    <label>Celular:</label>
                    <input id="celularUpdate" name="celular" class="form-control" type="text" placeholder="Ingrese el Celular ejemplo 044-55-XX-XX-XX-XX">
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
                    <strong><label>Tel�fono:</label></strong>
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
