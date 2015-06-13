/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$('.talleres').on('click', function () {
    var id = $($(this).children('p.ocultar')).text();
//    window.location.href  = '../../www';
    
//    $.post( "../../buscaTallerPorId/" + id, function(taller){
//        alert(taller);
//        $('#nombre').text(taller.nombre);
//            $('#descripcion').text(taller.descripcion);
//            $('#costo').text(taller.costo);
//            $('#horario').text(taller.horario);
//        
//    });
//    $.get( "../../buscaTallerPorId/"+id, function(taller){
//        alert(taller);
//        $('#nombre').text(taller.nombre);
//            $('#descripcion').text(taller.descripcion);
//            $('#costo').text(taller.costo);
//            $('#horario').text(taller.horario);
//        
//    });
//    
//    
    $.ajax({
        type: 'POST',
        url: "../../buscaTallerPorId/"+id,
        
        beforeSend: function(xhr) {
            xhr.setRequestHeader("Accept", "application/json");
            xhr.setRequestHeader("Content-Type", "application/json");
        },
        success: function (taller) {
            $('#nombre').text(taller.nombre);
            $('#descripcion').text(taller.descripcion);
            $('#costo').text(taller.costo);
            $('#horario').text(taller.horario);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert(jqXHR.nombre);
            alert(textStatus);
            alert(errorThrown);
        }
    });
});