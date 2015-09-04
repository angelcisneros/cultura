/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var body;
$(document).on('ready', function() {
    body = $('#profesorTbody');
    $('#busquedas').change(function(e) {
        var str = $("#busquedas option:selected").attr('value');
        str = parseInt(str);
        switch (str) {
            case 0:
                limpiarBusquedas();
                recargaTbody($(body), "buscarTodosAlumnos", {'nada':''});
                break;
            case 1:
                intercambiaElementos($('#porNombreDiv'));
                break;
            case 2:
                 intercambiaElementos($('#porEdadDiv'));
                break;
            case 3:
                intercambiaElementos($('#porCorreoDiv'));
                break;
            }
    });
});



$('#porEdadButton').on('click', function() {
    var edad = $('#porEdad').val();
    recargaTbody($(body), "buscarAlumnoPorEdad", {'edad': edad});
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