/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var body;
$(document).on('ready', function () {
    body = $('#visitanteTbody');
    $('#busquedas').change(function (e) {
        var str = $("#busquedas option:selected").attr('value');
        str = parseInt(str);
        switch (str) {
            case 0:
                limpiarBusquedas();
                recargaTbody($(body), "buscarTodosVisitantes", {'nada': ''});
                break;
            case 1:
                intercambiaElementos($('#porNombreDiv'));
                break;
            case 2:
                intercambiaElementos($('#porEdadDiv'));
                break;
            case 3:
                intercambiaElementos($('#porClaseDiv'));
                break;
            case 4:
                intercambiaElementos($('#porSexoDiv'));
                break;
        }
    });
});


$('#porEdadButton').on('click', function () {
    var edadMin = $('#porEdadMin').val();
    var edadMax = $('#porEdadMax').val();
    edadMin = edadMin + ',' + edadMax;
    recargaTbody($(body), "buscarVisitantePorEdad", {'edadCompleta': edadMin});
});

$('#porNombreButton').on('click', function () {
    var nombre = $('#porNombre').val();
    var paterno = $('#porPaterno').val();
    var materno = $('#porMaterno').val();
    nombre = nombre + ',' + paterno + ',' + materno;
    recargaTbody($(body), "buscarVisitantePorNombre", {'nombreCompleto': nombre});
});
$('#porCorroButton').on('click', function () {
    var correo = $('#porCorreo').val();
    recargaTbody($(body), "buscarVisitantePorCorreo", {'correo': correo});
});

$('#porSexoButton').on('click', function () {
    var sexo= $('#porSexo').val();
    recargaTbody($(body), "buscarVisitantePorSexo", {'sexo': sexo});
});