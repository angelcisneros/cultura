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
    $('#addVisitante').on('click', function() {
        $('#nombreAdd').removeAttr('style');
        var requisitos = 0;
        var nombre = $('#nombreAdd').val();
        var apellidoPaterno = $('#apellidoPaternoAdd').val();
        var apellidoMaterno = $('#apellidoMaternoAdd').val();
        var edad = $('#edadAdd').val();
        var sexo = $('#sexoAdd').val();
        var correo = $('#correoAdd').val();
        var telefono = $('#telefonoAdd').val();
        var informacion = $('#informacionAdd').val();

        if (!validarNombre(nombre)) {
            muestraPopUpCampoNoVacio($('#nombreAdd'));
            $('#nombreAdd').css("border", "1px solid red");
        } else {
            $('#nombreAdd').removeAttr('style');
            cierraPopUpChiquito($('#nombreAdd'));
            requisitos++;
        }

        if (!validarPaterno(apellidoPaterno)) {
            muestraPopUpCampoNoVacio($('#apellidoPaternoAdd'));
            $('#apellidoPaternoAdd').css("border", "1px solid red");
        } else {
            $('#apellidoPaternoAdd').removeAttr('style');
            cierraPopUpChiquito($('#apellidoPaternoAdd'));
            requisitos++;
        }
        if (!validarMaterno( apellidoMaterno )) {
            muestraPopUpCampoNoVacio($('#apellidoMaternoAdd'));
            $('#apellidoMaternoAdd').css("border", "1px solid red");
        } else {
            $('#apellidoMaternoAdd').removeAttr('style');
            cierraPopUpChiquito($('#apellidoMaternoAdd'));
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


        if (!validarNombre(sexo)) {
            muestraPopUpCampoNoVacio($('#sexoAdd'));
            $('#sexoAdd').css("border", "1px solid red");
        } else {
            $('#sexoAdd').removeAttr('style');
            cierraPopUpChiquito($('#sexoAdd'));
            requisitos++;
        }
        
        if (!validarEmail( correo ) ) {
            muestraPopUpCampoNoVacioConMensaje($('#correoAdd'));
            $('#correoAdd').css("border", "1px solid red");
        } else {
            $('#correoAdd').removeAttr('style');
            cierraPopUpChiquito($('#correoAdd'));
            requisitos++;
        }
        
        if (telefono=='') {
            muestraPopUpCampoNumericoTelefono($('#telefonoAdd'));
            $('#telefonoAdd').css("border", "1px solid red");
        } else {
            $('#telefonoAdd').removeAttr('style');
            cierraPopUpChiquito($('#telefonoAdd'));
            requisitos++;
        }
        // Tenemos que hacer la vallidacion de True o False
        

        if (requisitos === 7) {

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
                                '<label class="nombre">' + nombre + '</label>&#32;' +
                                '<label class="apellidoPaterno">' + apellidoPaterno + '</label>&#32;' +
                                '<label class="apellidoMaterno">' + apellidoMaterno + '</label>' +
                                '<label class="ocultar">' + respuesta[2] + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="edad">' + edad + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="sexo">' + sexo + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="correo">' + correo + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="telefono">' + telefono + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="información">' + informacion + '</label>' +
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
        var apellidoPaterno = $('#apellidoPaternoUpdate').val();
        var apellidoMaterno = $('#apellidoMaternoUpdate').val();
        var edad = $('#edadUpdate').val();
        var sexo = $('#sexoUpdate').val();
        var correo = $('#correoUpdate').val();
        var telefono = $('#telefonoUpdate').val();
        var informacion = $('#informacionUpdate').val();

        if (!validarNombre(nombre)) {
            muestraPopUpCampoNoVacio($('#nombreUpdate'));
            $('#nombreUpdate').css("border", "1px solid red");
        } else {
            $('#nombreUpdate').removeAttr('style');
            cierraPopUpChiquito($('#nombreUpdate'));
            requisitos++;
        }

        if (!validarPaterno( apellidoPaterno )) {
            muestraPopUpCampoNoVacio($('#apellidoPaternoUpdate'));
            $('#apellidoPaternoUpdate').css("border", "1px solid red");
        } else {
            $('#apellidoPaternoUpdate').removeAttr('style');
            cierraPopUpChiquito($('#apellidoPaternoUpdate'));
            requisitos++;
        }
        if (!validarMaterno( apellidoMaterno )) {
            muestraPopUpCampoNoVacio($('#apellidoMaternoUpdate'));
            $('#apellidoMaternoUpdate').css("border", "1px solid red");
        } else {
            $('#apellidoMaternoUpdate').removeAttr('style');
            cierraPopUpChiquito($('#apellidoMaternoUpdate'));
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
        if (!validarNombre(sexo)) {
            muestraPopUpCampoNoVacio($('#sexoUpdate'));
            $('#sexoUpdate').css("border", "1px solid red");
        } else {
            $('#sexoUpdate').removeAttr('style');
            cierraPopUpChiquito($('#sexoUpdate'));
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
         if (informacion==='' ) {
            muestraPopUpCampoNoVacio($('#informacionUpdate'));
            $('#informacionUpdate').css("border", "1px solid red");
        } else {
            $('#informacionUpdate').removeAttr('style');
            cierraPopUpChiquito($('#informacionUpdate'));
            requisitos++;
        }
        if (requisitos === 8) {
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
                                '<label class="nombre">' + nombre + '</label>&#32;' +
                                '<label class="apellidoPaterno">' + apellidoPaterno + '</label>&#32;' +
                                '<label class="apellidoMaterno">' + apellidoMaterno + '</label>' +
                                '<label class="ocultar">' + $('#idUpdate').val() + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="edad">' + edad + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="sexo">' + sexo + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="correo">' + correo + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="telefono">' + telefono + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="información">' + informacion + '</label>' +
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
    var apellidoPaterno = $(tr).find('td.id label.apellidoPaterno').text();
    var apellidoMaterno = $(tr).find('td.id label.apellidoMaterno').text();
    var edad = $(tr).find('td label.edad').text();
    var sexo = $(tr).find('td label.sexo').text();
    trClick = $(tr);

    $('#idDelete').val(id);
    $('#nombreDelete').text(nombre);
    $('#apellidoPaternoDelete').text(apellidoPaterno);
    $('#apellidoMaternoDelete').text(apellidoMaterno);
    $('#edadDelete').text(edad);
    $('#sexoDelete').text(sexo);

    $('#popUpVisitanteDelete').modal('show');
}

function rellenaPopUpUpdate(selector) {
    var tr = $($($($(selector).parent())).parent()).parent();
    var id = $(tr).find('td.id label.ocultar').text();
    var nombre = $(tr).find('td.id label.nombre').text();
    var apellidoPaterno = $(tr).find('td.id label.apellidoPaterno').text();
    var apellidoMaterno = $(tr).find('td.id label.apellidoMaterno').text();
    var edad = $(tr).find('td label.edad').text();
    var sexo = $(tr).find('td label.sexo').text();
    var telefono = $(tr).find('td label.telefono').text();
    var correo = $(tr).find('td label.correo').text();
    var informacion = $(tr).find('td label.informacion').text();
    trClick = $(tr);

    $('#idUpdate').val(id);
    $('#nombreUpdate').val(nombre);
    $('#apellidoPaternoUpdate').val(apellidoPaterno);
    $('#apellidoMaternoUpdate').val(apellidoMaterno);
    $('#edadUpdate').val(edad);
    $('#sexoUpdate').val(sexo);
    $('#correoUpdate').val(correo);
    $('#telefonoUpdate').val(telefono);
    $('#informacionUpdate').val(informacion);

    $('#popUpVisitanteUpdate').modal('show');
}


