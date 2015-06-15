/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var trClick;
//MUESTRA LOS POPUPS CON SUS VALORES
$(document).on('ready', function() {

    //POPUP AGREGAR
    $('#addAlumnoButton').on('click', function() {
        limpiarInputs();
        $('#popUpAlumnoAdd').modal('show');
    });

    //POPUP EDITAR
    $('.alumnoUpdateButton').on('click', function() {
        limpiarInputs();
        rellenaPopUpUpdate(this);
    });

    //POPUP ELIMINAR
    $('.alumnoDeleteButton').on('click', function() {
        rellenaPopUpsDelete(this);
    });
});

//PETICIONES AJAX AL SERVIDOR
$(document).on('ready', function() {

    //AGREGAR EN BASE
    $('#addAlumno').on('click', function() {
        $('#nombreAdd').removeAttr('style');
        var requisitos = 0;
        var nombre = $('#nombreAdd').val();
        var paterno = $('#paternoAdd').val();
        var materno = $('#maternoAdd').val();
        var edad = $('#edadAdd').val();
        var nombreTutor = $('#nombreTutorAdd').val();
        var correo = $('#correoAdd').val();
        var telefono = $('#telefonoAdd').val();
        var celular = $('#celularAdd').val();

        if (!validarNombre(nombre)) {
            muestraPopUpCampoNoVacio($('#nombreAdd'));
            $('#nombreAdd').css("border", "1px solid red");
        } else {
            $('#nombreAdd').removeAttr('style');
            cierraPopUpChiquito($('#nombreAdd'));
            requisitos++;
        }

        if (!validarPaterno(paterno)) {
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

        if ($.isNumeric(edad)) {
            $('#edadAdd').removeAttr('style');
            cierraPopUpChiquito($('#edadAdd'));
            requisitos++;
        } else {
            $('#edadAdd').css("border", "1px solid red");
            muestraPopUpCampoNumerico($('#edadAdd'));
        }


        if (!validarNombre(nombre)) {
            muestraPopUpCampoNoVacio($('#nombreTutorAdd'));
            $('#nombreTutorAdd').css("border", "1px solid red");
        } else {
            $('#nombreTutorAdd').removeAttr('style');
            cierraPopUpChiquito($('#nombreTutorAdd'));
            requisitos++;
        }
        
        if (!validarEmail( correo ) ) {
            muestraPopUpCampoNoVacio($('#correoAdd'));
            $('#correoAdd').css("border", "1px solid red");
        } else {
            $('#correoAdd').removeAttr('style');
            cierraPopUpChiquito($('#correoAdd'));
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
        
        if (celular==='') {
            muestraPopUpCampoNoVacio($('#celularAdd'));
            $('#celularAdd').css("border", "1px solid red");
        } else {
            $('#celularAdd').removeAttr('style');
            cierraPopUpChiquito($('#celularAdd'));
            requisitos++;
        }

        if (requisitos === 8) {

            $.ajax({
                type: 'POST',
                url: "agregarAlumno/",
                dataType: 'text',
                data: $('#alumnoAddForm').serialize(),
                success: function(respuesta) {
                    var respuesta = respuesta.split('#');
                    if (respuesta[0] === 'Correcto...') {
                        $('#tituloPopUp').text(respuesta[0]);
                        $('#contenidoPopUp').text(respuesta[1]);
                        $('#popUpAlumnoAdd').modal('hide');
                        $('#popUpRespuesta').modal('show');
                        $('.nuevoAlumno').removeClass();
                        $("#alumnoTbody").prepend(
                                '<tr valign="top" class="nuevoAlumno success">' +
                                '<td class="id">' +
                                '<label class="nombre">' + nombre + '</label>&#32;' +
                                '<label class="paterno">' + paterno + '</label>&#32;' +
                                '<label class="materno">' + materno + '</label>' +
                                '<label class="ocultar">' + respuesta[2] + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="edad">' + edad + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="nombreTutor">' + nombreTutor + '</label>' +
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
                                '<button class="btn btn-primary alumnoUpdateButton">Editar</button>' +
                                '<button class="btn btn-danger alumnoDeleteButton">Eliminar</button>' +
                                '<button class="btn btn-info alumnoReporteIndividualButton">Reporte</button>' +
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
    $('#updateAlumno').on('click', function() {
        var requisitos = 0;
        var nombre = $('#nombreUpdate').val();
        var paterno = $('#paternoUpdate').val();
        var materno = $('#maternoUpdate').val();
        var edad = $('#edadUpdate').val();
        var nombreTutor = $('#nombreTutorUpdate').val();
        var correo = $('#correoUpdate').val();
        var telefono = $('#telefonoUpdate').val();
        var celular = $('#celularUpdate').val();

        if (!validarNombre(nombre)) {
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
        if ($.isNumeric(edad)) {
            $('#edadUpdate').removeAttr('style');
            cierraPopUpChiquito($('#edadUpdate'));
            requisitos++;
        } else {
            $('#edadUpdate').css("border", "1px solid red");
            muestraPopUpCampoNumerico($('#edadUpdate'));
        }
        if (!validarNombre(nombre)) {
            muestraPopUpCampoNoVacio($('#nombreTutorUpdate'));
            $('#nombreTutorUpdate').css("border", "1px solid red");
        } else {
            $('#nombreTutorUpdate').removeAttr('style');
            cierraPopUpChiquito($('#nombreTutorUpdate'));
            requisitos++;
        }
         if (!validarEmail(correo) ) {
            muestraPopUpCampoNoVacio($('#correoUpdate'));
            $('#correoUpdate').css("border", "1px solid red");
        } else {
            $('#correoUpdate').removeAttr('style');
            cierraPopUpChiquito($('#correoUpdate'));
            requisitos++;
        }
        if (telefono==='') {
            muestraPopUpCampoNoVacio($('#telefonoUpdate'));
            $('#telefonoUpdate').css("border", "1px solid red");
        } else {
            $('#telefonoUpdate').removeAttr('style');
            cierraPopUpChiquito($('#telefonoUpdate'));
            requisitos++;
        }
         if (celular==='' ) {
            muestraPopUpCampoNoVacio($('#celularUpdate'));
            $('#celularUpdate').css("border", "1px solid red");
        } else {
            $('#celularUpdate').removeAttr('style');
            cierraPopUpChiquito($('#celularUpdate'));
            requisitos++;
        }
        if (requisitos === 8) {
            $.ajax({
                type: 'POST',
                url: "editarAlumno/",
                dataType: 'text',
                data: $('#alumnoUpdateForm').serialize(),
                success: function(respuesta) {
                    var respuesta = respuesta.split('#');
                    if (respuesta[0] === 'Correcto...') {
                        $('#tituloPopUp').text(respuesta[0]);
                        $('#contenidoPopUp').text(respuesta[1]);
                        $('#popUpAlumnoUpdate').modal('hide');
                        $('#popUpRespuesta').modal('show');
                        $('.nuevoAlumno').removeClass();
                        $(trClick).attr('class', 'success nuevoAlumno');
                        $(trClick).html(
                                '<td class="id">' +
                                '<label class="nombre">' + nombre + '</label>&#32;' +
                                '<label class="paterno">' + paterno + '</label>&#32;' +
                                '<label class="materno">' + materno + '</label>' +
                                '<label class="ocultar">' + $('#idUpdate').val() + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="edad">' + edad + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="nombreTutor">' + nombreTutor + '</label>' +
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
                                '<button class="btn btn-primary alumnoUpdateButton">Editar</button>' +
                                '<button class="btn btn-danger alumnoDeleteButton">Eliminar</button>' +
                                '<button class="btn btn-info alumnoReporteIndividualButton">Reporte</button>' +
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

    $('#deleteAlumno').on('click', function() {
        $.ajax({
            type: 'POST',
            url: "eliminarAlumno/",
            dataType: 'text',
            data: $('#alumnoDeleteForm').serialize(),
            success: function(respuesta) {
                var respuesta = respuesta.split('#');
                if (respuesta[0] === 'Correcto...') {
                    $('#tituloPopUp').text(respuesta[0]);
                    $('#contenidoPopUp').text(respuesta[1]);
                    $('#popUpAlumnoDelete').modal('hide');
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


$('#alumnoTbody').on('click', '.alumnoUpdateButton', function() {
    rellenaPopUpUpdate(this);
});

$('#alumnoTbody').on('click', '.alumnoDeleteButton', function() {
    rellenaPopUpsDelete(this);
});

function rellenaPopUpsDelete(selector) {
    var tr = $($($($(selector).parent())).parent()).parent();
    var id = $(tr).find('td.id label.ocultar').text();
    var nombre = $(tr).find('td.id label.nombre').text();
    var paterno = $(tr).find('td.id label.paterno').text();
    var materno = $(tr).find('td.id label.materno').text();
    var edad = $(tr).find('td label.edad').text();
    var nombreTutor = $(tr).find('td label.nombreTutor').text();
    trClick = $(tr);

    $('#idDelete').val(id);
    $('#nombreDelete').text(nombre);
    $('#paternoDelete').text(paterno);
    $('#maternoDelete').text(materno);
    $('#edadDelete').text(edad);
    $('#nombreTutorDelete').text(nombreTutor);

    $('#popUpAlumnoDelete').modal('show');
}

function rellenaPopUpUpdate(selector) {
    var tr = $($($($(selector).parent())).parent()).parent();
    var id = $(tr).find('td.id label.ocultar').text();
    var nombre = $(tr).find('td.id label.nombre').text();
    var paterno = $(tr).find('td.id label.paterno').text();
    var materno = $(tr).find('td.id label.materno').text();
    var edad = $(tr).find('td label.edad').text();
    var nombreTutor = $(tr).find('td label.nombreTutor').text();
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

    $('#popUpAlumnoUpdate').modal('show');
}


