/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$('#subirImagenTaller').on('click', function() {
    var imagenes = $('.galerias input');

    console.log(imagenes);
    $.each(imagenes, function(indice, valor) {
        var data = new FormData();
        data.append('file' + indice, valor.files[0]);
        $.ajax({
            url: 'subirGaleriaTaller/' + identificador,
            data: data,
            async: true,
            dataType: 'text',
            processData: false,
            contentType: false,
            type: 'POST',
            success: function(data) {
                if(data === '1'){
                    var div = $(valor).siblings('div');
                    var estilo = $(div).attr('style') + ' opacity: 0.4; filter: alpha(opacity=40);';
                    $(div).attr('style', estilo);
                }
            }
        });
    });

});