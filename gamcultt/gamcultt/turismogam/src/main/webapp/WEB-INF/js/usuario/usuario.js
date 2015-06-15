/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var trClick;
//MUESTRA LOS POPUPS CON SUS VALORES
$(document).on('ready', function() {

    //POPUP AGREGAR
    $('#addUsuarioButton').on('click', function() {
        limpiarInputs();
        $('#popUpUsuarioAdd').modal('show');
    });

    //POPUP EDITAR
    $('.usuarioUpdateButton').on('click', function() {
        limpiarInputs();
        rellenaPopUpUpdate(this);
    });

    //POPUP ELIMINAR
    $('.usuarioDeleteButton').on('click', function() {
        rellenaPopUpsDelete(this);
    });

    //Radios
    $('#activadaUpdate').on('click', function() {
        if ($('#activadaUpdate').select()) {
            radios($('#activadaUpdate'), $('#desactivadaUpdate'));
        } else {
            radios($('#desactivadaUpdate'), $('#activadaUpdate'));
        }
    });
    $('#desactivadaUpdate').on('click', function() {
        if (!$('#desactivadaUpdate').select()) {
            radios($('#activadaUpdate'), $('#desactivadaUpdate'));
        } else {
            radios($('#desactivadaUpdate'), $('#activadaUpdate'));
        }
    });

    $('#activadaAdd').on('click', function() {
        if ($('#activadaAdd').select()) {
            radios($('#activadaAdd'), $('#desactivadaAdd'));
        } else {
            radios($('#desactivadaAdd'), $('#activadaAdd'));
        }
    });
    $('#desactivadaAdd').on('click', function() {
        if (!$('#desactivadaAdd').select()) {
            radios($('#activadaAdd'), $('#desactivadaAdd'));
        } else {
            radios($('#desactivadaAdd'), $('#activadaAdd'));
        }
    });


});

//PETICIONES AJAX AL SERVIDOR
$(document).on('ready', function() {

    //AGREGAR EN BASE
    $('#addUsuario').on('click', function() {
        $('#nombreAdd').removeAttr('style');
        var requisitos = 0;
        var nombre = $('#nombreAdd').val();
        var paterno = $('#paternoAdd').val();
        var materno = $('#maternoAdd').val();
        var telefono = $('#telefonoAdd').val();
        var casa = $('#casaAdd').val();
        var estado = $('#activadaAdd').prop('checked');
        var correo = $('#correoAdd').val();

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
        if (telefono==='') {
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
            cierraPopUpChiquito($('#casaAdd'));
            requisitos++;
        }
        if (!validarEmail(correo)) {
            muestraPopUpCampoNoVacio($('#correoAdd'));
            $('#correoAdd').css("border", "1px solid red");
        } else {
            $('#correoAdd').removeAttr('style');
            requisitos++;
        }
        if (estado === 'true' || estado === true) {
            estado = 'activada';
            //imagen = 'palomita.png';
        } else {
            estado = 'desactivada';
        }
        if (requisitos === 7) {

            $.ajax({
                type: 'POST',
                url: "agregarUsuario/",
                dataType: 'text',
                data: $('#usuarioAddForm').serialize(),
                success: function(respuesta) {
                    var respuesta = respuesta.split('#');
                    if (respuesta[0] === 'Correcto...') {
                        $('#tituloPopUp').text(respuesta[0]);
                        $('#contenidoPopUp').text(respuesta[1]);
                        $('#popUpUsuarioAdd').modal('hide');
                        $('#popUpRespuesta').modal('show');
                        $('.nuevoUsuario').removeClass();
                        $("#usuarioTbody").prepend(
                                '<tr valign="top" class="nuevoUsuario success">' +
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
                                '<button class="btn btn-primary usuarioUpdateButton">Editar</button>' +
                                '<button class="btn btn-danger usuarioDeleteButton">Eliminar</button>' +
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
    $('#updateUsuario').on('click', function() {
        var requisitos = 0;
        var nombre = $('#nombreUpdate').val();
        var paterno = $('#paternoUpdate').val();
        var materno = $('#maternoUpdate').val();
        var telefono = $('#telefonoUpdate').val();
        var casa = $('#casaUpdate').val();
        var estado = $('#activadaAdd').prop('checked');
        var correo = $('#correoAdd').val();

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
        if (telefono==='') {
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
        if (!validarEmail(correo)) {
            muestraPopUpCampoNoVacio($('#correoAdd'));
            $('#correoAdd').css("border", "1px solid red");
        } else {
            $('#correoAdd').removeAttr('style');
            requisitos++;
        }
        if (estado === 'true' || estado === true) {
            estado = 'activada';
            //imagen = 'palomita.png';
        } else {
            estado = 'desactivada';
        }
        if (requisitos === 7) {
            $.ajax({
                type: 'POST',
                url: "editarUsuario/",
                dataType: 'text',
                data: $('#usuarioUpdateForm').serialize(),
                success: function(respuesta) {
                    var respuesta = respuesta.split('#');
                    if (respuesta[0] === 'Correcto...') {
                        $('#tituloPopUp').text(respuesta[0]);
                        $('#contenidoPopUp').text(respuesta[1]);
                        $('#popUpUsuarioUpdate').modal('hide');
                        $('#popUpRespuesta').modal('show');
                        $('.nuevoUsuario').removeClass();
                        $(trClick).attr('class', 'success nuevoUsuario');
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
                                '<button class="btn btn-primary usuarioUpdateButton">Editar</button>' +
                                '<button class="btn btn-danger usuarioDeleteButton">Eliminar</button>' +
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

    $('#deleteUsuario').on('click', function() {
        $.ajax({
            type: 'POST',
            url: "eliminarUsuario/",
            dataType: 'text',
            data: $('#usuarioDeleteForm').serialize(),
            success: function(respuesta) {
                var respuesta = respuesta.split('#');
                if (respuesta[0] === 'Correcto...') {
                    $('#tituloPopUp').text(respuesta[0]);
                    $('#contenidoPopUp').text(respuesta[1]);
                    $('#popUpUsuarioDelete').modal('hide');
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


$('#usuarioTbody').on('click', '.usuarioUpdateButton', function() {
    rellenaPopUpUpdate(this);
});

$('#usuarioTbody').on('click', '.usuarioDeleteButton', function() {
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

    $('#popUpUsuarioDelete').modal('show');
}

function rellenaPopUpUpdate(selector) {
    var tr = $($($($(selector).parent())).parent()).parent();
    var id = $(tr).find('td.id label.ocultar').text();
    var nombre = $(tr).find('td.id label.nombre').text();
    var paterno = $(tr).find('td.id label.paterno').text();
    var materno = $(tr).find('td.id label.materno').text();
    var telefono = $(tr).find('td label.telefono').text();
    var casa = $(tr).find('td label.casa').text();
    trClick = $(tr);

    $('#idUpdate').val(id);
    $('#nombreUpdate').val(nombre);
    $('#paternoUpdate').val(paterno);
    $('#maternoUpdate').val(materno);
    $('#telefonoUpdate').val(telefono);
    setOption($('#casaUpdate').children('option'), casa);

    $('#popUpUsuarioUpdate').modal('show');
}
//CONTRO DE RADIOS
function radios(activar, desactivar) {
    $(activar).val('true');
    $(activar).attr('name', 'estado');
    $(activar).prop('checked', true);

    $(desactivar).val('false');
    $(desactivar).removeAttr('name');
    $(desactivar).prop('checked', false);
}

