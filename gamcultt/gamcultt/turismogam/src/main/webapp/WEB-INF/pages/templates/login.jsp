<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
        
        <link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="../css/pingendo-login.css">
        <link rel="stylesheet" href="../css/signin.css">
    </head>

    <body>
        <div class="cover">
            <div class="navbar navbar-default navbar-inverse">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-ex-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#"><span>Brand</span></a>
                    </div>
                    <div class="collapse navbar-collapse" id="navbar-ex-collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active">
                                <a href="#">Home</a>
                            </li>
                            <li>
                                <a href="#">Contacts</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="cover-image" style="background-image : url('https://unsplash.imgix.net/reserve/N13RIliTTASBbuYyszgq_P9020914-54.jpg?q=75&amp;fm=jpg&amp;s=9c914a5c9288fc66860fde2c45521ff4')"></div>
            <div class="container">
                <div class="panel panel-quadrum inicio animated bounceInDown">
                    <div class="panel-body">
                        <h1 class="text-inverse text-center font-pacific">¡Bienvenido!</h1>
                        <form class="form-signin" role="form" action="inicio" method="post">
                            <input name="correo" class="form-control" placeholder="Correo" required autofocus /> 
                            <input name="password" type="password" class="form-control" placeholder="Password" required /> 
                            <label class="checkbox text-center"> 
                                <input type="checkbox" value="remember-me">
                                Recordar Contraseña
                            </label>
                            <button class="btn btn-primary btn-block btn-lg" type="submit">Iniciar Sesión</button>
                        </form>
                    </div>
                    <div class="panel-footer panel-quadrum text-center">
                        <a href="recuperarContrasenia">Olvide mi contraseña</a>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>