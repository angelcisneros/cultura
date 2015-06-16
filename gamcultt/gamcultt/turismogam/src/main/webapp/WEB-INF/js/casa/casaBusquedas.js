/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).on('ready', function() {
    $('#busquedas').change(function(e) {
        var str = $("#busquedas option:selected").attr('value');
        str = parseInt(str);
        switch (str) {
            case 0:
                limpiarBusquedas();
            break;
            case 1:
                intercambiaElementos($('#porTallerDiv'));
            break;
            case 2:
                intercambiaElementos($('#porEdadDiv'));
            break;
            case 3:
                intercambiaElementos($('#porProfesorDiv'));
            break;
        }
    });
});

$('#porTallerButton').on('click', function() {

});

$('#porEdadButton').on('click', function() {

});

$('#porProfesorButton').on('click', function() {

});
