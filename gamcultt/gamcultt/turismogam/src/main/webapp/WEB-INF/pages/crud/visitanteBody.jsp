<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach items="${visitante}" var="a" varStatus="status">
    <tr valign="top">
        <td class="id">
            <label class="nombre">${a.nombre}</label>&#32;
            <label class="paterno">${a.apellidoPaterno}</label>&#32;
            <label class="materno">${a.apellidoMaterno}</label>
            <label class="ocultar">${a.id}</label>
        </td>
        <td>
            <label class="correo">${a.correo}</label>
        </td>
        <td>
            <label class="telefono">${a.telefono}</label>
        </td>
        <td>
            <label class="edad">${a.edad}</label>
        </td>
        <td>
            <label class="sexo">${a.sexo}</label>
        </td>
        <td>
            <div class="btn-group" role="group" aria-label="">
                <button class="btn btn-primary visitanteUpdateButton">Editar</button>
                <button class="btn btn-danger visitanteDeleteButton">Eliminar</button>
            </div>
        </td>
    </tr>
</c:forEach>
