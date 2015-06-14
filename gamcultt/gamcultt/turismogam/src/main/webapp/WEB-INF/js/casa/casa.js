/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var trClick;
//MUESTRA LOS POPUPS CON SUS VALORES
$(document).on('ready', function() {

    //POPUP AGREGAR
    $('#addCasaButton').on('click', function() {
        limpiarInputs();
        $('#popUpCasaAdd').modal('show');
    });

    //POPUP EDITAR
    $('.casaUpdateButton').on('click', function() {
        limpiarInputs();
        rellenaPopUpUpdate(this);
    });

    //POPUP ELIMINAR
    $('.casaDeleteButton').on('click', function() {
        rellenaPopUpsDelete(this);
    });
});

//PETICIONES AJAX AL SERVIDOR
$(document).on('ready', function() {

    //AGREGAR EN BASE
    $('#addCasa').on('click', function() {
        $('#nombreAdd').removeAttr('style');
        var requisitos = 0;
        var nombre = $('#nombreAdd').val();
        var direccion = $('#direccionAdd').val();
        var telefono = $('#telefonoAdd').val();
        var horario = $('#horarioAdd').val();
        var informacion = $('#informacionAdd').val();
        var link = $('#liknMapsAdd').val();
        var esCentro = $('#centroSocialAdd').prop('checked');
        /*
         if (!validarNombre(nombre)) {
         muestraPopUpCampoNoVacio($('#nombreAdd'));
         $('#nombreAdd').css("border", "1px solid red");
         } else {
         $('#nombreAdd').removeAttr('style');
         cierraPopUpChiquito($('#nombreAdd'));
         requisitos++;
         }
         if (!validarDireccion(direccion)) {
         muestraPopUpCampoNoVacio($('#direccionAdd'));
         $('#direccionAdd').css("border", "1px solid red");
         } else {
         $('#direccionAdd').removeAttr('style');
         cierraPopUpChiquito($('#direccionAdd'));
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
         if (horario === '') {
         muestraPopUpCampoNoVacio($('#horarioAdd'));
         $('#horarioAdd').css("border", "1px solid red");
         } else {
         $('#horarioAdd').removeAttr('style');
         cierraPopUpChiquito($('#horarioAdd'));
         requisitos++;
         }
         if (!validarInformacion(informacion)) {
         muestraPopUpCampoNoVacio($('#informacionAdd'));
         $('#informacionAdd').css("border", "1px solid red");
         } else {
         $('#informacionAdd').removeAttr('style');
         cierraPopUpChiquito($('#informacionAdd'));
         requisitos++;
         }
         if (!validarLink(link)) {
         muestraPopUpCampoNoVacio($('#liknMapsAdd'));
         $('#liknMapsAdd').css("border", "1px solid red");
         } else {
         $('#liknMapsAdd').removeAttr('style');
         cierraPopUpChiquito($('#liknMapsAdd'));
         requisitos++;
         }
         if (requisitos === 6) {
         
         */
        if (true) {
            $.ajax({
                type: 'POST',
                url: "agregarCasa/",
                dataType: 'text',
                data: $('#casaAddForm').serialize(),
                success: function(respuesta) {
                    var respuesta = respuesta.split('#');
                    
                    if (respuesta[0] === 'Correcto...') {
                        $('#tituloImagenPopUp').text(respuesta[0]);
                        $('#contenidoImagenPopUp').text(respuesta[1]);
                        $('#popUpCasaAdd').modal('hide');
                        $('#imagenPopUp').modal('show');
                        $('.nuevoCasa').removeClass();
                        $("#casaTbody").prepend(
                                '<tr valign="top" class="nuevoCasa success">' +
                                '<td class="id">' +
                                '<label class="nombre">' + nombre + '</label>&#32;' +
                                '<label class="ocultar">' + respuesta[2] + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="direccion">' + direccion + '</label>&#32;' +
                                '</td>' +
                                '<td>' +
                                '<label class="telefono">' + telefono + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="horario">' + horario + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="informacion">' + informacion + '</label>' +
                                '</td> ' +
                                '<td>' +
                                '<label class="liknMaps">' + link + '</label>' +
                                '</td> ' +
                                '<td>' +
                                    '<label class="esCentro">' + esCentro + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<div class="btn-group" role="group" aria-label="">' +
                                '<button class="btn btn-primary casaUpdateButton">Editar</button>' +
                                '<button class="btn btn-danger casaDeleteButton">Eliminar</button>' +
                                '<button class="btn btn-warning casaImagenButton">Imagen</button>' +
                                '</div>' +
                                '</td>' +
                                '</tr>'
                                );
                        trClick = $("#casaTbody").children('tr:first');
                    } else {
                        if (respuesta[0] === 'Ups!...') {
                            $('#tituloPopUp').text(respuesta[0]);
                            $('#contenidoPopUp').text(respuesta[1]);
                            $('#popUpCasaAdd').modal('hide');
                            $('#popUpRespuesta').modal('show');
                        }
                    }
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    alert('error');
                }
            });
        }

    });

    //ACTUALIZAR BASE
    $('#updateCasa').on('click', function() {
        var requisitos = 0;
        var nombre = $('#nombreUpdate').val();
        var direccion = $('#direccionUpdate').val();
        var telefono = $('#telefonoUpdate').val();
        var horario = $('#horarioUpdate').val();
        var informacion = $('#informacionUpdate').val();
        var link = $('#liknMapsUpdate').val();
        var esCentro = $('#centroSocialUpdate');
/*
        if (!validarNombre(nombre)) {
            muestraPopUpCampoNoVacio($('#nombreUpdate'));
            $('#nombreUpdate').css("border", "1px solid red");
        } else {
            $('#nombreUpdate').removeAttr('style');
            cierraPopUpChiquito($('#nombreUpdate'));
            requisitos++;
        }
        if (!validarDireccion(direccion)) {
            muestraPopUpCampoNoVacio($('#direccionUpdate'));
            $('#direccionUpdate').css("border", "1px solid red");
        } else {
            $('#direccionUpdate').removeAttr('style');
            cierraPopUpChiquito($('#direccionUpdate'));
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
        if (horario === '') {
            muestraPopUpCampoNoVacio($('#horarioUpdate'));
            $('#horarioUpdate').css("border", "1px solid red");
        } else {
            $('#horarioUpdate').removeAttr('style');
            cierraPopUpChiquito($('#horarioUpdate'));
            requisitos++;
        }
        if (!validarInformacion(informacion)) {
            muestraPopUpCampoNoVacio($('#informacionUpdate'));
            $('#informacionUpdate').css("border", "1px solid red");
        } else {
            $('#informacionUpdate').removeAttr('style');
            cierraPopUpChiquito($('#informacionUpdate'));
            requisitos++;
        }
        if (!validarLink(link)) {
            muestraPopUpCampoNoVacio($('#liknMapsUpdate'));
            $('#liknMapsUpdate').css("border", "1px solid red");
        } else {
            $('#liknMapsUpdate').removeAttr('style');
            cierraPopUpChiquito($('#liknMapsUpdate'));
            requisitos++;
        }
        if (requisitos === 6) {
*/
        if(true){
            $.ajax({
                type: 'POST',
                url: "editarCasa/",
                dataType: 'text',
                data: $('#casaUpdateForm').serialize(),
                success: function(respuesta) {
                    var respuesta = respuesta.split('#');
                    if (respuesta[0] === 'Correcto...') {
                        $('#tituloPopUp').text(respuesta[0]);
                        $('#contenidoPopUp').text(respuesta[1]);
                        $('#popUpCasaUpdate').modal('hide');
                        $('#popUpRespuesta').modal('show');
                        $('.nuevoCasa').removeClass();
                        $(trClick).attr('class', 'success nuevoCasa');
                        $(trClick).html(
                                '<td class="id">' +
                                '<label class="nombre">' + nombre + '</label>' +
                                '<label class="ocultar">' + $('#idUpdate').val() + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="direccion">' + direccion + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="telefono">' + telefono + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="horario">' + horario + '</label>' +
                                '</td>    ' +
                                '<td>' +
                                '<label class="informacion">' + informacion + '</label>' +
                                '</td> ' +
                                '<td>' +
                                '<label class="liknMaps">' + link + '</label>' +
                                '</td> ' +
                                '<td>' +
                                    '<label class="esCentro">' + esCentro + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<div class="btn-group" role="group" aria-label="">' +
                                '<button class="btn btn-primary casaUpdateButton">Editar</button>' +
                                '<button class="btn btn-danger casaDeleteButton">Eliminar</button>' +
                                '<button class="btn btn-warning casaImagenButton">Imagen</button>' +
                                '</div>' +
                                '</td>'
                                );
                    }else {
                        if (respuesta[0] === 'Ups!...') {
                            $('#tituloPopUp').text(respuesta[0]);
                            $('#contenidoPopUp').text(respuesta[1]);
                            $('#popUpCasaAdd').modal('hide');
                            $('#popUpRespuesta').modal('show');
                        }
                    }
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    alert('error');
                }
            });
        }

    });

    $('#deleteCasa').on('click', function() {
        $.ajax({
            type: 'POST',
            url: "eliminarCasa/",
            dataType: 'text',
            data: $('#casaDeleteForm').serialize(),
            success: function(respuesta) {
                var respuesta = respuesta.split('#');
                if (respuesta[0] === 'Correcto...') {
                    $('#tituloPopUp').text(respuesta[0]);
                    $('#contenidoPopUp').text(respuesta[1]);
                    $('#popUpCasaDelete').modal('hide');
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


$('#casaTbody').on('click', '.casaUpdateButton', function() {
    rellenaPopUpUpdate(this);
});

$('#casaTbody').on('click', '.casaDeleteButton', function() {
    rellenaPopUpsDelete(this);
});

$('#subirImagen').on('click', function() {
    var url =' subirImagenCasa/' +  $(trClick).find('td.id label.ocultar').text();
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

$('#casaTbody').on('click', '.casaImagenButton', function() {
    var tr = $($($($(this).parent())).parent()).parent();
    trClick = $(tr);
    var id = $(tr).find('td.id label.ocultar').text();
    $('#tituloImagenPopUp').text('Imagen de Casa');
    $('#contenidoImagenPopUp').text('Cambiar Imagen');
    $('#imagen').load("verImagenCasa/" + id, function(response, status, xhr) {
        if (status === "error") {
            var msg = "Sorry but there was an error: ";
            $("#info").html(msg + xhr.status + " " + xhr.statusText);
        }
    });
    $('#imagenPopUp').modal('show');
});

function rellenaPopUpsDelete(selector) {
    var tr = $($($($(selector).parent())).parent()).parent();
    var id = $(tr).find('td.id label.ocultar').text();
    var nombre = $(tr).find('td.id label.nombre').text();
    var direccion = $(tr).find('td label.direccion').text();
    var telefono = $(tr).find('td label.telefono').text();
    var horario = $(tr).find('td label.horario').text();
    var informacion = $(tr).find('td label.informacion').text();
    trClick = $(tr);

    $('#idDelete').val(id);
    $('#nombreDelete').text(nombre);
    $('#direccionDelete').text(direccion);
    $('#telefonoDelete').text(telefono);
    $('#horarioDelete').text(horario);
    $('#informacionDelete').text(informacion);

    $('#popUpCasaDelete').modal('show');
}

function rellenaPopUpUpdate(selector) {
    var tr = $($($($(selector).parent())).parent()).parent();
    var id = $(tr).find('td.id label.ocultar').text();
    var nombre = $(tr).find('td.id label.nombre').text();
    var direccion = $(tr).find('td label.direccion').text();
    var telefono = $(tr).find('td label.telefono').text();
    var horario = $(tr).find('td label.horario').text();
    var informacion = $(tr).find('td label.informacion').text();
    var link = $(tr).find('td label.liknMaps').text();
    trClick = $(tr);

    $('#idUpdate').val(id);
    $('#nombreUpdate').val(nombre);
    $('#direccionUpdate').val(direccion);
    $('#telefonoUpdate').val(telefono);
    $('#horarioUpdate').val(horario);
    $('#informacionUpdate').val(informacion);
    $('#liknMapsUpdate').val(link);
    $('#popUpCasaUpdate').modal('show');
}

