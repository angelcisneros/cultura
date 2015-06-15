<%@ include file="/WEB-INF/pages/templates/head.jsp"%>
<%@ include file="/WEB-INF/pages/templates/navbar.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="contenido" class="container-fluid">

    <!-- Nav tabs -->
    <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab"><h4>Slider</h4></a></li>
        <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab"><h4>Red Cultural</h4></a></li>
        <li role="presentation"><a href="#principal" aria-controls="principal" role="tab" data-toggle="tab"><h4>Casa Principal</h4></a></li>
    </ul>

    <!-- Tab panes -->
    <div class="tab-content">
        <!-- TALLERES -->
        <div role="tabpanel" class="tab-pane active" id="profile">
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10 ">
                    <h2><strong>Galería de Imágenes</strong></h2>
                    <button id="editarSliderPrincipal" type="button" class="btn btn-success pull-right">Aplicar Cambios</button>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-1 col-lg-1"></div>
                <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">
                    <div class="row">
                        <c:forEach items="${home.slider}" var="s" varStatus="status">
                            <div id="${s.href}" class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                <br><br>
                                <input id="seleccionadorImagen" type="file" class="filestyle form-control imagenesSlider" data-buttonText=" Seleccione" data-buttonName="btn-primary" data-iconName="glyphicon-folder-open" />
                                <hr>
                                <div>
                                    <img src="${pageContext.request.contextPath}/muestraImagenHome/${s.href}" class="img-responsive img-rounded">
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <div class="col-md-1 col-lg-1"></div>
            </div>
        </div>
        <div role="tabpanel" class="tab-pane" id="messages">
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10 ">
                    <h2><strong>Red Cultural</strong></h2>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-1 col-lg-1"></div>
                <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">

                    <div class="row">
                        <div class="form-group col-xs-12 col-sm-12 col-md-6 col-lg-6 ">
                            <form role="form" method="post" id="redForm">
                                <label>*Título:</label>
                                <input id="tituloRed" name="red" class="form-control" type="text" placeholder="Título" value="${home.red}"/>
                                <br>
                                <label>*Descripción:</label>
                                <textarea id="descripcionRed" name="descripcionRed" class="form-control" rows="11">${home.descripcionRed}</textarea>
                                <br>
                            </form>
                            <button id="editarRed" type="button" class="btn btn-success pull-right">Editar</button>
                        </div>
                        <div class="form-group col-xs-12 col-sm-12 col-md-6 col-lg-6 ">
                            <label>Seleccione una imagen:</label>
                            <input id="seleccionadorImagenRed" type="file" class="filestyle form-control" data-buttonText=" Seleccione" data-buttonName="btn-primary" data-iconName="glyphicon-folder-open" />
                            <button id="editarImagenRed" type="button" class="btn btn-success pull-right">Editar Imagen</button>
                            <br><hr>
                            <div id="imagen">
                                <img src="${pageContext.request.contextPath}/muestraImagenHome/${home.hrefRed}" class="img-responsive img-rounded">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-1 col-lg-1"></div>
            </div>
        </div>
        <div role="tabpanel" class="tab-pane" id="principal">
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10 ">
                    <h2><strong>Información Casa Principal</strong></h2>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-1 col-lg-1"></div>
                <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">
                    <div class="row">
                        <div class="form-group col-xs-12 col-sm-12 col-md-6 col-lg-6 ">
                            <form role="form" method="post" id="principalForm">
                                <label>*Título:</label>
                                <input id="tituloPrincipal" name="principal" class="form-control" type="text" placeholder="Título" value="${home.principal}"/>
                                <br>
                                <label>*Descripción:</label>
                                <textarea id="descripcionPrincipal" name="descripcionPrincipal" class="form-control" rows="11">${home.descripcionPrincipal}</textarea>
                                <br>
                            </form>
                            <button id="editarPrincipal" type="button" class="btn btn-success pull-right">Editar Información</button>
                        </div>
                        <div class="form-group col-xs-12 col-sm-12 col-md-6 col-lg-6 ">
                            <label>Seleccione una imagen:</label>
                            <input id="seleccionadorImagenPrincipal" type="file" class="filestyle form-control" data-buttonText=" Seleccione" data-buttonName="btn-primary" data-iconName="glyphicon-folder-open" />
                            <button id="editarImagenPrincipal" type="button" class="btn btn-success pull-right">Editar Imagen</button>
                            <br><hr>
                            <div id="imagen">
                                <img src="${pageContext.request.contextPath}/muestraImagenHome/${home.hrefPrincipal}" class="img-responsive img-rounded">
                            </div>
                        </div>
                    </div>
                    </form>
                </div>
                <div class="col-md-1 col-lg-1"></div>
            </div>
        </div>
    </div>
</div>
<%@ include file="/WEB-INF/pages/templates/popUpRespuesta.jsp"%>
<script src="../js/vista/vista.js" charset="UTF-8"></script>
<script src="../js/cargarImagenes.js" charset="UTF-8"></script>
<%@ include file="/WEB-INF/pages/templates/footer.jsp"%>