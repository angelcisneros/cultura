/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$('#editarRed').on('click', function() {
    var titulo = $('#tituloRed').val();
    var descripcion = $('#descripcionRed').text();
    //Validar
    cambiarServidor('vistaRed', $('#redForm'));
});
$('#editarPrincipal').on('click', function() {
    var titulo = $('#tituloPrincipal').val();
    var descripcion = $('#descripcionPrincipal').text();
    //Validar
    cambiarServidor('vistaPrincipal', $('#principalForm'));
});
$('#editarImagenRed').on('click', function() {
    var estatus = validaAndSubeImagen($('#seleccionadorImagenRed'), 'subirImagenHome/red');
    if (estatus === '1') {
        $('#tituloPopUp').text('Correcto....');
        $('#contenidoPopUp').text('Se acyualizo la imagen.');
        $('#popUpRespuesta').modal('show');
    } else {
        $('#tituloPopUp').text('Ups!....');
        $('#contenidoPopUp').text('Ocurrio un problema Intente mas tarde.');
        $('#popUpRespuesta').modal('show');
    }
});
$('#editarImagenPrincipal').on('click', function() {
    var estatus = validaAndSubeImagen($('#seleccionadorImagenPrincipal'), 'subirImagenHome/principal');
    if (estatus === '1') {
        $('#tituloPopUp').text('Correcto....');
        $('#contenidoPopUp').text('Se acyualizo la imagen.');
        $('#popUpRespuesta').modal('show');
    } else {
        $('#tituloPopUp').text('Ups!....');
        $('#contenidoPopUp').text('Ocurrio un problema Intente mas tarde.');
        $('#popUpRespuesta').modal('show');
    }
});
$('#seleccionadorImagenPrincipal').on('change', function() {
    cambiaImagen(this);
});
$('#seleccionadorImagenRed').on('change', function() {
    cambiaImagen(this);
});
$('.imagenesSlider').on('change', function() {
    cambiaImagen(this);
});
$('#editarSliderPrincipal').on('click', function() {
    var imagenes = $('.imagenesSlider');
    var contenido = 0;

    $.each(imagenes, function(indice, valor) {
        if ($(valor).val() === '') {

        } else {
            var id = $($($(this).parent())).attr('id');
            subirImagen($(valor), 'subirImagenHome/' + id);
            contenido++;
        }
    });
    if (contenido === 0) {
        $('#tituloPopUp').text('Error...');
        $('#contenidoPopUp').text('no se han detectado cambios');
        $('#popUpRespuesta').modal('show');
    }

});
function cambiarServidor(url, form) {
    $.ajax({
        type: 'POST',
        url: url,
        dataType: 'text',
        data: $(form).serialize(),
        success: function(respuesta) {
            var respuesta = respuesta.split('#');
            if (respuesta[0] === 'Correcto...') {
                $('#tituloPopUp').text(respuesta[0]);
                $('#contenidoPopUp').text(respuesta[1]);
                $('#popUpRespuesta').modal('show');
            }
        },
        error: function(jqXHR, textStatus, errorThrown) {
            alert('error');
        }
    });
}