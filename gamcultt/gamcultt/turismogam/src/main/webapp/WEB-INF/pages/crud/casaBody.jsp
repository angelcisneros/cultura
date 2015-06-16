<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach items="${casas}" var="c" varStatus="status">
    <tr valign="top">
        <td class="id">
            <label class="nombre">${c.nombre}</label>&#32;
            <label class="ocultar">${c.id}</label>
        </td>
        <td>
            <label class="direccion">${c.direccion}</label>&#32;
        </td>
        <td>
            <label class="telefono">${c.telefono}</label>
        </td>
        <td>
            <label class="horario">${c.horario}</label>
        </td>                                    
        <td>
            <label class="informacion">${c.informacion}</label>
        </td>                                    
        <td>
            <label class="liknMaps">${c.liknMaps}</label>
        </td>
        <td>
            <label class="esCentro">${c.esCentro}</label>
        </td>
        <td>
            <div class="btn-group" role="group" aria-label="">
                <button class="btn btn-primary casaUpdateButton">Editar</button>
                <button class="btn btn-danger casaDeleteButton">Eliminar</button>
                <button class="btn btn-warning casaImagenButton">Imagen</button>
                <button class="btn btn-info reporteIndividualCasa">Reporte</button>
            </div>
        </td>
    </tr>
</c:forEach>
