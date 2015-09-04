<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/pages/usuarios/head.jsp"%>
<%@ include file="/WEB-INF/pages/usuarios/navbar.jsp"%>

<div class="container">
    <h1 class="text-danger">Bienvenido a Nuestras Casas de Cultura&nbsp;</h1>
</div>
<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="portfolio_main">
                                    <ul id="filters" class="clearfix">
                                        <li>
                                            <span class="filter" data-filter="Casa Centro">Ambos</span>
                                        </li>
                                        <li>
                                            <span class="filter active" data-filter="Casa">Casas de Cultura</span>
                                        </li>
                                        <li>
                                            <span class="filter" data-filter="Centro">Centro de Desarrollo</span>
                                        </li>
                                    </ul>
                                    <div id="portfoliolist">
                                    <c:forEach items="${casas}" var="c" varStatus="status">
                                        <c:choose>
                                            <c:when test="${c.esCentro eq 'true'}">
                                                
                                                    <div class="portfolio Centro" data-cat="Centro">
                                                        <div class="portfolio-wrapper">
                                                            <div class="fancyDemo">
                                                                <a rel="group" href="casasgeneral/${c.id}"><img src="${pageContext.request.contextPath}/casasimagen/${c.id}" class="img-responsive img-thumbnail"></a>
                                                            </div>
                                                            <div class="label">
                                                                <div class="label-text">
                                                                    <span class="text-category">${c.nombre}</span>
                                                                </div>>
                                                                <div class="label-bg"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                
                                            </c:when>
                                            <c:otherwise>
                                               
                                                <div class="portfolio Casa" data-cat="Casa">
                                                    <div class="portfolio-wrapper">
                                                        <div class="fancyDemo">
                                                            <a rel="group" href="casasgeneral/${c.id}"><img src="${pageContext.request.contextPath}/casasimagen/${c.id}" class="img-responsive img-thumbnail"></a>
                                                        </div>
                                                        <div class="label">
                                                            <div class="label-text">
                                                                <span class="text-category">${c.nombre}</span>
                                                            </div>
                                                            <div class="label-bg"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                                                                          
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                        </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section">
                    <div class="background-image"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="js/casascultural/jquery-1.10.2.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/casascultural/jquery.easing.min.js"></script>
<script type="text/javascript" src="js/casascultural/jquery.mixitup.min.js"></script>
<script type="text/javascript">
    $(function () {

        var filterList = {
            init: function () {

                // MixItUp plugin
                // http://mixitup.io
                $('#portfoliolist').mixitup({
                    targetSelector: '.portfolio',
                    filterSelector: '.filter',
                    effects: ['fade'],
                    easing: 'snap',
                    // call the hover effect
                    onMixEnd: filterList.hoverEffect()
                });

            },
            hoverEffect: function () {

                // Simple parallax effect
                $('#portfoliolist .portfolio').hover(function () {
                    $(this).find('.label').stop().animate({
                        bottom: 0
                    }, 200, 'easeOutQuad');
                    $(this).find('img').stop().animate({
                        top: -30
                    }, 500, 'easeOutQuad');
                }, function () {
                    $(this).find('.label').stop().animate({
                        bottom: -40
                    }, 200, 'easeInQuad');
                    $(this).find('img').stop().animate({
                        top: 0
                    }, 300, 'easeOutQuad');
                });

            }
        };

        // Run the show!
        filterList.init();

    });
</script>
<%@ include file="/WEB-INF/pages/usuarios/footer.jsp"%>
