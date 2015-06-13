/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var trClick;
//MUESTRA LOS POPUPS CON SUS VALORES
$(document).on('ready', function() {

    //POPUP AGREGAR
    $('#addVisitanteButton').on('click', function() {
        limpiarInputs();
        $('#popUpVisitanteAdd').modal('show');
    });

    //POPUP EDITAR
    $('.visitanteUpdateButton').on('click', function() {
        limpiarInputs();
        rellenaPopUpUpdate(this);
    });

    //POPUP ELIMINAR
    $('.visitanteDeleteButton').on('click', function() {
        rellenaPopUpsDelete(this);
    });
});

//PETICIONES AJAX AL SERVIDOR
$(document).on('ready', function() {

    //AGREGAR EN BASE

    //FALTA VALIDAR TELEFONO Y CELULAR PARA NUMEROS

    $('#addVisitante').on('click', function() {
        var requisitos = 0;
        var nombre = $('#nombreAdd').val();
        var paterno = $('#paternoAdd').val();
        var materno = $('#maternoAdd').val();
        var correo = $('#correoAdd').val();
        var telefono = $('#telefonoAdd').val();
        var celular = $('#celularAdd').val();

        if (!validarNombre( nombre )) {
            muestraPopUpCampoNoVacio($('#nombreAdd'));
            $('#nombreAdd').css("border", "1px solid red");
        } else {
            $('#nombreAdd').removeAttr('style');
            cierraPopUpChiquito($('#nombreAdd'));
            requisitos++;
        }

        if (!validarPaterno( paterno )) {
            muestraPopUpCampoNoVacio($('#paternoAdd'));
            $('#paternoAdd').css("border", "1px solid red");
        } else {
            $('#paternoAdd').removeAttr('style');
            cierraPopUpChiquito($('#paternoAdd'));
            requisitos++;
        }
        if (!validarMaterno( materno )) {
            muestraPopUpCampoNoVacio($('#maternoAdd'));
            $('#maternoAdd').css("border", "1px solid red");
        } else {
            $('#maternoAdd').removeAttr('style');
            cierraPopUpChiquito($('#maternoAdd'));
            requisitos++;
        }

        if (!validarEmail(correo)) {
            muestraPopUpCampoNoVacio($('#correoAdd'));
            $('#correoAdd').css("border", "1px solid red");
        } else {
            $('#correoAdd').removeAttr('style');
            cierraPopUpChiquito($('#correoAdd'));
            requisitos++;
        }
        if (!validarTelefono(telefono)) {
            muestraPopUpCampoNoVacio($('#telefonoAdd'));
            $('#telefonoAdd').css("border", "1px solid red");
        } else {
            $('#telefonoAdd').removeAttr('style');
            cierraPopUpChiquito($('#telefonoAdd'));
            requisitos++;
        }
        if (!validarCeleular(celular)) {
            muestraPopUpCampoNoVacio($('#celularAdd'));
            $('#celularAdd').css("border", "1px solid red");
        } else {
            $('#celularAdd').removeAttr('style');
            cierraPopUpChiquito($('#celularAdd'));
            requisitos++;
        }



        if (requisitos >= 4 || requisitos <= 6) {

            $.ajax({
                type: 'POST',
                url: "agregarVisitante/",
                dataType: 'text',
                data: $('#visitanteAddForm').serialize(),
                success: function(respuesta) {
                    var respuesta = respuesta.split('#');
                    if (respuesta[0] === 'Correcto...') {
                        $('#tituloPopUp').text(respuesta[0]);
                        $('#contenidoPopUp').text(respuesta[1]);
                        $('#popUpVisitanteAdd').modal('hide');
                        $('#popUpRespuesta').modal('show');
                        $('.nuevoVisitante').removeClass();
                        $("#visitanteTbody").prepend(
                                '<tr valign="top" class="nuevoVisitante success">' +
                                '<td class="id">' +
                                '<label class="nombre">' + nombre + '</label>&#32;   ' +
                                '<label class="paterno">' + paterno + '</label>&#32;' +
                                '<label class="materno">' + materno + '</label>' +
                                '<label class="ocultar">' + respuesta[2] + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="correo">' + correo + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="telefono">' + telefono + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="celular">' + celular + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<div class="btn-group" role="group" aria-label="">' +
                                '<button class="btn btn-primary visitanteUpdateButton">Editar</button>' +
                                '<button class="btn btn-danger visitanteDeleteButton">Eliminar</button>' +
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
    $('#updateVisitante').on('click', function() {
        var requisitos = 0;
        var nombre = $('#nombreUpdate').val();
        var paterno = $('#paternoUpdate').val();
        var materno = $('#maternoUpdate').val();
        var correo = $('#correoUpdate').val();
        var telefono = $('#telefonoUpdate').val();
        var celular = $('#celularUpdate').val();

        if (!validarNombre( nombre )) {
            muestraPopUpCampoNoVacio($('#nombreUpdate'));
            $('#nombreUpdate').css("border", "1px solid red");
        } else {
            $('#nombreUpdate').removeAttr('style');
            cierraPopUpChiquito($('#nombreUpdate'));
            requisitos++;
        }

        if (!validarPaterno( paterno )) {
            muestraPopUpCampoNoVacio($('#paternoUpdate'));
            $('#paternoUpdate').css("border", "1px solid red");
        } else {
            $('#paternoUpdate').removeAttr('style');
            cierraPopUpChiquito($('#paternoUpdate'));
            requisitos++;
        }
        if (!validarMaterno( materno )) {
            muestraPopUpCampoNoVacio($('#maternoUpdate'));
            $('#maternoUpdate').css("border", "1px solid red");
        } else {
            $('#maternoUpdate').removeAttr('style');
            cierraPopUpChiquito($('#maternoUpdate'));
            requisitos++;
        }

        if (!validarEmail(correo)) {
            muestraPopUpCampoNoVacio($('#correoUpdate'));
            $('#correoUpdate').css("border", "1px solid red");
        } else {
            $('#correoUpdate').removeAttr('style');
            cierraPopUpChiquito($('#correoUpdate'));
            requisitos++;
        }
        if (!validarTelefono(telefono)) {
            muestraPopUpCampoNoVacio($('#telefonoUpdate'));
            $('#telefonoUpdate').css("border", "1px solid red");
        } else {
            $('#telefonoUpdate').removeAttr('style');
            cierraPopUpChiquito($('#telefonoUpdate'));
            requisitos++;
        }
        if (!validarCeleular(celular)) {
            muestraPopUpCampoNoVacio($('#celularUpdate'));
            $('#celularUpdate').css("border", "1px solid red");
        } else {
            $('#celularUpdate').removeAttr('style');
            cierraPopUpChiquito($('#celularUpdate'));
            requisitos++;
        }



        if (requisitos >= 4 || requisitos <= 6) {
            $.ajax({
                type: 'POST',
                url: "editarVisitante/",
                dataType: 'text',
                data: $('#visitanteUpdateForm').serialize(),
                success: function(respuesta) {
                    var respuesta = respuesta.split('#');
                    if (respuesta[0] === 'Correcto...') {
                        $('#tituloPopUp').text(respuesta[0]);
                        $('#contenidoPopUp').text(respuesta[1]);
                        $('#popUpVisitanteUpdate').modal('hide');
                        $('#popUpRespuesta').modal('show');
                        $('.nuevoVisitante').removeClass();
                        $(trClick).attr('class', 'success nuevoVisitante');
                        $(trClick).html(
                                '<td class="id">' +
                                '<label class="nombre">' + nombre + '</label>&#32;   ' +
                                '<label class="paterno">' + paterno + '</label>&#32;' +
                                '<label class="materno">' + materno + '</label>' +
                                '<label class="ocultar">' + $('#idUpdate').val() + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="correo">' + correo + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="telefono">' + telefono + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="celular">' + celular + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<div class="btn-group" role="group" aria-label="">' +
                                '<button class="btn btn-primary visitanteUpdateButton">Editar</button>' +
                                '<button class="btn btn-danger visitanteDeleteButton">Eliminar</button>' +
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

    $('#deleteVisitante').on('click', function() {
        $.ajax({
            type: 'POST',
            url: "eliminarVisitante/",
            dataType: 'text',
            data: $('#visitanteDeleteForm').serialize(),
            success: function(respuesta) {
                var respuesta = respuesta.split('#');
                if (respuesta[0] === 'Correcto...') {
                    $('#tituloPopUp').text(respuesta[0]);
                    $('#contenidoPopUp').text(respuesta[1]);
                    $('#popUpVisitanteDelete').modal('hide');
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


$('#visitanteTbody').on('click', '.visitanteUpdateButton', function() {
    rellenaPopUpUpdate(this);
});

$('#visitanteTbody').on('click', '.visitanteDeleteButton', function() {
    rellenaPopUpsDelete(this);
});

function rellenaPopUpsDelete(selector) {
    var tr = $($($($(selector).parent())).parent()).parent();
    var id = $(tr).find('td.id label.ocultar').text();
    var nombre = $(tr).find('td.id label.nombre').text();
    var paterno = $(tr).find('td.id label.paterno').text();
    var materno = $(tr).find('td.id label.materno').text();
    var correo = $(tr).find('td label.correo').text();
    var telefono = $(tr).find('td label.telefono').text();
    var celular = $(tr).find('td label.celular').text();

    trClick = $(tr);

    $('#idDelete').val(id);
    $('#nombreDelete').text(nombre);
    $('#paternoDelete').text(paterno);
    $('#maternoDelete').text(materno);
    $('#correoDelete').text(correo);
    $('#telefonoDelete').text(telefono);
    $('#celularDelete').text(celular);
    $('#popUpVisitanteDelete').modal('show');
}

function rellenaPopUpUpdate(selector) {
    var tr = $($($($(selector).parent())).parent()).parent();
    var id = $(tr).find('td.id label.ocultar').text();
    var nombre = $(tr).find('td.id label.nombre').text();
    var paterno = $(tr).find('td.id label.nombre').text();
    var materno = $(tr).find('td.id label.nombre').text();
    var correo = $(tr).find('td label.correo').text();
    var telefono = $(tr).find('td label.telefono').text();
    var celular = $(tr).find('td label.celular').text();

    trClick = $(tr);

    $('#idUpdate').val(id);
    $('#nombreUpdate').val(nombre);
    $('#paternoUpdate').val(paterno);
    $('#maternoUpdate').val(materno);
    $('#correoUpdate').val(correo);
    $('#telefonoUpdate').val(telefono);
    $('#celularUpdate').val(celular);
    $('#popUpVisitanteUpdate').modal('show');
}




