/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var trClick;
//MUESTRA LOS POPUPS CON SUS VALORES
$(document).on('ready', function() {

    //POPUP AGREGAR
    $('#addEncargadoButton').on('click', function() {
        limpiarInputs();
        $('#popUpEncargadoAdd').modal('show');
    });

    //POPUP EDITAR
    $('.encargadoUpdateButton').on('click', function() {
        limpiarInputs();
        rellenaPopUpUpdate(this);
    });

    //POPUP ELIMINAR
    $('.encargadoDeleteButton').on('click', function() {
        rellenaPopUpsDelete(this);
    });
});

//PETICIONES AJAX AL SERVIDOR
$(document).on('ready', function() {

    //AGREGAR EN BASE
    $('#addEncargado').on('click', function() {
        $('#nombreAdd').removeAttr('style');
        var requisitos = 0;
        var nombre = $('#nombreAdd').val();
        var paterno = $('#paternoAdd').val();
        var materno = $('#maternoAdd').val();
        var telefono = $('#telefonoAdd').val();
        var casa = $('#casaAdd').val();

        if (nombre === '') {
            muestraPopUpCampoNoVacio($('#nombreAdd'));
            $('#nombreAdd').css("border", "1px solid red");
        } else {
            $('#nombreAdd').removeAttr('style');
            cierraPopUpChiquito($('#nombreAdd'));
            requisitos++;
        }

        if (paterno === '') {
            muestraPopUpCampoNoVacio($('#paternoAdd'));
            $('#paternoAdd').css("border", "1px solid red");
        } else {
            $('#paternoAdd').removeAttr('style');
            cierraPopUpChiquito($('#paternoAdd'));
            requisitos++;
        }
        if (materno === '') {
            muestraPopUpCampoNoVacio($('#maternoAdd'));
            $('#maternoAdd').css("border", "1px solid red");
        } else {
            $('#maternoAdd').removeAttr('style');
            cierraPopUpChiquito($('#maternoAdd'));
            requisitos++;
        }
        if (telefono === '') {
            muestraPopUpCampoNoVacio($('#telefonoAdd'));
            $('#telefonoAdd').css("border", "1px solid red");
        } else {
            $('#telefonoAdd').removeAttr('style');
            cierraPopUpChiquito($('#telefonoAdd'));
            requisitos++;
        }
        if (casa === '0' || casa === 0) {
            casa = '';
            muestraPopUpCampoNoVacio($('#casaAdd'));
        } else {
            $('#casaAdd').removeAttr('style');
            casa = $('#casaAdd option:selected').text();
            cierraPopUpChiquito($('$casaAdd'));
            requisitos++;
        }
        if (requisitos === 5) {

            $.ajax({
                type: 'POST',
                url: "agregarEncargado/",
                dataType: 'text',
                data: $('#encargadoAddForm').serialize(),
                success: function(respuesta) {
                    var respuesta = respuesta.split('#');
                    if (respuesta[0] === 'Correcto...') {
                        $('#tituloPopUp').text(respuesta[0]);
                        $('#contenidoPopUp').text(respuesta[1]);
                        $('#popUpEncargadoAdd').modal('hide');
                        $('#popUpRespuesta').modal('show');
                        $('.nuevoEncargado').removeClass();
                        $("#encargadoTbody").prepend(
                                '<tr valign="top" class="nuevoEncargado success">' +
                                '<td class="id">' +
                                '<label class="nombre">' + nombre + '</label>&#32;' +
                                '<label class="paterno">' + paterno + '</label>&#32;' +
                                '<label class="materno">' + materno + '</label>' +
                                '<label class="ocultar">' + respuesta[2] + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="casa">' + casa + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="telefono">' + telefono + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<div class="btn-group" role="group" aria-label="">' +
                                '<button class="btn btn-primary encargadoUpdateButton">Editar</button>' +
                                '<button class="btn btn-danger encargadoDeleteButton">Eliminar</button>' +
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
    $('#updateEncargado').on('click', function() {
        var requisitos = 0;
        var nombre = $('#nombreUpdate').val();
        var paterno = $('#paternoUpdate').val();
        var materno = $('#maternoUpdate').val();
        var telefono = $('#telefonoUpdate').val();
        var casa = $('#casaUpdate').val();

        if (nombre === '') {
            muestraPopUpCampoNoVacio($('#nombreUpdate'));
            $('#nombreUpdate').css("border", "1px solid red");
        } else {
            $('#nombreUpdate').removeAttr('style');
            cierraPopUpChiquito($('#nombreUpdate'));
            requisitos++;
        }

        if (paterno === '') {
            muestraPopUpCampoNoVacio($('#paternoUpdate'));
            $('#paternoUpdate').css("border", "1px solid red");
        } else {
            $('#paternoUpdate').removeAttr('style');
            cierraPopUpChiquito($('#paternoUpdate'));
            requisitos++;
        }
        if (materno === '') {
            muestraPopUpCampoNoVacio($('#maternoUpdate'));
            $('#maternoUpdate').css("border", "1px solid red");
        } else {
            $('#maternoUpdate').removeAttr('style');
            cierraPopUpChiquito($('#maternoUpdate'));
            requisitos++;
        }
        if (telefono !== '') {
            $('#telefonoUpdate').removeAttr('style');
            cierraPopUpChiquito($('#lefonoteUpdate'));
            requisitos++;
        } else {
            $('#telefonoUpdate').css("border", "1px solid red");
            muestraPopUpCampoNumerico($('#telefonoUpdate'));
        }
        if (casa === '0' || casa === 0) {
            casa = '';
            muestraPopUpCampoNoVacio($('#casaUpdate'));
        } else {
            $('#casaUpdate').removeAttr('style');
            casa = $('#casaUpdate option:selected').text();
            cierraPopUpChiquito($('$casaUpdate'));
            requisitos++;
        }
        if (requisitos === 5) {
            $.ajax({
                type: 'POST',
                url: "editarEncargado/",
                dataType: 'text',
                data: $('#encargadoUpdateForm').serialize(),
                success: function(respuesta) {
                    var respuesta = respuesta.split('#');
                    if (respuesta[0] === 'Correcto...') {
                        $('#tituloPopUp').text(respuesta[0]);
                        $('#contenidoPopUp').text(respuesta[1]);
                        $('#popUpEncargadoUpdate').modal('hide');
                        $('#popUpRespuesta').modal('show');
                        $('.nuevoEncargado').removeClass();
                        $(trClick).attr('class', 'success nuevoEncargado');
                        $(trClick).html(
                                '<td class="id">' +
                                '<label class="nombre">' + nombre + '</label>&#32;' +
                                '<label class="paterno">' + paterno + '</label>&#32;' +
                                '<label class="materno">' + materno + '</label>' +
                                '<label class="ocultar">' + $('#idUpdate').val() + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="teelfono">' + telefono + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="casa">' + casa + '</label>' +
                                '</td>' +
                                '</td>' +
                                '<td>' +
                                '<div class="btn-group" role="group" aria-label="">' +
                                '<button class="btn btn-primary encargadoUpdateButton">Editar</button>' +
                                '<button class="btn btn-danger encargadoDeleteButton">Eliminar</button>' +
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

    $('#deleteEncargado').on('click', function() {
        $.ajax({
            type: 'POST',
            url: "eliminarEncargado/",
            dataType: 'text',
            data: $('#encargadoDeleteForm').serialize(),
            success: function(respuesta) {
                var respuesta = respuesta.split('#');
                if (respuesta[0] === 'Correcto...') {
                    $('#tituloPopUp').text(respuesta[0]);
                    $('#contenidoPopUp').text(respuesta[1]);
                    $('#popUpEncargadoDelete').modal('hide');
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


$('#encargadoTbody').on('click', '.encargadoUpdateButton', function() {
    rellenaPopUpUpdate(this);
});

$('#encargadoTbody').on('click', '.encargadoDeleteButton', function() {
    rellenaPopUpsDelete(this);
});

function rellenaPopUpsDelete(selector) {
    var tr = $($($($(selector).parent())).parent()).parent();
    var id = $(tr).find('td.id label.ocultar').text();
    var nombre = $(tr).find('td.id label.nombre').text();
    var paterno = $(tr).find('td.id label.paterno').text();
    var materno = $(tr).find('td.id label.materno').text();
    var telefono = $(tr).find('td label.telefono').text();
    var nombreTutor = $(tr).find('td label.nombreTutor').text();
    trClick = $(tr);

    $('#idDelete').val(id);
    $('#nombreDelete').text(nombre);
    $('#paternoDelete').text(paterno);
    $('#maternoDelete').text(materno);
    $('#edadDelete').text(edad);
    $('#nombreTutorDelete').text(nombreTutor);

    $('#popUpEncargadoDelete').modal('show');
}

function rellenaPopUpUpdate(selector) {
    var tr = $($($($(selector).parent())).parent()).parent();
    var id = $(tr).find('td.id label.ocultar').text();
    var nombre = $(tr).find('td.id label.nombre').text();
    var paterno = $(tr).find('td.id label.paterno').text();
    var materno = $(tr).find('td.id label.materno').text();
    var telefono = $(tr).find('td label.telefono').text();
    var casa = $(tr).find('td label.casa').text();
    var telefono = $(tr).find('td label.telefono').text();
    var correo = $(tr).find('td label.correo').text();
    var celular = $(tr).find('td label.celular').text();
    trClick = $(tr);

    $('#idUpdate').val(id);
    $('#nombreUpdate').val(nombre);
    $('#paternoUpdate').val(paterno);
    $('#maternoUpdate').val(materno);
    $('#edadUpdate').val(edad);
    $('#nombreTutorUpdate').val(nombreTutor);
    $('#correoUpdate').val(correo);
    $('#telefonoUpdate').val(telefono);
    $('#celularUpdate').val(celular);

    $('#popUpEncargadoUpdate').modal('show');
}
