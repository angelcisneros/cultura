<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach items="${tallers}" var="t" varStatus="status">
    <tr valign="top">
        <td class="id">
            <label class="nombre">${t.nombre}</label>
            <label class="ocultar">${t.id}</label>
        </td>
        <td>
            <label class="categoria">${t.categoriaTaller.nombre}</label>
        </td>
        <td>
            <label class="costo">${t.costo}</label>
        </td>
        <td>
            <label class="horario">${t.horario}</label>
        </td>
        <td>
            <label class="descripcion">${t.descripcion}</label>
        </td>
        <td>
            <div class="btn-group" role="group" aria-label="">
                <button class="btn btn-primary tallerUpdateButton">Editar</button>
                <button class="btn btn-danger tallerDeleteButton">Eliminar</button>
                <button class="btn btn-warning galeriaButton">Galería</button>
                <button class="btn btn-info reporteIndividualTallerButton">Reporte</button>
            </div>
        </td>
    </tr>
</c:forEach>
