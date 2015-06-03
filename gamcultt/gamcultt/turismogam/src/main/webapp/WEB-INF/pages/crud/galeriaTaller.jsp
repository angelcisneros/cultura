
<!-- POPUP AGREGAR GALERIA ALUMNO -->
<div class="modal fade" id="popUpGaleria" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title"><strong>Eliminar Taller</strong></h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 galerias">
                        <div style="overflow-y: hidden;"></div>
                        <input type="file" class="filestyle form-control" data-buttonText=" Seleccione" data-buttonName="btn-primary" data-iconName="glyphicon-folder-open" />
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="deleteTaller" type="button" class="btn btn-primary">Eliminar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<script src="../js/inputFile.js" charset="UTF-8"></script>
<script src="../js/cargarImagenes.js" charset="UTF-8"></script>

