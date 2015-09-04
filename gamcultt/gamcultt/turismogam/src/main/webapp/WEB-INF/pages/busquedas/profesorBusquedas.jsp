<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="busquedasDivOculto" class="row ocultar">
    <%-- Por Edad --%>
    <div class="row" id="porEdadDiv">
        <div class="input-append date">
            <div class="input-group">
                <span class="input-group-addon" id="basic-addon1">Edad:</span>
                <input id="porEdadMin" class="form-control" type="text" placeholder="Edad" aria-describedby="basic-addon1"/>
            </div>
        </div>
        <button id="porEdadButton" type="button" class="btn btn-primary btn-large pull-right">Buscar</button>
    </div>

    <%-- Por Nombre --%>
    <div class="row" id="porNombreDiv">
        <div class="input-append date">
            <div class="input-group">
                <span class="input-group-addon" id="basic-addon1">Nombre(s):</span>
                <input id="porNombre" class="form-control" type="text" placeholder=" Nombre" aria-describedby="basic-addon1"/>
            </div>
            <div class="input-group">
                <span class="input-group-addon" id="basic-addon2">Paterno</span>
                <input id="porPaterno" class="form-control" type="text" placeholder="Paterno" aria-describedby="basic-addon2"/>
            </div>
            <div class="input-group">
                <span class="input-group-addon" id="basic-addon3">Materno:</span>
                <input id="porMaterno" class="form-control" type="text" placeholder="Materno" aria-describedby="basic-addon3"/>
            </div>
        </div>
        <button id="porNombreButton" type="button" class="btn btn-primary btn-large pull-right">Buscar</button>
    </div>

    <%-- Por Correo --%>
    <div class="row" id="porCorreoDiv">
        <div class="input-append date">
            <div class="input-group">
                <span class="input-group-addon" id="basic-addon1">Correo:</span>
                <input id="porCorreo" class="form-control" type="text" placeholder="Correo" aria-describedby="basic-addon1"/>
            </div>
        </div>
        <button id="porCorreoButton" type="button" class="btn btn-primary btn-large pull-right">Buscar</button>
    </div>
</div>