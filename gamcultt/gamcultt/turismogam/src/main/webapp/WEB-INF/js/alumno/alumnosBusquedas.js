/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var body;
$(document).on('ready', function() {
    body = $('#alumnoTbody');
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
                intercambiaElementos($('#porNombreDiv'));
                break;
            case 3:
                intercambiaElementos($('#porEdadDiv'));
                break;
            case 4:
                intercambiaElementos($('#porClaseDiv'));
                break;
        }
    });
});

$('#porTallerButton').on('click', function() {
    var id = $("#porTallerId option:selected").attr('value');
    recargaTbody($(body), "buscarAlumnoPorTaller", id);
});

$('#porEdadButton').on('click', function() {
    var edadMin = $('#porEdadMin').val();
    var edadMax = $('#porEdadMax').val();
    recargaTbody($(body), "", id);
});

$('#porNombreButton').on('click', function() {
    recargaTbody($(body), "", id);
});

$('#porCorreoButton').on('click', function() {
    recargaTbody($(body), "", id);
});