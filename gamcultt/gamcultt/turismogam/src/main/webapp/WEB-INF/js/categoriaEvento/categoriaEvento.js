/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var trClick;
//MUESTRA LOS POPUPS CON SUS VALORES
$(document).on('ready', function() {

    //POPUP AGREGAR
    $('#addCategoriaEventoButton').on('click', function() {
        limpiarInputs();
        $('#popUpCategoriaEventoAdd').modal('show');
    });

    //POPUP EDITAR
    $('.categoriaEventoUpdateButton').on('click', function() {
        limpiarInputs();
        rellenaPopUpUpdate(this);
    });

    //POPUP ELIMINAR
    $('.categoriaEventoDeleteButton').on('click', function() {
        rellenaPopUpsDelete(this);
    });
});

//PETICIONES AJAX AL SERVIDOR
$(document).on('ready', function() {

    //AGREGAR EN BASE
    $('#addCategoriaEvento').on('click', function() {
        $('#nombreAdd').removeAttr('style');
        var requisitos = 0;
       
        var nombre = $('#nombreAdd').val();

        if (!validarNombre( nombre )) {
            muestraPopUpCampoNoVacio($('#nombreAdd'));
            $('#nombreAdd').css("border", "1px solid red");
        } else {
            $('#nombreAdd').removeAttr('style');
            cierraPopUpChiquito($('#nombreAdd'));
            requisitos++;
        }

        if (requisitos === 1) {

            $.ajax({
                type: 'POST',
                url: "agregarCategoriaEvento/",
                dataType: 'text',
                data: $('#categoriaEventoAddForm').serialize(),
                success: function(respuesta) {
                    var respuesta = respuesta.split('#');
                    if (respuesta[0] === 'Correcto...') {
                        $('#tituloPopUp').text(respuesta[0]);
                        $('#contenidoPopUp').text(respuesta[1]);
                        $('#popUpCategoriaEventoAdd').modal('hide');
                        $('#popUpRespuesta').modal('show');
                        $('.nuevoCategoriaEvento').removeClass();
                        $("#categoriaEventoTbody").prepend(
                                '<tr valign="top" class="success nuevoCategoriaEvento">' +
                                '<td class="id">' +
                                '<label class="nombre">' + nombre + '</label>' +
                                '<label class="ocultar">' + respuesta[2] + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<div class="btn-group" role="group" aria-label="">' +
                                '<button class="btn btn-primary categoriaEventoUpdateButton">Editar</button>' +
                                '<button class="btn btn-danger categoriaEventoDeleteButton">Eliminar</button>' +
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
    $('#updateCategoriaEvento').on('click', function() {
        $('#nombreUpdate').removeAttr('style');
        var requisitos = 0;
        var nombre = $('#nombreUpdate').val();

        if (!validarNombre( nombre )) {
            muestraPopUpCampoNoVacio($('#nombreUpdate'));
            $('#nombreUpdate').css("border", "1px solid red");
        } else {
            $('#nombreUpdate').removeAttr('style');
            cierraPopUpChiquito($('#nombreUpdate'));
            requisitos++;
        }

        if (requisitos === 1) {
            $.ajax({
                type: 'POST',
                url: "editarCategoriaEvento/",
                dataType: 'text',
                data: $('#categoriaEventoUpdateForm').serialize(),
                success: function(respuesta) {
                    var respuesta = respuesta.split('#');
                    if (respuesta[0] === 'Correcto...') {
                        $('#tituloPopUp').text(respuesta[0]);
                        $('#contenidoPopUp').text(respuesta[1]);
                        $('#popUpCategoriaEventoUpdate').modal('hide');
                        $('#popUpRespuesta').modal('show');
                        $('.nuevoCategoriaEvento').removeClass();
                        $(trClick).attr('class', 'success nuevoCategoriaEvento');
                        $(trClick).html(
                                //'<tr valign="top" class="success nuevoCategoriaEvento">'+
                                '<td class="id">' +
                                '<label class="nombre">' + nombre + '</label>' +
                                '<label class="ocultar">' + $('#idUpdate').val() + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<div class="btn-group" role="group" aria-label="">' +
                                '<button class="btn btn-primary categoriaEventoUpdateButton">Editar</button>' +
                                '<button class="btn btn-danger categoriaEventoDeleteButton">Eliminar</button>' +
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

    $('#deleteCategoriaEvento').on('click', function() {
        $.ajax({
            type: 'POST',
            url: "eliminarCategoriaEvento/",
            dataType: 'text',
            data: $('#categoriaEventoDeleteForm').serialize(),
            success: function(respuesta) {
                var respuesta = respuesta.split('#');
                if (respuesta[0] === 'Correcto...') {
                    $('#tituloPopUp').text(respuesta[0]);
                    $('#contenidoPopUp').text(respuesta[1]);
                    $('#popUpCategoriaEventoDelete').modal('hide');
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


$('#categoriaEventoTbody').on('click', '.categoriaEventoUpdateButton', function() {
    rellenaPopUpUpdate(this);
});

$('#categoriaEventoTbody').on('click', '.categoriaEventoDeleteButton', function() {
    rellenaPopUpsDelete(this);
});

$('#imagenPopUp').on('click', '#subirImagenEvento', function() {
    var url ='subirImagenCategoriaEvento/' +  $(trClick).find('td.id label.ocultar').text();
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
$('#categoriaEventoTbody').on('click', '.categoriaEventoImagenButton', function() {
    var tr = $($($($(this).parent())).parent()).parent();
    console.log('ahhh');
    trClick = $(tr);
    var id = $(tr).find('td.id label.ocultar').text();
    $('#tituloImagenPopUp').text('Imagen de la Categoria');
    $('#contenidoImagenPopUp').text('Cambiar Imagen');
    $('#imagen').load("verImagenCategoriaEvento/" + id, function(response, status, xhr) {
        if (status === "error") {
            var msg = "Sorry but there was an error: ";
            $("#info").html(msg + xhr.status + " " + xhr.statusText);
        }
    });
    var button = $('#subirImagen');
    $(button).attr('id', 'subirImagenEvento');
    $('#imagenPopUp').modal('show');
});


function rellenaPopUpsDelete(selector) {
    var tr = $($($($(selector).parent())).parent()).parent();
    var id = $(tr).find('td.id label.ocultar').text();
    var nombre = $(tr).find('td.id label.nombre').text();
    trClick = $(tr);
    $('#idDelete').val(id);
    $('#nombreDelete').text(nombre);
    $('#popUpCategoriaEventoDelete').modal('show');
}

function rellenaPopUpUpdate(selector) {
    var tr = $($($($(selector).parent())).parent()).parent();
    var id = $(tr).find('td.id label.ocultar').text();
    var nombre = $(tr).find('td.id label.nombre').text();
    trClick = $(tr);

    $('#idUpdate').val(id);
    $('#nombreUpdate').val(nombre);
    $('#popUpCategoriaEventoUpdate').modal('show');
}
