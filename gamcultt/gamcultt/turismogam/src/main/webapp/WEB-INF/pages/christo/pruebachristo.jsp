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

        <script>
            FB.getLoginStatus(function (response) {
                if (response.status === 'connected') {
                    console.log('Logged in.');
                }
                else {
                    FB.login();
                }

            });
        </script>
        <div class="fb-like" data-href="https://www.facebook.com/profile.php?id=100009414354120&amp;fref=ts" data-width="1200" data-layout="standard" data-action="like" data-show-faces="true" data-share="true"></div>



        <%-- <script>
         // Only works after `FB.init` is called
             function myFacebookLogin() {
                 FB.login(function () {
                 }, {scope: 'publish_actions'});
             }
          </script>
         <button onclick="myFacebookLogin()">Login with Facebook</button>
         <script>
             FB.login(function () {
                 // Note: The call will only work if you accept the permission request
                 FB.api('/me/feed', 'post', {message: 'Hello, world!'});
             }, {scope: 'publish_actions'});
         </script>
         <button onclick="function()">Publicar</button>--%>


        <script>
            // Only works after `FB.init` is called
            function myFacebookLogin() {
                FB.login(function () {
                }, {scope: 'publish_actions'});
            }
        </script>
        <button onclick="myFacebookLogin()">Login with Facebook</button>

        <a href="#" id="publicar-btn">Publicar  Facebook</a>

        <script>
            var nombre = "Taller"
            var descripcion = "Explicacion de Taller"
            var horario = "horario de  10:00am"
            var fecha = "27-89-9999"
            document.getElementById('publicar-btn').onclick = function () {
                FB.login(function (response) {
                }, {scope: 'publish_actions'});
                FB.login(function () {
                    FB.api('/me/feed', 'post', {message: "Nombre de Nuestro taller" + nombre + "sobre que trata:" + descripcion + "Horario:" + horario + "Fecha" + fecha});
                }, {scope: 'publish_actions'});
            }
        </script> 

        Prueba de Imagenes 

        GET graph.facebook.com
        /{node-id}?
        fields=<first-level>{<second-level>}
                
                
            <script>
                var publish = function () {
                    fb.publish({
                        message: "Probando IMAGEN",
                        picture: "C:\Users\Lap_christo\Desktop\imagenes gam\190.png",
                        link: "",
                        name: "Simple Facebook Graph Javascript SDK",
                        description: "Facebook Graph es una nueva forma de conectar tu web Facebook"
                    }, function (published) {
                        if (published)
                            alert("SUCCEES ");
                        else
                            alert("MAL OTRO INTENTO ");
                    });
                }

            </script>

            </body>
            </html>
