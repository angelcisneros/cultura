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
                recargaTbody($(body), "buscarTodosAlumnos", {'nada':''});
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
    recargaTbody($(body), "buscarAlumnoPorTaller", {'idTaller': id});
});

$('#porEdadButton').on('click', function() {
    var edadMin = $('#porEdadMin').val();
    var edadMax = $('#porEdadMax').val();
    edadMin = edadMin + ',' + edadMax;
    recargaTbody($(body), "buscarAlumnoPorEdad", {'edadCompleta': edadMin});
});

$('#porNombreButton').on('click', function() {
    var nombre = $('#porNombre').val();
    var paterno = $('#porPaterno').val();
    var materno = $('#porMaterno').val();
    nombre = nombre + ',' + paterno + ',' + materno;
    recargaTbody($(body), "buscarAlumnoPorNombre", {'nombreCompleto': nombre});
});

$('#porCorreoButton').on('click', function() {
    var correo = $('#porCorreo').val();
    recargaTbody($(body), "buscarAlumnoPorCorreo", {'correo': correo});
});