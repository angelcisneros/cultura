<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/pages/usuarios/head.jsp"%>
<%@ include file="/WEB-INF/pages/usuarios/navbar.jsp"%>
<div class="container" id="contenido">
    <div class="row">
        <div class="col-md-12">
            <div id="fullcarousel-example" data-interval="2500" class="carousel slide"
                 data-ride="carousel">
                <div class="carousel-inner">
                    <c:forEach items="${home.slider}" var="s" varStatus="status">
                        <div class="item">
                            <img src="${pageContext.request.contextPath}/sliderHome/${s.href}">
                            <div class="carousel-caption">
                                <h2>${s.alt}</h2>
                                <p>${s.descripcion}</p>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <a class="left carousel-control" href="#fullcarousel-example" data-slide="prev"><i class="icon-prev fa fa-angle-left"></i></a>
                <a class="right carousel-control" href="#fullcarousel-example" data-slide="next"><i class="icon-next fa fa-angle-right"></i></a>
            </div>
        </div>
    </div>
    <br>
    <div class="row">
        <div class="col-md-6">
            <h1>${home.red}</h1>
            <hr>
            <p>${home.descripcionRed}</p>
        </div>
        <div class="col-md-6">
            <div class="embed-responsive embed-responsive-16by9">
                <img src="${pageContext.request.contextPath}/sliderHome/${home.hrefRed}" class="img-responsive">
            </div>
        </div>
    </div>
    <br>
    <div class="row">
        <div class="col-md-6">
            <h1>${home.principal}</h1>
            <hr>
            <p>${home.descripcionPrincipal}</p>
        </div>
        <div class="col-md-6">
            <div class="embed-responsive embed-responsive-16by9">
                <img src="${pageContext.request.contextPath}/sliderHome/${home.hrefPrincipal}" class="img-responsive">
            </div>
        </div>
    </div>
    <script>
        $(document).on('ready', function() {
            $('div.item:first').addClass('active');
        });
    </script>
</div>
<%@ include file="/WEB-INF/pages/usuarios/footer.jsp"%>
