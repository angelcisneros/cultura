<%-- 
    Doc/* global FB */

/* global FB */

/* global FB */

ument   : pruebachristo
    Created on : 9/06/2015, 11:07:31 PM
    Author     : Lap_christo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Mis pruebas de Facebook</h1>
        /* Esta es la Autentificacion de Facebook */
        <script>
            window.fbAsyncInit = function () {
                FB.init({
                    appId: '361152520750261',
                    xfbml: true,
                    version: 'v2.3'
                });
            };

            (function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) {
                    return;
                }
                js = d.createElement(s);
                js.id = id;
                js.src = "//connect.facebook.net/en_US/sdk.js";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));
            /*  Esta Aqui Autentificacion de Facebook*/
            < div
                    class = "fb-like"
                    data - share = "true"
                    data - width = "450"
                    data - show - faces = "true" >
                    < /div>

                    FB.login(function () {
                        FB.api('/me/feed', 'post', {message: 'Hello, world!'});
                    }, {scope: 'publish_actions'});
        </script> 
        Por Favor da Megusta ala Pagina 
        
        /*  Esta Aqui Boton de Megusta y Compartir de Facebook*/


        <div id="fb-root"></div>
        <script>(function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id))
                    return;
                js = d.createElement(s);
                js.id = id;
                js.src = "//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.3&appId=361152520750261";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));</script>

        <div class="fb-like" data-href="https://developers.facebook.com/docs/plugins/" data-layout="standard" data-action="like" data-show-faces="true" data-share="true"></div>
        
        /*  Esta Aqui Boton de Megusta y Compartir de Facebook*/

    </body>
</html>
