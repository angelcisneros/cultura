/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var body;
$(document).on('ready', function() {
    body = $('#casaTbody');
    $('#busquedas').change(function(e) {
        var str = $("#busquedas option:selected").attr('value');
        str = parseInt(str);
        switch (str) {
            case 0:
                limpiarBusquedas();
            break;
            case 1:
                intercambiaElementos($('#porNombreDiv'));
            break;
           
        }
    });
});

$('#porNombreButton').on('click', function() {
var nombre = $('#porNombre').val();
recargaTbody($(body), "buscarCasaPorNombre", {'nombre': nombre});
});

