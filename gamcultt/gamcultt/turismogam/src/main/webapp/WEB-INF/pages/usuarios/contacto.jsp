<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/pages/usuarios/head.jsp"%>
<%@ include file="/WEB-INF/pages/usuarios/navbar.jsp"%>   
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
                <h1 class="text-danger">Contáctanos</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <form role="form">
                    <div class="form-group">
                        <label class="control-label" for="exampleInputEmail1">Nombre</label>
                        <input class="form-control" id="exampleInputEmail1" placeholder="Nombre"
                               type="email">
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="exampleInputPassword1">Correo Electrónico</label>
                        <input class="form-control" id="exampleInputEmail1"
                               placeholder="Enter email" type="email">
                    </div>
                    <button type="submit" class="btn btn-default">Enviar</button>
                </form>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label class="control-label" for="exampleInputPassword1">Comentario</label>
                    <input class="form-control" id="exampleInputEmail1"
                           placeholder="Comentario" type="email">
                </div>
            </div>
        </div>
    </div>
</div>
<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2 class="text-danger">Dirección</h2>
                <h2 class="text-center">Av. IPN esq. Otavalo 7 Lindavista</h2>
                <h2 class="text-danger">Teléfono</h2>
                <h2 class="text-center">55-52-41-97</h2>
                <h2 class="text-danger">Correo&nbsp;</h2>
                <h2 class="text-center">Juventudfuturama@gmail.com</h2>
            </div>
            <div class="col-md-6">
                <div class="responsive">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3761.193842445406!2d-99.11852479999999!3d19.4902896!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85d1f99978cf24a5%3A0x295b88b166640ddf!2sProlongaci%C3%B3n+Misterios%2C+Santa+Isabel+Tola%2C+07010+Ciudad+de+M%C3%A9xico%2C+D.F.!5e0!3m2!1ses!2smx!4v1433401593985" width="600" height="450" frameborder="0" style="border:0"></iframe>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="/WEB-INF/pages/usuarios/footer.jsp"%>