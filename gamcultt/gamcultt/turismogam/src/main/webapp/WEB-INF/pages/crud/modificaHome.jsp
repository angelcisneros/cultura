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
                    <h2><strong>Categorias Talleres</strong></h2>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-10 form-inline">
                    <a id="addCategoriaTallerButton" class="btn btn-primary btn-lg" role="button">Agregar Nueva Categoria Taller</a>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-1 col-lg-1"></div>
                <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">
                    <div class="row table-responsive">
                        <table id="categoriaTallerTable" class="table table-striped table-bordered table-hover">
                            <thead id="categoriaTallerThead" class="text-center">
                                <tr>
                                    <th>Nombre Taller</th>
                                    <th>descripci�n</th>
                                    <th>Opciones</th>
                                </tr>
                            </thead>
                            <tbody id="categoriaTallerTbody">
                                <c:forEach items="${categoriasTaller}" var="ct" varStatus="status">
                                    <tr valign="top">
                                        <td class="id">
                                            <label class="nombreTaller">${ct.nombre}</label>
                                            <label id="${ct.id}" class="ocultar">${ct.id}</label>
                                        </td>
                                        <td>
                                            <label class="descripcionTaller">${ct.descripcion}</label>
                                        </td>
                                        <td>
                                            <div class="btn-group" role="group" aria-label="">
                                                <button class="btn btn-primary categoriaTallerUpdateButton">Editar</button>
                                                <button class="btn btn-danger categoriaTallerDeleteButton">Eliminar</button>
                                                <button class="btn btn-warning categoriaTallerImagenButton">Imagen</button>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col-md-1 col-lg-1"></div>
            </div>
        </div>
        <div role="tabpanel" class="tab-pane" id="messages">
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10 ">
                    <h2><strong>Categorias de Eventos</strong></h2>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-10 form-inline">
                    <a id="addCategoriaEventoButton" class="btn btn-primary btn-lg" role="button">Agregar Nueva Categoria Evento</a>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-1 col-lg-1"></div>
                <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">
                    <div class="row table-responsive">
                        <table id="categoriaEventoTable" class="table table-striped table-bordered table-hover">
                            <thead id="categoriaEventoThead" class="text-center">
                                <tr>
                                    <th>Nombre</th>
                                    <th>Opciones</th>
                                </tr>
                            </thead>
                            <tbody id="categoriaEventoTbody">
                                <c:forEach items="${categoriasEvento}" var="ce" varStatus="status">
                                    <tr valign="top">
                                        <td class="id">
                                            <label class="nombre">${ce.nombre}</label>
                                            <label id="${ce.id}" class="ocultar">${ce.id}</label>
                                        </td>
                                        <td>
                                            <div class="btn-group" role="group" aria-label="">
                                                <button class="btn btn-primary categoriaEventoUpdateButton">Editar</button>
                                                <button class="btn btn-danger categoriaEventoDeleteButton">Eliminar</button>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col-md-1 col-lg-1"></div>
            </div>
        </div>
        <div role="tabpanel" class="tab-pane" id="principal">
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10 ">
                    <h2><strong>Informaci�n Casa Principal</strong></h2>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-1 col-lg-1"></div>
                <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">
                    <form role="form" method="post" id="contratoAddForm">
                        <div class="row">
                            <div class="form-group col-xs-12 col-sm-12 col-md-6 col-lg-6 ">
                                <label>*T�tulo:</label>
                                <input id="titulo" name="principal" class="form-control" type="date" placeholder="Ingrese la Fecha de Creaci�n"/>
                                <label>*Descripci�n:</label>
                                <textarea id="descripcion" name="descripcionPrincipal" class="form-control"/>
                            </div>
                            <div class="form-group col-xs-12 col-sm-12 col-md-6 col-lg-6 ">

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
<%@ include file="/WEB-INF/pages/templates/footer.jsp"%>