/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var trClick;
//MUESTRA LOS POPUPS CON SUS VALORES
$(document).on('ready', function() {
    //POPUP AGREGAR
    $('#addSalaButton').on('click', function() {
        limpiarInputs();
        $('#popUpSalaAdd').modal('show');
    });

    //POPUP EDITAR
    $('.salaUpdateButton').on('click', function() {
        limpiarInputs();
        rellenaPopUpUpdate(this);
    });

    //POPUP ELIMINAR
    $('.salaDeleteButton').on('click', function() {
        rellenaPopUpsDelete(this);
    });
});

//PETICIONES AJAX AL SERVIDOR
$(document).on('ready', function() {

    //AGREGAR EN BASE
    $('#addSala').on('click', function() {
        $('#nombreAdd').removeAttr('style');
        var requisitos = 0;
        var casa = $('#casaAdd').val();
        var nombre = $('#nombreAdd').val();
        var capacidad = $('#capacidadAdd').val();


        if (!validarNombre( nombre )) {
            muestraPopUpCampoNoVacio($('#nombreAdd'));
            $('#nombreAdd').css("border", "1px solid red");
        } else {
            $('#nombreAdd').removeAttr('style');
            cierraPopUpChiquito($('#nombreAdd'));
            requisitos++;
        }

        if (casa === '0' || casa === 0) {
            muestraPopUpCampoNoVacio($('#casaAdd'));
            $('#casaAdd').css("border", "1px solid red");
        } else {
            $('#casaAdd').removeAttr('style');
            cierraPopUpChiquito($('#casaAdd'));
            requisitos++;
        }
        if (!$.isNumeric(capacidad)) {
            muestraPopUpCampoNoVacio($('#capacidadAdd'));
            $('#capacidadAdd').css("border", "1px solid red");
        } else {
            $('#capacidadAdd').removeAttr('style');
            cierraPopUpChiquito($('#capacidadAdd'));
            requisitos++;
        }



        if (requisitos === 3) {

            $.ajax({
                type: 'POST',
                url: "agregarSala/",
                dataType: 'text',
                data: $('#salaAddForm').serialize(),
                success: function(respuesta) {
                    var respuesta = respuesta.split('#');
                    if (respuesta[0] === 'Correcto...') {
                        $('#tituloPopUp').text(respuesta[0]);
                        $('#contenidoPopUp').text(respuesta[1]);
                        $('#popUpSalaAdd').modal('hide');
                        $('#popUpRespuesta').modal('show');
                        $('.nuevoSala').removeClass();
                        $("#salaTbody").prepend(
                                '<tr valign="top" class="success nuevoSala">' +
                                '<td class="id">' +
                                '<label class="nombre">' + nombre + '</label>' +
                                '<label class="ocultar">' + respuesta[2] + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="nombreCasa">' + $('#casaAdd option:selected').text() + '</label>' +
                                '</td>' +
                                '<td><label class="capacidad">' + capacidad + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<div class="btn-group" role="group" aria-label="">' +
                                '<button class="btn btn-primary salaUpdateButton">Editar</button>' +
                                '<button class="btn btn-danger salaDeleteButton">Eliminar</button>' +
                                '<button class="btn btn-info salaReporteIndividualButton">Reporte</button>'+
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
    $('#updateSala').on('click', function() {
        $('#nombreUpdate').removeAttr('style');
        var requisitos = 0;
        var casa = $('#casaUpdate').val();
        var nombre = $('#nombreUpdate').val();
        var capacidad = $('#capacidadUpdate').val();


        if (!validarNombre( nombre )) {
            muestraPopUpCampoNoVacio($('#nombreUpdate'));
            $('#nombreUpdate').css("border", "1px solid red");
        } else {
            $('#nombreUpdate').removeAttr('style');
            cierraPopUpChiquito($('#nombreUpdate'));
            requisitos++;
        }

        if (casa === '0' || casa === 0) {
            muestraPopUpCampoNoVacio($('#casaUpdate'));
            $('#casaUpdate').css("border", "1px solid red");
        } else {
            $('#casaUpdate').removeAttr('style');
            cierraPopUpChiquito($('#casaUpdate'));
            requisitos++;
        }
        if (!$.isNumeric(capacidad)) {
            muestraPopUpCampoNoVacio($('#capacidadUpdate'));
            $('#capacidadUpdate').css("border", "1px solid red");
        } else {
            $('#capacidadUpdate').removeAttr('style');
            cierraPopUpChiquito($('#capacidadUpdate'));
            requisitos++;
        }



        if (requisitos === 3) {
            $.ajax({
                type: 'POST',
                url: "editarSala/",
                dataType: 'text',
                data: $('#salaUpdateForm').serialize(),
                success: function(respuesta) {
                    var respuesta = respuesta.split('#');
                    if (respuesta[0] === 'Correcto...') {
                        $('#tituloPopUp').text(respuesta[0]);
                        $('#contenidoPopUp').text(respuesta[1]);
                        $('#popUpSalaUpdate').modal('hide');
                        $('#popUpRespuesta').modal('show');
                        $('.nuevoSala').removeClass();
                        $(trClick).attr('class', 'success nuevoSala');
                        $(trClick).html(
                                //'<tr valign="top" class="success nuevoSala">'+
                                '<td class="id">' +
                                '<label class="nombre">' + nombre + '</label>' +
                                '<label class="ocultar">' + $('#idUpdate').val() + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="nombreCasa">' + $('#casaUpdate :selected').text() + '</label>' +
                                '</td>' +
                                '<td class="capacidad"><label class="capacidad">' + capacidad + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<div class="btn-group" role="group" aria-label="">' +
                                '<button class="btn btn-primary salaUpdateButton">Editar</button>' +
                                '<button class="btn btn-danger salaDeleteButton">Eliminar</button>' +
                                '<button class="btn btn-info salaReporteIndividualButton">Reporte</button>'+
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

    $('#deleteSala').on('click', function() {
        $.ajax({
            type: 'POST',
            url: "eliminarSala/",
            dataType: 'text',
            data: $('#salaDeleteForm').serialize(),
            success: function(respuesta) {
                var respuesta = respuesta.split('#');
                if (respuesta[0] === 'Correcto...') {
                    $('#tituloPopUp').text(respuesta[0]);
                    $('#contenidoPopUp').text(respuesta[1]);
                    $('#popUpSalaDelete').modal('hide');
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


$('#salaTbody').on('click', '.salaUpdateButton', function() {
    rellenaPopUpUpdate(this);
});

$('#salaTbody').on('click', '.salaDeleteButton', function() {
    rellenaPopUpsDelete(this);
});

function rellenaPopUpsDelete(selector) {
    var tr = $($($($(selector).parent())).parent()).parent();
    var id = $(tr).find('td.id label.ocultar').text();
    var nombre = $(tr).find('td.id label.nombre').text();
    var nombreCasa = $(tr).find('td label.nombreCasa').text();
    var capacidad = $(tr).find('td label.capacidad').text();
    trClick = $(tr);
    $('#idDelete').val(id);
    $('#nombreDelete').text(nombre);
    $('#capacidadDelete').text(capacidad);
    $('#casaDelete').text(nombreCasa);
    $('#popUpSalaDelete').modal('show');
}

function rellenaPopUpUpdate(selector) {
    var tr = $($($($(selector).parent())).parent()).parent();
    var id = $(tr).find('td.id label.ocultar').text();
    var nombre = $(tr).find('td.id label.nombre').text();
    var nombreCasa = $(tr).find('td label.nombreCasa').text();
    var capacidad = $(tr).find('td label.capacidad').text();
    trClick = $(tr);

    $('#idUpdate').val(id);
    $('#nombreUpdate').val(nombre);
    $('#capacidadUpdate').val(capacidad);
    setOption($('#casaUpdate').children('option'), nombreCasa);
    $('#popUpSalaUpdate').modal('show');
}


