
<!-- POPUP AGREGAR VISITANTE -->
<div class="modal fade" id="popUpVisitanteAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Agregar Nuevo Visitante</strong></h4>
            </div>
            <div class="modal-body">
                <form id="visitanteAddForm">
                    <label>Nombre(s):</label>
                    <input id="nombreAdd" name="nombre" class="form-control" type="text" placeholder="Ingrese el nombre del Visitante">
                    <br>
                    <label>Apellido Paterno:</label>
                    <input id="apellidoPaternoAdd" name="apellidoPaterno" class="form-control" type="text" placeholder="Ingrese el Apellido Paterno del Visitante">
                    <br>
                    <label>Apellido Materno:</label>
                    <input id="apellidoMaternoAdd" name="apellidoMaterno" class="form-control" type="text" placeholder="Ingrese el Apellino Materno del Visitante">
                    <br>
                    <label>Edad:</label>
                    <input id="edadAdd" name="edad" class="form-control" type="email" placeholder="Ingrese el Edad">
                    <br>
                    <label>Genero de Visitante:</label>
                    <input id="sexoAdd" name="sexo" class="form-control" type="text" placeholder="Ingrese el Genero del Visitante">
                    <br>
                    <label>Correo:</label>
                    <input id="correoAdd" name="correo" class="form-control" type="text" placeholder="Ingrese el Correo ">
                    <br>
                    <label>Teléfono:</label>
                    <input id="telefonoAdd" name="telefono" class="form-control" type="text" placeholder="Ingrese el Teléfono ejemplo 55-XX-XX-XX">
                    <br>
                    <label>Desea Recibir Información de Eventos:</label>
                    <input id="informacionAdd" name="informacion" class="form-control" type="checkbox"> 
                </form>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="addVisitante" type="button" class="btn btn-primary">Agregar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<!-- POPUP ACTUALIZAR VISITANTE -->
<div class="modal fade" id="popUpVisitanteUpdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Actualizar Visitante</strong></h4>
            </div>
            <div class="modal-body">
                <form id="visitanteUpdateForm">
                    <label>Nombre(s):</label>
                    <input id="nombreUpdate" name="nombre" class="form-control" type="text" placeholder="Ingrese el nombre del Visitante">
                    <br>
                    <label>Apellido Paterno:</label>
                    <input id="apellidoPaternoUpdate" name="apellidoPaterno" class="form-control" type="text" placeholder="Ingrese el Apellido Paterno del Visitante">
                    <br>
                    <label>Apellido Materno:</label>
                    <input id="apellidoMaternoUpdate" name="apellidoMaterno" class="form-control" type="text" placeholder="Ingrese el Apellino Materno del Visitante">
                    <br>
                    <label>Edad:</label>
                    <input id="edadUpdate" name="edad" class="form-control" type="email" placeholder="Ingrese el Edad">
                    <br>
                    <label>Genero de Visitante:</label>
                    <input id="sexoUpdate" name="sexo" class="form-control" type="text" placeholder="Ingrese el Genero del Visitante">
                    <br>
                    <label>Correo:</label>
                    <input id="correoUpdate" name="correo" class="form-control" type="text" placeholder="Ingrese el Correo">
                    <br>
                    <label>Teléfono:</label>
                    <input id="telefonoUpdate" name="telefono" class="form-control" type="text" placeholder="Ingrese el Teléfono ejemplo 55-XX-XX-XX">
                    <br>
                    <label>Desea Recibir Información de Eventos:</label>
                    <input id="informacionUpdate" name="informacion" class="form-control" type="text" placeholder="Ingrese 1 si 0 no">
                    <input id="idUpdate" name="id" class="ocultar">
                </form>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="updateVisitante" type="button" class="btn btn-primary">Actualizar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<!-- POPUP ELIMINAR VISITANTE -->
<div class="modal fade" id="popUpVisitanteDelete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Eliminar Visitante</strong></h4>
            </div>
            <div class="modal-body">
                <form id="visitanteDeleteForm">
                    <strong><label>Nombre:</label></strong>
                    <label id="nombreDelete"></label> <label id="apellidoPaternoDelete"></label> <label id="apellidoMaternoDelete"></label>
                    <br>
                    <strong><label>Edad:</label></strong>
                    <label id="edadDelete"></label>
                    <br>
                    <strong><label>Genero:</label></strong>
                    <label id="sexoDelete"></label>
                    <br>
                    <input id="idDelete" name="id" class="form-control ocultar" type="text" placeholder="Ingrese el nombre del Visitante">
                </form>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="deleteVisitante" type="button" class="btn btn-primary">Eliminar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
