<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach items="${eventos}" var="e" varStatus="status">
    <tr valign="top">
        <td class="id">
            <label class="nombre">${e.nombre}</label>
            <label class="ocultar">${e.id}</label>
        </td>
        <td>
            <label class="sala">${e.sala.nombre}</label>
        </td>
        <td>
            <label class="categoriaEvento">${e.categoriaEvento.nombre}</label>
        </td>
        <td>
            Del <label class="fechaInicio">${e.fechaInicio}</label>
            al <label class="fechaFin">${e.fechaFin}</label> 
        </td>
        <td>
            <label class="informacion">${e.informacion}</label>
        </td>
        <td>
            <label class="horario">${e.horario}</label>
        </td>
        <td>
            <label class="direccion">${e.direccion}</label>
        </td>
        <td>
            <label class="asistencia">${e.asistenciaEstimada}</label>
        </td>
        <td>
            <label class="maps">${e.linkMaps}</label>
        </td>
        <td>
            <div class="btn-group" role="group" aria-label="">
                <button class="btn btn-primary eventoUpdateButton">Editar</button>
                <button class="btn btn-danger eventoDeleteButton">Eliminar</button>
            </div>
        </td>
    </tr>
</c:forEach>
