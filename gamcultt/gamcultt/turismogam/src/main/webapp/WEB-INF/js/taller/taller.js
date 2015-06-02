/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var trClick;
//MUESTRA LOS POPUPS CON SUS VALORES
$(document).on('ready', function() {

    //POPUP AGREGAR
    $('#addTallerButton').on('click', function() {
        $('#nombreTallerUpdate').removeAttr('style');
        cierraPopUpChiquito($('#nombreTallerUpdate'));
        $('#popUpTallerAdd').modal('show');
    });

    //POPUP EDITAR
    $('.tallerUpdateButton').on('click', function() {
        rellenaPopUpUpdate(this);
    });

    //POPUP ELIMINAR
    $('.tallerDeleteButton').on('click', function() {
        rellenaPopUpsDelete(this);
    });
});

//PETICIONES AJAX AL SERVIDOR
$(document).on('ready', function() {

    //AGREGAR EN BASE
    $('#addTaller').on('click', function() {
        $('#nombreAdd').removeAttr('style');
        var requisitos = 0;
        var categoria = $('#categoriaAdd').val();
        var nombre = $('#nombreAdd').val();
        var descripcion = $('#descripcionAdd').val();


        if (nombre === '') {
            muestraPopUpCampoNoVacio($('#nombreAdd'));
            $('#nombreAdd').css("border", "1px solid red");
        } else {
            $('#nombreAdd').removeAttr('style');
            cierraPopUpChiquito($('#nombreAdd'));
            requisitos++;
        }
        if (categoria === '0' || categoria === 0) {
            muestraPopUpCampoNoVacio($('#categoriaAdd'));
            $('#categoriaAdd').css("border", "1px solid red");
        } else {
            $('#categoriaAdd').removeAttr('style');
            cierraPopUpChiquito($('#categoriaAdd'));
            requisitos++;
        }

        if (descripcion === '') {
            muestraPopUpCampoNoVacio($('#descripcionAdd'));
            $('#descripcionAdd').css("border", "1px solid red");
        } else {
            $('#descripcionAdd').removeAttr('style');
            cierraPopUpChiquito($('#descripcionAdd'));
            requisitos++;
        }


        if (requisitos === 3) {

            $.ajax({
                type: 'POST',
                url: "agregarTaller/",
                dataType: 'text',
                data: $('#tallerAddForm').serialize(),
                success: function(respuesta) {
                    var respuesta = respuesta.split('#');
                    if (respuesta[0] === 'Correcto...') {
                        $('#tituloPopUp').text(respuesta[0]);
                        $('#contenidoPopUp').text(respuesta[1]);
                        $('#popUpTallerAdd').modal('hide');
                        $('#popUpRespuesta').modal('show');
                        $('.nuevoTaller').removeClass();
                        $("#tallerTbody").prepend(
                                '<tr valign="top" class="nuevoTaller success">' +
                                '<td class="id">' +
                                '<label class="nombre">' + nombre + '</label>' +
                                '<label class="ocultar">' + respuesta[2] + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="categoria">' + $('#categoriaAdd :selected').text() + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="descripcion">' + descripcion + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<div class="btn-group" role="group" aria-label="">' +
                                '<button class="btn btn-primary tallerUpdateButton">Editar</button>' +
                                '<button class="btn btn-danger tallerDeleteButton">Eliminar</button>' +
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

    //ACTUALIZAR BASE
    $('#updateTaller').on('click', function() {
        $('#nombreUpdate').removeAttr('style');
        var requisitos = 0;
        var categoria = $('#categoriaUpdate').val();
        var nombre = $('#nombreUpdate').val();
        var descripcion = $('#descripcionUpdate').val();
        
        if (nombre === '') {
            muestraPopUpCampoNoVacio($('#nombreUpdate'));
            $('#nombreUpdate').css("border", "1px solid red");
        } else {
            $('#nombreUpdate').removeAttr('style');
            cierraPopUpChiquito($('#nombreUpdate'));
            requisitos++;
        }
        if (categoria === '0' || categoria === 0) {
            muestraPopUpCampoNoVacio($('#categoriaUpdate'));
            $('#categoriaUpdate').css("border", "1px solid red");
        } else {
            $('#categoriaUpdate').removeAttr('style');
            cierraPopUpChiquito($('#categoriaUpdate'));
            requisitos++;
        }
        if (descripcion === '') {
            muestraPopUpCampoNoVacio($('#descripcionUpdate'));
            $('#descripcionUpdate').css("border", "1px solid red");
        } else {
            $('#descripcionUpdate').removeAttr('style');
            cierraPopUpChiquito($('#descripcionUpdate'));
            requisitos++;
        }


        if (requisitos === 3) {
            $.ajax({
                type: 'POST',
                url: "editarTaller/",
                dataType: 'text',
                data: $('#tallerUpdateForm').serialize(),
                success: function(respuesta) {
                    var respuesta = respuesta.split('#');
                    if (respuesta[0] === 'Correcto...') {
                        $('#tituloPopUp').text(respuesta[0]);
                        $('#contenidoPopUp').text(respuesta[1]);
                        $('#popUpTallerUpdate').modal('hide');
                        $('#popUpRespuesta').modal('show');
                        $('.nuevoTaller').removeClass();
                        $(trClick).attr('class', 'success nuevoTaller');
                        $(trClick).html(
                                '<td class="id">' +
                                '<label class="nombre">' + nombre + '</label>' +
                                '<label class="ocultar">' + $('#idUpdate').val() + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="categoria">' + $('#categoriaUpdate :selected').text() + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="descripcion">' + descripcion + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<div class="btn-group" role="group" aria-label="">' +
                                '<button class="btn btn-primary tallerUpdateButton">Editar</button>' +
                                '<button class="btn btn-danger tallerDeleteButton">Eliminar</button>' +
                                '</div>' +
                                '</td>'
                                );
                    }
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    alert('error');
                }
            });
        }

    });

    $('#deleteTaller').on('click', function() {
        $.ajax({
            type: 'POST',
            url: "eliminarTaller/",
            dataType: 'text',
            data: $('#tallerDeleteForm').serialize(),
            success: function(respuesta) {
                var respuesta = respuesta.split('#');
                if (respuesta[0] === 'Correcto...') {
                    $('#tituloPopUp').text(respuesta[0]);
                    $('#contenidoPopUp').text(respuesta[1]);
                    $('#popUpTallerDelete').modal('hide');
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


$('#tallerTbody').on('click', '.tallerUpdateButton', function() {
    rellenaPopUpUpdate(this);
});

$('#tallerTbody').on('click', '.tallerDeleteButton', function() {
    rellenaPopUpsDelete(this);
});

function rellenaPopUpsDelete(selector) {
    var tr = $($($($(selector).parent())).parent()).parent();
    var id = $(tr).find('td.id label.ocultar').text();
    var nombre = $(tr).find('td.id label.nombre').text();
    var categoria = $(tr).find('td label.categoria').text();
    var descripcion = $(tr).find('td label.descripcion').text();
    trClick = tr;

    $('#idDelete').val(id);
    $('#nombreDelete').text(nombre);
    $('#descripcionDelete').text(descripcion);
    $('#categoriaDelete').text(categoria);
    $('#popUpTallerDelete').modal('show');
}

function rellenaPopUpUpdate(selector) {
    var tr = $($($($(selector).parent())).parent()).parent();
    var id = $(tr).find('td.id label.ocultar').text();
    var nombre = $(tr).find('td.id label.nombre').text();
    var categoria = $(tr).find('td label.categoria').text();
    var descripcion = $(tr).find('td label.descripcion').text();
    trClick = tr;

    $('#idUpdate').val(id);
    $('#nombreUpdate').val(nombre);
    $('#descripcionUpdate').val(descripcion);
    setOption($('#categoriaUpdate').children('option'), categoria);
    $('#popUpTallerUpdate').modal('show');
}
