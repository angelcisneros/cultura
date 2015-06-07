
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h3 id="contenidoPopUp">Casas</h3>
<c:forEach items="${casasImparte}" var="ci" varStatus="status">
    <ul>
        <li><a href="">${ci.nombre}</a></li>
    </ul>
</c:forEach>