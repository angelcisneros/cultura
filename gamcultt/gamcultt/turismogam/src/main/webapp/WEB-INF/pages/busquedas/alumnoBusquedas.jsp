<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div>
    <%-- Por Clase --%>
    <div class="row ocultar" id="porClaseDiv">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-10">
            <hr>
            <div class="input-append date">
                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon1">Clases:</span>
                    <select id="porClaseId"  class="form-control" aria-describedby="basic-addon1">
                        <option label="Seleccione..." value="0"></option>
                        <c:forEach items="${clases}" var="c" varStatus="status">
                            <option label="${c.nombre}" value="${c.id}">${c.nombre}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <button id="porClase" type="button" class="btn btn-primary btn-large">Buscar</button>
            <hr>
        </div>
    </div>

    <%-- Por Edad --%>
    <div class="row ocultar" id="porEdadDiv">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-10">
            <hr>
            <div class="input-append date">
                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon1">Edad:</span>
                    <input id="edadMin" class="form-control" type="text" placeholder="Edad Mínima" aria-describedby="basic-addon1"/>
                </div>
                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon2">Edad:</span>
                    <input id="edadMax" class="form-control" type="text" placeholder="Edad Máxima" aria-describedby="basic-addon2"/>
                </div>
            </div>
            <button id="porEdad" type="button" class="btn btn-primary btn-large">Buscar</button>
            <hr>
        </div>
    </div>
</div>