

function muestraPopUpCampoNoVacio(selector) {
    $(selector).attr('data-toggle', 'popover');
    $(selector).attr('data-trigger', 'focus');
    $(selector).attr('title', 'Campo Requerido');
    $(selector).attr('data-content', 'Este campo no puede ser vácio');
    $(selector).popover('show');
}

function muestraPopUpCampolink(selector) {
    $(selector).attr('data-toggle', 'popover');
    $(selector).attr('data-trigger', 'focus');
    $(selector).attr('title', 'Campo Requerido');
    $(selector).attr('data-content', 'Este campo necesita un Link');
    $(selector).popover('show');
}

function muestraPopUpCampoTelefono(selector) {
    $(selector).attr('data-toggle', 'popover');
    $(selector).attr('data-trigger', 'focus');
    $(selector).attr('title', 'Campo Requerido');
    $(selector).attr('data-content', 'Ingrese su Teléfono XX-XX-XX-XX');
    $(selector).popover('show');
}
function muestraPopUpCampoCelular(selector) {
    $(selector).attr('data-toggle', 'popover');
    $(selector).attr('data-trigger', 'focus');
    $(selector).attr('title', 'Campo Requerido');
    $(selector).attr('data-content', 'Ingrese su Celular XXX-XX-XX-XX-XX');
    $(selector).popover('show');
}

function muestraPopUpCampoNoVacioConMensaje(selector, mensaje) {
    $(selector).attr('data-toggle', 'popover');
    $(selector).attr('data-trigger', 'focus');
    $(selector).attr('title', 'Campo Requerido');
    $(selector).attr('data-content', mensaje);
    $(selector).popover('show');
}

function muestraPopUpCampoNumerico(selector) {
    $(selector).attr('data-toggle', 'popover');
    $(selector).attr('data-trigger', 'focus');
    $(selector).attr('title', 'Campo Inválido');
    $(selector).attr('data-content', 'Ingrese un número');
    $(selector).popover('show');
}
function muestraPopUpCampoNumericoTelefono(selector) {
    $(selector).attr('data-toggle', 'popover');
    $(selector).attr('data-trigger', 'focus');
    $(selector).attr('title', 'Campo Inválido');
    $(selector).attr('data-content', 'Ingrese solo números ');
    $(selector).popover('show');
}

function muestraPopUpCampoNumericoCelular(selector) {
    $(selector).attr('data-toggle', 'popover');
    $(selector).attr('data-trigger', 'focus');
    $(selector).attr('title', 'Campo Inválido');
    $(selector).attr('data-content', 'Ingrese solo números ');
    $(selector).popover('show');
}
function cierraPopUpChiquito(selector) {
    $(selector).popover('hide');
    $(selector).removeAttr('data-toggle');
    $(selector).removeAttr('data-trigger');
    $(selector).removeAttr('title');
    $(selector).removeAttr('data-content');

}

function muestraPopUpExtencionNoValida(selector, mensaje) {
    $(selector).attr('data-toggle', 'popover');
    $(selector).attr('data-trigger', 'focus');
    $(selector).attr('title', 'Extención inválida');
    $(selector).attr('data-content', mensaje);
    $(selector).popover('show');
}

function muestraPopUpTituloAndMensaje(selector, mensaje, titulo) {
    $(selector).attr('data-toggle', 'popover');
    $(selector).attr('data-trigger', 'focus');
    $(selector).attr('title', titulo);
    $(selector).attr('data-content', mensaje);
    $(selector).attr('data-placement', 'top');
    $(selector).attr('delay', '{ "show": 2000, "hide": 100 }');
    $(selector).popover('show');
}

function validaRFC(rfcStr) {
    var strCorrecta;
    if (rfcStr.length === 12)
    {
        strCorrecta = ' ' + rfcStr;
    }
    else
    {
        strCorrecta = rfcStr;
    }
    var valid = '^(([A-Z]|[a-z]|\s){1})(([A-Z]|[a-z]){3})([0-9]{6})((([A-Z]|[a-z]|[0-9]){3}))';
    var validRfc = new RegExp(valid);
    var matchArray = strCorrecta.match(validRfc);
    if (matchArray === null) {
        //alert('Cadena:' + strCorrecta);
        return;
        return false;
    }
    else
    {
        //alert('Cadena:' + strCorrecta);
        return true;
    }
}

function setOption(options, texto) {
    $.each(options, function(indice, valor) {
        if ($(valor).text() === texto) {
            $(valor).prop('selected', true);
        }
    });
}

function esValidExtencion(name, ext1, ext2) {
    var len = name.length;
    var ext = name.substring(len - ext1.length, len);
    ext1 = ext1.toLowerCase();
    ext = ext.toLowerCase();
    if (ext === ext1) {
        return true;
    }
    ext = name.substring(len - ext2.length, len);
    ext2 = ext2.toLowerCase();
    ext = ext.toLowerCase();
    return ext === ext2;
}

function limpiarInputs() {
    $.each($('input'), function(indice, valor) {
        $(valor).val('');
        cierraPopUpChiquito($(valor));
        $(valor).removeAttr('style');
    });
    $.each($('select'), function(indice, valor) {
        $(valor).val('0');
        cierraPopUpChiquito($(valor));
        $(valor).removeAttr('style');
    });
}

function validarEmail(correo) {
    return /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/.test(correo);
}

function validarNombre(nombre) {
    return /^[a-zA-ZáéíóúÁÉÍÓÚñ\s]+$/.test(nombre);
}

function validarPaterno(paterno) {
    return /^[a-zA-ZáéíóúÁÉÍÓÚñ]+$/.test(paterno);
}

function validarMaterno(materno) {
    return /^[a-zA-ZáéíóúÁÉÍÓÚñ]+$/.test(materno);
}

function validarTelefono(telefono) {
    return /^[1-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2} $/.test(telefono);
}
function validarTelefono2(telefono) {
    return /^[1-9]{8}$/.test(telefono);
}

function validarCelular(celular) {
    return /^[0-9]{3}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2} $/.test(celular);
}
function validarCelular2(celular) {
    return /^[0-9]{10} $/.test(celular);
}
function validarInformacion(informacion) {
    return /^[a-zA-Zñáéíóú\s0-9]+$/.test(informacion);
}

function validarLink(link) {
    return /^(ht|f)tps?:\/\/\w+([\.\-\w]+)?\.([a-z]{2,4}|travel)(:\d{2,5})?(\/.*)?$/i.test(link);
}

function validarNombreTaller(taller) {
    return /^[a-zA-ZáéíóúÁÉÍÓÚ\sñ]+$/.test(taller);
}

function validarDescripcion(descripcion) {
    return /^[a-zA-ZáéíóúÁÉÍÓÚ\s.#&%ñ0-9,]+$/.test(descripcion);
}


function validaAndSubeImagen(input, url) {
    var file = $(input).val();

    if (file === '') {
        muestraPopUpCampoNoVacio($(input));
        $(input).css("border", "1px solid red");
    } else {
        $(input).removeAttr('style');
        cierraPopUpChiquito($(input));
        if (esValidExtencion(file, '.png', '.jpg')) {
            $(input).removeAttr('style');
            cierraPopUpChiquito($(input));
            return subirImagen($(input), url);
        } else {
            muestraPopUpExtencionNoValida($(input), 'Seleccione una imagen .png o .jpg');
            $(input).css("border", "1px solid red");
        }
    }
}

function subirImagen(selector, url) {
    var valor = $(selector);
    var data = new FormData();
    var estatus;
    data.append('file' + 1, valor[0].files[0]);
    $.ajax({
        url: url,
        data: data,
        async: false,
        dataType: 'text',
        processData: false,
        contentType: false,
        type: 'POST',
        success: function(state) {
            if (state === '1') {
                console.log('Si entre a sr opcaco');
                estatus = "1";
                var div = $(valor).siblings('div');
                var estilo = $(div).attr('style') + ' opacity: 0.4; filter: alpha(opacity=40);';
                $(div).attr('style', estilo);
            }
        }

    });
    return estatus;

}

$('.cambioCheck').on('change', function() {
    console.log('cambie');
    if ($(this).prop('checked')) {
        console.log('me selccionaron');
        $(this).prop('checked', true);
        $(this).attr('value', true);
    } else {
        console.log('me deseleccionaron');
        $(this).prop('checked', false);
        $(this).attr('value', false);
    }
});

function intercambiaElementos(elemento){
    var elemento1 = $('#busquedasDivPrincipal').children('div.row');
    $(elemento1).appendTo('#busquedasDivOculto');
    $(elemento).appendTo('#busquedasDivPrincipal');
}

function limpiarBusquedas(){
    var elemento1 = $('#busquedasDivPrincipal').children('div.row');
    $(elemento1).appendTo('#busquedasDivOculto');
}

function recargaTbody(selector, url, parametro){
    $(selector).load(url, parametro, function(response, status, xhr) {
        if (status === "error") {
            var msg = "Sorry but there was an error: ";
            console.log('no hice consulta: ' + msg);
            //$("#info").html(msg + xhr.status + " " + xhr.statusText);
        }
    });
}

//
//function descargaReportes(url) {
//    $.ajax({
//        url: url,
//        dataType: 'text',
//        type: 'GET',
//        success: function(state) {
//            
//        }
//
//    });
//}