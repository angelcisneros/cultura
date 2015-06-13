/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$('.talleres').on('click', function () {
    var id = $($(this).children('p.ocultar')).text();
//    window.location.href  = '../../www';
    
    $.get( "../../buscaTallerPorId/" + id, function(taller){
        alert(taller);
        $('#nombre').text(taller.nombre);
            $('#descripcion').text(taller.descripcion);
            $('#costo').text(taller.costo);
            $('#horario').text(taller.horario);
        
    });
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
//    $.ajax({
//        type: 'POST',
//        url: "../../buscaTallerPorId/"+id,
//        dataType: false,
//        success: function (taller) {
//            $('#nombre').text(taller.nombre);
//            $('#descripcion').text(taller.descripcion);
//            $('#costo').text(taller.costo);
//            $('#horario').text(taller.horario);
//        },
//        error: function (jqXHR, textStatus, errorThrown) {
//            alert('error');
//        }
//    });
});