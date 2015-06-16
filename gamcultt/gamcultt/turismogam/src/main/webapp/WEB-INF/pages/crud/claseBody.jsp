<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach items="${clases}" var="c" varStatus="status">
    <tr valign="top">
        <td class="id">
            <label class="nombreProfesor">${c.profesor.nombre}</label>&#32;
            <label class="paternoProfesor">${c.profesor.paterno}</label>&#32;
            <label class="maternoProfesor">${c.profesor.materno}</label>
            <label id="${c.profesor.id}" class="ocultar">${c.profesor.id}</label>
        </td>
        <td>
            <label>${c.sala.nombre}</label>
        </td>
        <td>
            <label>${c.taller.nombre}</label>
        </td>
        <td>
            <label>${c.status}</label>
        </td>
        <td>
            <div class="btn-group" role="group" aria-label="">
                <button class="btn btn-primary claseUpdateButton">Editar</button>
                <button class="btn btn-danger claseDeleteButton">Eliminar</button>
                <button class="btn btn-warning listaAlumnosButton">Alumnos</button>
                <button class="btn btn-info claseReporteIndividualButton">Reporte</button>
            </div>
        </td>
    </tr>
</c:forEach>
