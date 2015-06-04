/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$('.modal-content').on('change', '.modal-body .row .galerias .form-control', function() {
    var fileInput = this;
    var fileDisplayArea = $(this).siblings('div');
    var row = $($(this).parent()).parent();
    var file = fileInput.files[0];
    if (true) {
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
        fileDisplayArea.innerHTML = "File not supported!";
    }

});
function addGaleria(row) {
    var classesGalerias = $('.galerias').size();
    console.log(classesGalerias);
    if (classesGalerias % 3 === 0) {
        var renglonNuevo = 
            '<br/><div class="row">' +
                '<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 galerias" >' +
                    '<div></div>' +
                    '<input type="file" class="filestyle form-control" data-buttonText=" Seleccione" data-buttonName="btn-primary" data-iconName="glyphicon-folder-open" />' +
                '</div>' +
            '</div>';
        $('.modal-body').append(renglonNuevo);
    }else{
        $(row).append(
          '<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 galerias">' +
                    '<div></div>' +
                    '<input type="file" class="filestyle form-control" data-buttonText=" Seleccione" data-buttonName="btn-primary" data-iconName="glyphicon-folder-open" />' +
            '</div>'      
        );
    }
}
