<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach items="${alumnos}" var="a" varStatus="status">
    <tr valign="top">
        <td class="id">
            <label class="nombre">${a.nombre}</label>&#32;
            <label class="paterno">${a.paterno}</label>&#32;
            <label class="materno">${a.materno}</label>
            <label class="ocultar">${a.id}</label>
        </td>
        <td>
            <label class="edad">${a.edad}</label>
        </td>
        <td>
            <label class="nombreTutor">${a.nombreTutor}</label>
        </td>
        <td>
            <label class="correo">${a.correo}</label>
        </td>
        <td>
            <label class="telefono">${a.telefono}</label>
        </td>
        <td>
            <label class="celular">${a.celular}</label>
        </td>
        <td>
            <div class="btn-group" role="group" aria-label="">
                <button class="btn btn-primary alumnoUpdateButton">Editar</button>
                <button class="btn btn-danger alumnoDeleteButton">Eliminar</button>
                <button class="btn btn-info alumnoReporteIndividualButton">Reporte</button>
            </div>
        </td>
    </tr>
</c:forEach>
