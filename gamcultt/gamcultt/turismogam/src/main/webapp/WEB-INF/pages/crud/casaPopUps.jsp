<!-- POPUP AGREGAR CASA -->
<div class="modal fade" id="popUpCasaAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Agregar Nueva Casa</strong></h4>
            </div>
            <div class="modal-body">
                <form id="casaAddForm">
                    <label>Nombre de la Casa:</label>
                    <input id="nombreAdd" name="nombre" class="form-control" type="text" placeholder="Ingrese el Nombre del Casa">
                    <br>
                    <label>Dirección:</label>
                    <input id="direccionAdd" name="direccion" class="form-control" type="text" placeholder="Ingrese la Dirección de la Casa">
                    <br>
                    <label>Teléfono:</label>
                    <input id="telefonoAdd" name="telefono" class="form-control" type="text" placeholder="Ingrese el Teléfono">
                    <br>
                    <label>Horario:</label>
                    <input id="horarioAdd" name="horario" class="form-control" type="email" placeholder="Ingrese el Horario de la Casa">
                    <br>
                    <label>Información:</label>
                    <input id="informacionAdd" name="informacion" class="form-control" type="text" placeholder="Ingrese Información Extra de la Casa">
                    <br>
                    <label>Link:</label>
                    <input id="liknMapsAdd" name="liknMaps" class="form-control" type="text" placeholder="Ingrese el Link del Mapa">
                    <label class="checkbox mischeckbox" >
                        <input id="centroSocialAdd" name="esCentro" type="checkbox" class="mischeckbox cambioCheck" /><strong> Es Centro Social</strong>
                    </label>
                </form>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="addCasa" type="button" class="btn btn-primary">Agregar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<!-- POPUP ACTUALIZAR CASA -->
<div class="modal fade" id="popUpCasaUpdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Actualizar Casa</strong></h4>
            </div>
            <div class="modal-body">
                <form id="casaUpdateForm">
                    <label>Nombre de la Casa:</label>
                    <input id="nombreUpdate" name="nombre" class="form-control" type="text" placeholder="Ingrese el Nombre del Casa">
                    <br>
                    <label>Dirección:</label>
                    <input id="direccionUpdate" name="direccion" class="form-control" type="text" placeholder="Ingrese la Dirección de la Casa">
                    <br>
                    <label>Teléfono:</label>
                    <input id="telefonoUpdate" name="telefono" class="form-control" type="text" placeholder="Ingrese el Teléfono">
                    <br>
                    <label>Horario:</label>
                    <input id="horarioUpdate" name="horario" class="form-control" type="email" placeholder="Ingrese el Horario de la Casa">
                    <br>
                    <label>Información:</label>
                    <input id="informacionUpdate" name="informacion" class="form-control" type="text" placeholder="Ingrese Información Extra de la Casa">
                    <br>
                    <label>Link:</label>
                    <input id="liknMapsUpdate" name="liknMaps" class="form-control" type="text" placeholder="Ingrese el Link del Mapa">
                    <label class="checkbox mischeckbox" >
                        <input id="centroSocialUpdate" name="esCentro" type="checkbox" class="mischeckbox cambioCheck" /><strong>Es Centro Social</strong>
                    </label>
                    <input id="idUpdate" name="id" class="form-control ocultar">
                </form>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="updateCasa" type="button" class="btn btn-primary">Actualizar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<!-- POPUP ELIMINAR CASA -->
<div class="modal fade" id="popUpCasaDelete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Eliminar Casa</strong></h4>
            </div>
            <div class="modal-body">
                <form id="casaDeleteForm">
                    <strong><label>Nombre de la Casa:</label></strong>
                    <label id="nombreDelete"></label>
                    <br>
                    <strong><label>Dirección:</label></strong>
                    <label id="direccionDelete"></label>
                    <br>
                    <strong><label>Teléfono:</label></strong>
                    <label id="telefonoDelete"></label>
                    <br>
                    <strong><label>Horario:</label></strong>
                    <label id="horarioDelete"></label>
                    <br>
                    <strong><label>Información:</label></strong>
                    <label id="informacionDelete"></label>
                    <input id="idDelete" name="id" class="form-control ocultar" type="text" placeholder="Ingrese el nombre del Casa">
                </form>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="deleteCasa" type="button" class="btn btn-primary">Eliminar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>