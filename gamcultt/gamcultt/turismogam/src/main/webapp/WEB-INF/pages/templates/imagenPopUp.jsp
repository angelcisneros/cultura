<!-- POPUP IMAGEN -->
<div class="modal fade" id="imagenPopUp" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h2 class="modal-title"><strong id="tituloImagenPopUp"></strong></h2>
            </div>
            <div class="modal-body">
                <h3 id="contenidoImagenPopUp"></h3>
                <div id="imagen"><%@ include file="/WEB-INF/pages/templates/imagen.jsp"%></div>
                <hr>
                <input id="seleccionadorImagen" type="file" class="filestyle form-control" data-buttonText=" Seleccione" data-buttonName="btn-primary" data-iconName="glyphicon-folder-open" />
            </div>
            <div class="modal-footer amarillo">
                <button id="subirImagen" type="button" class="btn btn-primary">Agregar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>