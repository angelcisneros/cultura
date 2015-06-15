/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var trClick;
//MUESTRA LOS POPUPS CON SUS VALORES
$(document).on('ready', function() {

    //POPUP AGREGAR
    $('#addEventoButton').on('click', function() {
        limpiarInputs();
        $('#popUpEventoAdd').modal('show');
    });

    //POPUP EDITAR
    $('.eventoUpdateButton').on('click', function() {
        limpiarInputs();
        rellenaPopUpUpdate(this);
    });

    //POPUP ELIMINAR
    $('.eventoDeleteButton').on('click', function() {
        rellenaPopUpsDelete(this);
    });
});

//PETICIONES AJAX AL SERVIDOR
$(document).on('ready', function() {

    //AGREGAR EN BASE
    $('#addEvento').on('click', function() {
        $('#nombreAdd').removeAttr('style');
        var requisitos = 0;
        var nombre = $('#nombreAdd').val();
        var sala = $('#salaAdd').val();
        var categoria = $('#categoriaAdd').val();
        var informacion = $('#informacionAdd').val();
        var direccion = $('#direccionAdd').val();
        var fecha_inicio = $('#fecha_inicioAdd').val();
        var fecha_fin = $('#fecha_finAdd').val();
        var asistencia_estimada = $('#asistencia_estimadaAdd').val();
        var horario = $('#horarioAdd').val();
        var link = $('#liknMapsAdd').val();
        

        if (!validarNombre( nombre )) {
            muestraPopUpCampoNoVacio($('#nombreAdd'));
            $('#nombreAdd').css("border", "1px solid red");
        } else {
            $('#nombreAdd').removeAttr('style');
            cierraPopUpChiquito($('#nombreAdd'));
            requisitos++;
        }

        if (!validarNombre( nombre )) {
            muestraPopUpCampoNoVacio($('#salaAdd'));
            $('#salaAdd').css("border", "1px solid red");
        } else {
            $('#salaAdd').removeAttr('style');
            cierraPopUpChiquito($('#salaAdd'));
            requisitos++;
        }
        if (!validarNombre( nombre )) {
            muestraPopUpCampoNoVacio($('#categoriaAdd'));
            $('#categoriaAdd').css("border", "1px solid red");
        } else {
            $('#categoriaAdd').removeAttr('style');
            cierraPopUpChiquito($('#categoriaAdd'));
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

        if (!validarInformacion(informacion)) {
            muestraPopUpCampoNoVacio($('#direccionAdd'));
            $('#direccionAdd').css("border", "1px solid red");
        } else {
            $('#direccionAdd').removeAttr('style');
            cierraPopUpChiquito($('#direccionAdd'));
            requisitos++;
        }
        

        requisitos += 5;
        if (requisitos === 10) {

            $.ajax({
                type: 'POST',
                url: "agregarEvento/",
                dataType: 'text',
                data: $('#eventoAddForm').serialize(),
                success: function(respuesta) {
                    var respuesta = respuesta.split('#');
                    if (respuesta[0] === 'Correcto...') {
                        $('#tituloPopUp').text(respuesta[0]);
                        $('#contenidoPopUp').text(respuesta[1]);
                        $('#popUpEventoAdd').modal('hide');
                        $('#popUpRespuesta').modal('show');
                        $('.nuevoEvento').removeClass();
                        $("#eventoTbody").prepend(
                                '<tr valign="top" class="nuevoEvento success">' +
                                '<td class="id">' +
                                '<label class="nombre">' + nombre + '</label>&#32;' +
                                '<label class="paterno">' + sala + '</label>&#32;' +
                                '<label class="materno">' + categoria + '</label>' +
                                '<label class="ocultar">' + respuesta[2] + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="edad">' + informacion + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="nombreTutor">' + direccion + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="correo">' + fecha_inicio + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="telefono">' + fecha_fin + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="celular">' + asistencia_estimada + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="celular">' + horario + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="celular">' + link + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<div class="btn-group" role="group" aria-label="">' +
                                '<button class="btn btn-primary eventoUpdateButton">Editar</button>' +
                                '<button class="btn btn-danger eventoDeleteButton">Eliminar</button>' +
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
    $('#updateEvento').on('click', function() {
        var requisitos = 0;
        var nombre = $('#nombreUpdate').val();
        var sala = $('#salaUpdate').val();
        var categoria = $('#categoriaUpdate').val();
        var informacion = $('#informacionUpdate').val();
        var direccion = $('#direccionUpdate').val();
        var fecha_inicio = $('#fecha_inicioUpdate').val();
        var fecha_fin = $('#fecha_finUpdate').val();
        var asistencia_estimada = $('#asistencia_estimadaUpdate').val();
        var horario = $('#horarioUpdate').val();
        var link = $('#liknMapsUpdate').val();

        if (!validarNombre( nombre )) {
            muestraPopUpCampoNoVacio($('#nombreUpdate'));
            $('#nombreUpdate').css("border", "1px solid red");
        } else {
            $('#nombreUpdate').removeAttr('style');
            cierraPopUpChiquito($('#nombreUpdate'));
            requisitos++;
        }

        if (!validarNombre( nombre )) {
            muestraPopUpCampoNoVacio($('#salaUpdate'));
            $('#salaUpdate').css("border", "1px solid red");
        } else {
            $('#salaUpdate').removeAttr('style');
            cierraPopUpChiquito($('#salaUpdate'));
            requisitos++;
        }
        if (!validarNombre( nombre )) {
            muestraPopUpCampoNoVacio($('#categoriaUpdate'));
            $('#categoriaUpdate').css("border", "1px solid red");
        } else {
            $('#categoriaUpdate').removeAttr('style');
            cierraPopUpChiquito($('#categoriaUpdate'));
            requisitos++;
        }
        
        //if ($.isNumeric(edad)) {
         //   $('#edadUpdate').removeAttr('style');
          //  cierraPopUpChiquito($('#edadUpdate'));
          //  requisitos++;
       // } else {
         //   $('#edadUpdate').css("border", "1px solid red");
         //   muestraPopUpCampoNumerico($('#edadUpdate'));
       // }
        if (!validarInformacion( informacion )) {
            muestraPopUpCampoNoVacio($('#informacionUpdate'));
            $('#informacionUpdate').css("border", "1px solid red");
        } else {
            $('#informacionUpdate').removeAttr('style');
            cierraPopUpChiquito($('#informacionUpdate'));
            requisitos++;
        }
        
        if (!validarInformacion( informacion )) {
            muestraPopUpCampoNoVacio($('#direccionUpdate'));
            $('#direccionUpdate').css("border", "1px solid red");
        } else {
            $('#direccionUpdate').removeAttr('style');
            cierraPopUpChiquito($('#direccionUpdate'));
            requisitos++;
        }
        requisitos += 5;
        if (requisitos === 10) {
            $.ajax({
                type: 'POST',
                url: "editarEvento/",
                dataType: 'text',
                data: $('#eventoUpdateForm').serialize(),
                success: function(respuesta) {
                    var respuesta = respuesta.split('#');
                    if (respuesta[0] === 'Correcto...') {
                        $('#tituloPopUp').text(respuesta[0]);
                        $('#contenidoPopUp').text(respuesta[1]);
                        $('#popUpEventoUpdate').modal('hide');
                        $('#popUpRespuesta').modal('show');
                        $('.nuevoEvento').removeClass();
                        $(trClick).attr('class', 'success nuevoEvento');
                        $(trClick).html(
                                '<td class="id">' +
                                '<label class="nombre">' + nombre + '</label>&#32;' +
                                '<label class="paterno">' + sala + '</label>&#32;' +
                                '<label class="materno">' + categoria + '</label>' +
                                '<label class="ocultar">' + $('#idUpdate').val() + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="edad">' + informacion + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="nombreTutor">' + direccion + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="correo">' + fecha_inicio + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="telefono">' + fecha_fin + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="celular">' + asistencia_estimada + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="celular">' + horario + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<label class="celular">' + link + '</label>' +
                                '</td>' +
                                '<td>' +
                                '<div class="btn-group" role="group" aria-label="">' +
                                '<button class="btn btn-primary eventoUpdateButton">Editar</button>' +
                                '<button class="btn btn-danger eventoDeleteButton">Eliminar</button>' +
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

    $('#deleteEvento').on('click', function() {
        $.ajax({
            type: 'POST',
            url: "eliminarEvento/",
            dataType: 'text',
            data: $('#eventoDeleteForm').serialize(),
            success: function(respuesta) {
                var respuesta = respuesta.split('#');
                if (respuesta[0] === 'Correcto...') {
                    $('#tituloPopUp').text(respuesta[0]);
                    $('#contenidoPopUp').text(respuesta[1]);
                    $('#popUpEventoDelete').modal('hide');
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


$('#eventoTbody').on('click', '.eventoUpdateButton', function() {
    rellenaPopUpUpdate(this);
});

$('#eventoTbody').on('click', '.eventoDeleteButton', function() {
    rellenaPopUpsDelete(this);
});

function rellenaPopUpsDelete(selector) {
    var tr = $($($($(selector).parent())).parent()).parent();
    var id = $(tr).find('td.id label.ocultar').text();
    var nombre = $(tr).find('td.id label.nombre').text();
    var sala = $(tr).find('td.id label.sala').text();
    var categoria = $(tr).find('td.id label.categoria').text();
    var informacion = $(tr).find('td label.informacion').text();
    var direccion = $(tr).find('td label.direccion').text();
    var fecha_inicio = $(tr).find('td label.fecha_inicio').text();
    var fecha_fin = $(tr).find('td label.fecha_fin').text();
    var asistencia_estimada = $(tr).find('td label.asistencia_estimada').text();
    var horario = $(tr).find('td label.horario').text();
    var link = $(tr).find('td label.liknMaps').text();
    trClick = $(tr);

    $('#idDelete').val(id);
    $('#nombreDelete').text(nombre);
    $('#salaDelete').text(sala);
    $('#categoriaDelete').text(categoria);
    $('#informacionDelete').text(informacion);
    $('#direccionDelete').text(direccion);
    $('#fecha_inicioDelete').text(fecha_inicio);
    $('#fecha_finDelete').text(fecha_fin);
    $('#asistencia_estimadaDelete').text(asistencia_estimada);
    $('#horarioDelete').text(horario);
    $('#liknMapsDelete').text(link);

    $('#popUpEventoDelete').modal('show');
}

function rellenaPopUpUpdate(selector) {
    var tr = $($($($(selector).parent())).parent()).parent();
    var id = $(tr).find('td.id label.ocultar').text();
    var nombre = $(tr).find('td.id label.nombre').text();
    var sala = $(tr).find('td.id label.sala').text();
    var categoria = $(tr).find('td.id label.categoria').text();
    var informacion = $(tr).find('td label.informacion').text();
    var direccion = $(tr).find('td label.direccion').text();
    var fecha_inicio = $(tr).find('td label.fecha_inicio').text();
    var fecha_fin = $(tr).find('td label.fecha_fin').text();
    var asistencia_estimada = $(tr).find('td label.asistencia_estimada').text();
    var horario = $(tr).find('td label.horario').text();
    var link = $(tr).find('td label.liknMaps').text();
    
    trClick = $(tr);

    $('#idUpdate').val(id);
    $('#nombreUpdate').val(nombre);
    $('#salaUpdate').val(sala);
    $('#categoriaUpdate').val(categoria);
    $('#informacionUpdate').val(informacion);
    $('#direccionUpdate').val(direccion);
    $('#fecha_inicioUpdate').val(fecha_inicio);
    $('#fecha_finUpdate').val(fecha_fin);
    $('#asistencia_estimadaUpdate').val(asistencia_estimada);
    $('#horarioUpdate').val(horario);
    $('#liknMapsUpdate').val(link);

    $('#popUpEventoUpdate').modal('show');
}



