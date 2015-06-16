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
                
                break;
            case 1:
                intercambiaElementos($('#porClaseDiv'));
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