<%@ include file="/WEB-INF/pages/templates/head.jsp"%>
<%@ include file="/WEB-INF/pages/templates/navbar.jsp"%>

<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="jumbotron">
                    <h1>!Bienvenido!</h1>
                    <h2>${usuario.nombre} ${usuario.paterno} ${usuario.materno  } </h2>
                    <p>Este es su perfil para la administración de eventos.</p>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/pages/templates/footer.jsp"%>