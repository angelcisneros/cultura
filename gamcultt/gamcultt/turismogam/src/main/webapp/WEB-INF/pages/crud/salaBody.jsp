<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach items="${salas}" var="s" varStatus="status">
    <tr valign="top">
        <td class="id">
            <label class="nombre">${s.nombre}</label>
            <label class="ocultar">${s.id}</label>
        </td>
        <td>
            <label class="nombreCasa">${s.casa.nombre}</label>
        </td>
        <td>
            <label class="capacidad">${s.capacidad}</label>
        </td>
        <td>
            <div class="btn-group" role="group" aria-label="">
                <button class="btn btn-primary salaUpdateButton">Editar</button>
                <button class="btn btn-danger salaDeleteButton">Eliminar</button>
                <button class="btn btn-info salaReporteIndividualButton">Reporte</button>
            </div>
        </td>
    </tr>
</c:forEach>
