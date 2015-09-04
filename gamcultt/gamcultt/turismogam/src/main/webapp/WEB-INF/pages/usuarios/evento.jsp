<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/pages/usuarios/head.jsp"%>
<%@ include file="/WEB-INF/pages/usuarios/navbar.jsp"%>   
<div class="section"></div>
<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <hr>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-danger">Bienvenido a Nuestra Red Cultural</h1>
                <h2 class="text-danger">Nuestros Eventos del Mes &nbsp;
                    <br>
                </h2>
            </div>
        </div>
    </div>
</div>
<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div id="fullcarousel-example" data-interval="2000" class="carousel slide"
                     data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="images/baile.jpg">
                            <div class="carousel-caption">
                                <h2></h2>
                                <p></p>
                            </div>
                        </div>
                        <div class="item">
                            <img src="images/imagen4.jpg">
                            <div class="carousel-caption">
                                <h2></h2>
                                <p></p>
                            </div>
                        </div>
                        <div class="item">
                            <img src="images/fut3.jpg">
                            <div class="carousel-caption">
                                <h2></h2>
                                <p></p>
                            </div>
                        </div>
                    </div>
                    <a class="left carousel-control" href="#fullcarousel-example" data-slide="prev"><i class="icon-prev fa fa-angle-left"></i></a>
                    <a class="right carousel-control" href="#fullcarousel-example" data-slide="next"><i class="icon-next fa fa-angle-right"></i></a>
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
<%@ include file="/WEB-INF/pages/usuarios/footer.jsp"%>
