/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$('#subirImagenTaller').on('click', function() {
    var imagenes = $('.galerias input');

    $.each(imagenes, function(indice, valor) {
        var data = new FormData();
        data.append('file', valor.files[0]);
        $.ajax({
            url: 'subirGaleriaTaller/3',
            data: data,
            async: true,
            dataType: 'text',
            processData: false,
            contentType: false,
            type: 'POST',
            success: function(data) {
                alert(data);
            }
        });
    });

});