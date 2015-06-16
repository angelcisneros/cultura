<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach items="${profesors}" var="p" varStatus="status">
    <tr valign="top">
        <td class="id">
            <label class="nombre">${p.nombre}</label>&#32;   
            <label class="paterno">${p.paterno}</label>&#32;
            <label class="materno">${p.materno}</label>
            <label id="${p.id}" class="ocultar">${p.id}</label>
        </td>
        <td>
            <label class="correo">${p.correo}</label>
        </td>
        <td>
            <label class="telefono">${p.telefono}</label>
        </td>
        <td>
            <label class="celular">${p.celular}</label>
        </td>
        <td>
            <div class="btn-group" role="group" aria-label="">
                <button class="btn btn-primary profesorUpdateButton">Editar</button>
                <button class="btn btn-danger profesorDeleteButton">Eliminar</button>
                <button class="btn btn-info profesorReporteIndividualButton">Reporte</button>
            </div>
        </td>
    </tr>
</c:forEach>
