/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).on('ready', function() {
    console.log('hola :D');
    
    $('#popUpMandaCasas').modal('show');
    console.log($('#mmmm').html());
});

$('.verMas').on('click', function() {
    $('#popUpMandaCasas').modal('show');
    var id = $(this).attr('alt');
    $('#contenidoCasasImpartenTaller').load("buscarPorCategoriaTaller/" + id, function(response, status, xhr) {
        if (status === "error") {
            var msg = "Sorry but there was an error: ";
            $("#info").html(msg + xhr.status + " " + xhr.statusText);
        }
    });
});