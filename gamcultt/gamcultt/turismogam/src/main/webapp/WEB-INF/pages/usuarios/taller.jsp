<%-- 
    Document   : taller
    Created on : 4/06/2015, 01:08:19 AM
    Author     : Lap_christo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
              rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="css/principal/principal.css">
    </head>

    <body>
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
    <c:forEach items="${categoriasTaller}" var="ct" varStatus="status">
        <c:set var="par" value="section"/>
        <c:if test="${status % 2 eq 0}">
            <c:set var="par" value="section danger"/>
        </c:if>
        <div class="${par}">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 text-center">
                        <img src="C:\Users\Lap_christo\Desktop\imagenes gam\danza.jpg" class="img-responsive img-thumbnail">
                    </div>
                    <div class="col-md-6">
                        <h1 class="text-danger">${ct.nombre}</h1>
                        <p class="text-danger">${ct.descripcion}</p>
                        <a class="btn btn-danger">Ver mas ....</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="section section-danger">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h1 class="text-inverse">Artes Plásticas</h1>
                        <h3 class="text-inverse">A subtitle</h3>
                        <p class="text-inverse text-justify">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo
                            ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis
                            dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies
                            nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.
                            Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In
                            enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum
                            felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus
                            elementum semper nisi.</p>
                        <a class="btn btn-primary">Ver mas ....</a>
                    </div>
                    <div class="col-md-6">
                        <img src="C:\Users\Lap_christo\Desktop\imagenes gam\artes.jpg" class="center-block img-responsive img-thumbnail">
                    </div>
                </div>
            </div>
        </div>

    </c:forEach>
</body>

</html>