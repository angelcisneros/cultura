<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="busquedasDivOculto" class="row ocultar">
    <%-- Por Taller --%>
    <div class="row" id="porNombreDiv">
        <div class="input-append date">
            
            
            
            <div class="input-group">
                <span class="input-group-addon" id="basic-addon1">Nombre(s):</span>
                <input id="porNombre" class="form-control" type="text" placeholder="Nombre Casa " aria-describedby="basic-addon1"/>
            </div>
            
            
            
            
        </div>
        <button id="porNombreButton" type="button" class="btn btn-primary btn-large pull-right">Buscar</button>
    </div>

   <div class="row" id="poresCentroDiv">
        <div class="input-append date">
            <div class="input-group">
                <span class="input-group-addon" id="basic-addon1">Talleres:</span>
                <select id="poresCentroId"  class="form-control" aria-describedby="basic-addon1">
                    <option label="Seleccione..." value="0"></option>
                    <c:forEach items="${casas}" var="c" varStatus="status">
                        <option label="${c.esCentro}" value="${c.id}">${c.esCentro}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <button id="porTallerButton" type="button" class="btn btn-primary btn-large pull-right">Buscar</button>
    </div>

    <%-- Por Profesor
    <div class="row" id="porProfesorDiv">
        <div class="input-append date">
           <div class="input-group">
                <span class="input-group-addon" id="basic-addon1">Profesores:</span>
                <select id="porProfesorId"  class="form-control" aria-describedby="basic-addon1">
                    <option label="Seleccione..." value="0"></option>
                    <c:forEach items="${profesores}" var="c" varStatus="status">
                        <option label="${c.nombre}" value="${c.id}">${c.nombre}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <button id="porProfesorButton" type="button" class="btn btn-primary btn-large pull-right">Buscar</button>
    </div>--%>
</div>