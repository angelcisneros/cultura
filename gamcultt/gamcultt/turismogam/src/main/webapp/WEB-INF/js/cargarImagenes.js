/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$('.modal-content').on('change', '.modal-body .row .galerias input:file', function() {
    var fileInput = this;
    var fileDisplayArea = $(this).siblings('div');
    var row = $($(this).parent()).parent();
    var file = fileInput.files[0];
    var imageType = /image.*/;
    if (file.type.match(imageType)) {
        cierraPopUpChiquito($(this));
        var reader = new FileReader();
        reader.onload = function(e) {
            $(fileDisplayArea).html('');
            var img = new Image();
            img.src = reader.result;
            $(fileInput).removeAttr('style');
            $(fileDisplayArea).height($(fileDisplayArea).width());
            $(fileDisplayArea).append(img);
            $(fileDisplayArea).children().attr('class', 'img-responsive img-rounded');
            addGaleria(row);
        };
        reader.readAsDataURL(file);
        $(this).siblings('div.input-group').remove();
    } else {
        muestraPopUpExtencionNoValida($(this), 'El archivo no es una imagen');
    }

});
function addGaleria(row) {
    var classesGalerias = $('.galerias').size();
    console.log(classesGalerias);
    if (classesGalerias <= 5) {
        if (classesGalerias % 3 === 0) {
            var renglonNuevo =
                    '<br/><div class="row">' +
                    '<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 galerias" >' +
                    '<div></div>' +
                    '<input type="file" class="filestyle form-control" data-buttonText=" Seleccione" data-buttonName="btn-primary" data-iconName="glyphicon-folder-open" />' +
                    '</div>' +
                    '</div>';
            $($(row).parent()).append(renglonNuevo);
        } else {
            $(row).append(
                    '<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 galerias">' +
                    '<div></div>' +
                    '<input type="file" class="filestyle form-control" data-buttonText=" Seleccione" data-buttonName="btn-primary" data-iconName="glyphicon-folder-open" />' +
                    '</div>'
                    );
        }
    }else{
        alert('No puede subir mas de 6 imagenes');
    }

}
$('.modal-body').on('change', '#seleccionadorImagen', function() {
    cambiaImagen(this);
});
function cambiaImagen(selector){
    var fileInput = selector;
    var fileDisplayArea = $(selector).siblings('div');
    var file = fileInput.files[0];
    var imageType = /image.*/;
    if (file.type.match(imageType)) {
        $(this).removeAttr('style');
        cierraPopUpChiquito($(selector));
        var reader = new FileReader();
        reader.onload = function(e) {
            $(fileDisplayArea).html('');
            var img = new Image();
            img.src = reader.result;
            $(fileDisplayArea).append(img);
            $(fileDisplayArea).children().attr('class', 'img-responsive img-rounded');
        };
        reader.readAsDataURL(file);
        $(this).siblings('div.input-group').remove();
    } else {
        $(this).css("border", "1px solid red");
        muestraPopUpExtencionNoValida($(selector), 'El archivo no es una imagen');
    }

}