/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var trClick;
//MUESTRA LOS POPUPS CON SUS VALORES
$(document).on('ready', function() {

    //POPUP AGREGAR
    $('#addCategoriaTallerButton').on('click', function() {
        limpiarInputs();
        $('#popUpCategoriaTallerAdd').modal('show');
    });

    //POPUP EDITAR
    $('.categoriaTallerUpdateButton').on('click', function() {
        limpiarInputs();
        rellenaPopUpUpdateTaller(this);
    });

    //POPUP ELIMINAR
    $('.categoriaTallerDeleteButton').on('click', function() {
        rellenaPopUpsDeleteTaller(this);
    });
});

//PETICIONES AJAX AL SERVIDOR
$(document).on('ready', function() {

    //AGREGAR EN BASE
    $('#addCategoriaTaller').on('click', function() {
        $('#nombreTallerAdd').removeAttr('style');
        var requisitos = 0;
       
        var nombreTaller = $('#nombreTallerAdd').val();

        if (!validarNombreTaller(taller)) {
            muestraPopUpCampoNoVacio($('#nombreTallerAdd'));
            $('#nombreTallerAdd').css("border", "1px solid red");
        } else {
            $('#nombreTallerAdd').removeAttr('style');
            cierraPopUpChiquito($('#nombreTallerAdd'));
            requisitos++;
        }

        if (requisitos === 1) {

            $.ajax({
                type: 'POST',
                url: "agregarCategoriaTaller/",
                dataType: 'text',
                data: $('#categoriaTallerAddForm').serialize(),
                success: function(respuesta) {
                    var respuesta = respuesta.split('#');
                    if (respuesta[0] === 'Correcto...') {
                        $('#tituloPopUp').text(respuesta[0]);
                        $('#contenidoPopUp').text(respuesta[1]);
                        $('#popUpCategoriaTallerAdd').modal('hide');
                        $('#popUpRespuesta').modal('show');
                        $('.nuevoCategoriaTaller').removeClass();
                        $("#categoriaTallerTbody").prepend(
                                '<tr valign="top" class="success nuevoCategoriaTaller">' +
                                '<td class="id">' +
                                '<label class="nombreTaller">' + nombreTaller + '</label>' +
                                '<label class="ocultar">' + respuesta[2] + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<div class="btn-group" role="group" aria-label="">' +
                                '<button class="btn btn-primary categoriaTallerUpdateButton">Editar</button>' +
                                '<button class="btn btn-danger categoriaTallerDeleteButton">Eliminar</button>' +
                                '<button class="btn btn-warning categoriaTallerImagenButton">Imagen</button>' +
                                '</div>' +
                                '</td>' +
                                '</tr>'

                                );

                    }
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    alert('error');
                }
            });
        }

    });
//89/12 = 7.41 -7
//107/14 = 7.64 -5
//82/13 = 6.03 -1
//
    //ACTUALIZAR BASE
    $('#updateCategoriaTaller').on('click', function() {
        $('#nombreTallerUpdate').removeAttr('style');
        var requisitos = 0;
        var nombreTaller = $('#nombreTallerUpdate').val();

        if (validarNombreTaller(taller)) {
            muestraPopUpCampoNoVacio($('#nombreTallerUpdate'));
            $('#nombreTallerUpdate').css("border", "1px solid red");
        } else {
            $('#nombreTallerUpdate').removeAttr('style');
            cierraPopUpChiquito($('#nombreTallerUpdate'));
            requisitos++;
        }

        if (requisitos === 1) {
            $.ajax({
                type: 'POST',
                url: "editarCategoriaTaller/",
                dataType: 'text',
                data: $('#categoriaTallerUpdateForm').serialize(),
                success: function(respuesta) {
                    var respuesta = respuesta.split('#');
                    if (respuesta[0] === 'Correcto...') {
                        $('#tituloPopUp').text(respuesta[0]);
                        $('#contenidoPopUp').text(respuesta[1]);
                        $('#popUpCategoriaTallerUpdate').modal('hide');
                        $('#popUpRespuesta').modal('show');
                        $('.nuevoCategoriaTaller').removeClass();
                        $(trClick).attr('class', 'success nuevoCategoriaTaller');
                        $(trClick).html(
                                //'<tr valign="top" class="success nuevoCategoriaTaller">'+
                                '<td class="id">' +
                                '<label class="nombreTaller">' + nombreTaller + '</label>' +
                                '<label class="ocultar">' + $('#idTallerUpdate').val() + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<div class="btn-group" role="group" aria-label="">' +
                                '<button class="btn btn-primary categoriaTallerUpdateButton">Editar</button>' +
                                '<button class="btn btn-danger categoriaTallerDeleteButton">Eliminar</button>' +
                                '<button class="btn btn-warning categoriaTallerImagenButton">Imagen</button>' +
                                '</div>' +
                                '</td>'
                                //'</tr>'
                                );
                    }
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    alert('error');
                }
            });
        }

    });

    $('#deleteCategoriaTaller').on('click', function() {
        $.ajax({
            type: 'POST',
            url: "eliminarCategoriaTaller/",
            dataType: 'text',
            data: $('#categoriaTallerDeleteForm').serialize(),
            success: function(respuesta) {
                var respuesta = respuesta.split('#');
                if (respuesta[0] === 'Correcto...') {
                    $('#tituloPopUp').text(respuesta[0]);
                    $('#contenidoPopUp').text(respuesta[1]);
                    $('#popUpCategoriaTallerDelete').modal('hide');
                    $('#popUpRespuesta').modal('show');
                    $(trClick).remove();
                }
            },
            error: function(jqXHR, textStatus, errorThrown) {
                alert('error');
            }
        });
    });

});


$('#categoriaTallerTbody').on('click', '.categoriaTallerUpdateButton', function() {
    rellenaPopUpUpdateTaller(this);
});
$('#categoriaTallerTbody').on('click', '.categoriaTallerDeleteButton', function() {
    rellenaPopUpsDeleteTaller(this);
});
$('#imagenPopUp').on('click', '#subirImagenTaller', function() {
    var url ='subirImagenCategoriaTaller/' +  $(trClick).find('td.id label.ocultar').text();
    var estatus = validaAndSubeImagen($('#seleccionadorImagen'), url);
    if (estatus === '1') {
        $('#tituloPopUp').text('Correcto....');
        $('#contenidoPopUp').text('Se acyualizo la imagen.');
        $('#imagenPopUp').modal('hide');
        $('#popUpRespuesta').modal('show');
    } else {
        $('#tituloPopUp').text('Ups!....');
        $('#contenidoPopUp').text('Ocurrio un problema Intente mas tarde.');
        $('#imagenPopUp').modal('hide');
        $('#popUpRespuesta').modal('show');
    }
});
$('#categoriaTallerTbody').on('click', '.categoriaTallerImagenButton', function() {
    var tr = $($($($(this).parent())).parent()).parent();
    console.log('ahhh');
    trClick = $(tr);
    var id = $(tr).find('td.id label.ocultar').text();
    $('#tituloImagenPopUp').text('Imagen de la Categoria');
    $('#contenidoImagenPopUp').text('Cambiar Imagen');
    $('#imagen').load("verImagenCategoriaTaller/" + id, function(response, status, xhr) {
        if (status === "error") {
            var msg = "Sorry but there was an error: ";
            $("#info").html(msg + xhr.status + " " + xhr.statusText);
        }
    });
    var button = $('#subirImagen');
    $(button).attr('id', 'subirImagenTaller');
    $('#imagenPopUp').modal('show');
});

function rellenaPopUpsDeleteTaller(selector) {
    var tr = $($($($(selector).parent())).parent()).parent();
    var id = $(tr).find('td.id label.ocultar').text();
    var nombreTaller = $(tr).find('td.id label.nombreTaller').text();
    var descripcion = $(tr).find('td.id label.descripcionTaller').text();
    trClick = $(tr);
    $('#idTallerDelete').val(id);
    $('#nombreTallerDelete').text(nombreTaller);
    $('#descripcionTallerDelete').text(descripcion);
    $('#popUpCategoriaTallerDelete').modal('show');
}

function rellenaPopUpUpdateTaller(selector) {
    var tr = $($($($(selector).parent())).parent()).parent();
    var id = $(tr).find('td.id label.ocultar').text();
    var nombreTaller = $(tr).find('td.id label.nombreTaller').text();
    var descripcion = $(tr).find('td.id label.descripcionTaller').text();
    trClick = $(tr);

    $('#idTallerUpdate').val(id);
    $('#nombreTallerUpdate').val(nombreTaller);
    $('#descripcionTallerUpdate').val(descripcion);
    $('#popUpCategoriaTallerUpdate').modal('show');
}


$('#categoriaTallerTbody').on('click', '.categoriaTallerImagenButton', function() {
    
});