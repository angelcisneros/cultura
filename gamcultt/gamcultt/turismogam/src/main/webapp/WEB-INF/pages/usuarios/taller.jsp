<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/pages/usuarios/head.jsp"%>
<%@ include file="/WEB-INF/pages/usuarios/navbar.jsp"%>   
<c:forEach items="${categoriasTaller}" var="ct" varStatus="status">
    <c:choose>
        <c:when test="${status.count % 2 eq 0}">
            <div class="section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 text-center">
                            <img src="${pageContext.request.contextPath}/categoriaTaller/1" class="img-responsive img-thumbnail">
                        </div>
                        <div class="col-md-6">
                            <h1 class="text-danger">${ct.nombre}</h1>
                            <p class="text-danger">${ct.descripcion}</p>
                            <a class="btn btn-danger verMas" alt="${ct.id}">Ver mas ....</a>
                        </div>
                    </div>
                </div>
            </div>
        </c:when>
        <c:otherwise>
            <div class="section section-danger">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <h1 class="text-inverse">${ct.nombre}</h1>
                            <p class="text-inverse text-justify">${ct.descripcion}</p>
                            <a class="btn btn-danger verMas" alt="${ct.id}">Ver mas ....</a>
                        </div>
                        <div class="col-md-6">
                            <img src="${pageContext.request.contextPath}/categoriaTaller/1" class="img-responsive img-thumbnail">
                        </div>
                    </div>
                </div>
            </div>
        </c:otherwise>
    </c:choose>
</c:forEach>
<!-- POPUP DIRIGE -->
<div class="modal fade" id="popUpMandaCasas" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header amarillo">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h2 class="modal-title"><strong id="tituloPopUp">Casas donde se imparte</strong></h2>
            </div>
            <div class="modal-body" id="contenidoCasasImpartenTaller">
                <%@ include file="/WEB-INF/pages/usuarios/casasImpartenTaller.jsp"%>
            </div>
            <div class="modal-footer amarillo">
                <button type="button" class="btn btn-primary" data-dismiss="modal">Aceptar</button>
            </div>
        </div> <!-- /.modal-content -->
    </div> <!-- /.modal-dialog -->
</div>           
<script src="js/main.js" charset="UTF-8"></script>
<script src="js/vistasGenerales/vistasGenerales.js"></script>

<%@ include file="/WEB-INF/pages/usuarios/footer.jsp"%> 