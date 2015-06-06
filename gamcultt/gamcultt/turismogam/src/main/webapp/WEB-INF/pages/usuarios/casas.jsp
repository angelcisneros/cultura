<%-- 
    Document   : newjsp
    Created on : 4/06/2015, 12:10:41 AM
    Author     : Lap_christo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <script src="js/casascultural/jquery-1.10.2.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="js/casascultural/jquery.easing.min.js"></script>
        <script type="text/javascript" src="js/casascultural/jquery.mixitup.min.js"></script>
        <script type="text/javascript">
            $(function() {
            
                            var filterList = {
            
                                init : function() {
            
                                    // MixItUp plugin
                                    // http://mixitup.io
                                    $('#portfoliolist').mixitup({
                                        targetSelector : '.portfolio',
                                        filterSelector : '.filter',
                                        effects : ['fade'],
                                        easing : 'snap',
                                        // call the hover effect
                                        onMixEnd : filterList.hoverEffect()
                                    });
            
                                },
            
                                hoverEffect : function() {
            
                                    // Simple parallax effect
                                    $('#portfoliolist .portfolio').hover(function() {
                                        $(this).find('.label').stop().animate({
                                            bottom : 0
                                        }, 200, 'easeOutQuad');
                                        $(this).find('img').stop().animate({
                                            top : -30
                                        }, 500, 'easeOutQuad');
                                    }, function() {
                                        $(this).find('.label').stop().animate({
                                            bottom : -40
                                        }, 200, 'easeInQuad');
                                        $(this).find('img').stop().animate({
                                            top : 0
                                        }, 300, 'easeOutQuad');
                                    });
            
                                }
                            };
            
                            // Run the show!
                            filterList.init();
            
                        });
        </script>
    </head>
    
    <body>
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
                        <h1 class="text-danger">Bienvenido a Nuestras Casas de Cultura&nbsp;</h1>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisici elit,
                            <br>sed eiusmod tempor incidunt ut labore et dolore magna aliqua.
                            <br>Ut enim ad minim veniam, quis nostrud</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2 contenteditable="true" class="text-danger">Seleccione &nbsp;la Casa de Cultura o Centro de Desarrollo &nbsp;</h2>
                    </div>
                </div>
            </div>
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
                <div class="portfolio Casa" data-cat="Casa">
                    <div class="portfolio-wrapper">
                        <div class="fancyDemo">
                            <a rel="group" href="single.html"><img src="http://pingendo.github.io/pingendo-bootstrap/assets/user_placeholder.png" alt="" class="img-responsive"></a>
                        </div>
                        <div class="label">
                            <div class="label-text">
                                <span class="text-category">Ali Chumacero</span>
                            </div>
                            <div class="label-bg"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio Centro" data-cat="Centro">
                    <div class="portfolio-wrapper">
                        <div class="fancyDemo">
                            <a rel="group" href="single.html"><img src="file:///C:/Users/Lap_christo/Desktop/imagenes gam//NERVO.JPG" alt="" class="img-responsive"></a>
                        </div>
                        <div class="label">
                            <div class="label-text">
                                <span class="text-category">Amado Nervo</span>
                            </div>
                            <div class="label-bg"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio Centro" data-cat="Centro">
                    <div class="portfolio-wrapper">
                        <div class="fancyDemo">
                            <a rel="group" href="single.html"><img src="file:///C:/Users/Lap_christo/Desktop/imagenes gam//ARON GORDIAN.JPG" alt="" class="img-responsive"></a>
                        </div>
                        <div class="label">
                            <div class="label-text">
                                <span class="text-category">Aaron Gordian</span>
                            </div>
                            <div class="label-bg"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio Casa" data-cat="Casa">
                    <div class="portfolio-wrapper">
                        <div class="fancyDemo">
                            <a rel="group" href="single.html"><img src="file:///C:/Users/Lap_christo/Desktop/imagenes gam//CARLOS MONSIVAIS.JPG" alt="" class="img-responsive"></a>
                        </div>
                        <div class="label">
                            <div class="label-text">
                                <span class="text-category">Carlos Monsiváis</span>
                            </div>
                            <div class="label-bg"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio Casa" data-cat="Casa">
                    <div class="portfolio-wrapper">
                        <div class="fancyDemo">
                            <a rel="group" href="single.html"><img src="file:///C:/Users/Lap_christo/Desktop/imagenes gam//CASA DE CULTURA BENITA GALEANA.JPG" alt="" class="img-responsive"></a>
                        </div>
                        <div class="label">
                            <div class="label-text">
                                <span class="text-category">Benita Galeana</span>
                            </div>
                            <div class="label-bg"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio Casa" data-cat="Casa">
                    <div class="portfolio-wrapper">
                        <div class="fancyDemo">
                            <a rel="group" href="single.html"><img src="file:///C:/Users/Lap_christo/Desktop/imagenes gam//JOSE-MARTI.jpg" alt="" class="img-responsive"></a>
                        </div>
                        <div class="label">
                            <div class="label-text">
                                <span class="text-category">José Martí</span>
                            </div>
                            <div class="label-bg"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio Casa" data-cat="Casa">
                    <div class="portfolio-wrapper">
                        <div class="fancyDemo">
                            <a rel="group" href="single.html"><img src="file:///C:/Users/Lap_christo/Desktop/imagenes gam//HUGO.JPG" alt="" class="img-responsive"></a>
                        </div>
                        <div class="label">
                            <div class="label-text">
                                <span class="text-category">Hugo Gutierrez Vega</span>
                            </div>
                            <div class="label-bg"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio Centro" data-cat="Centro">
                    <div class="portfolio-wrapper">
                        <div class="fancyDemo">
                            <a rel="group" href="single.html"><img src="file:///C:/Users/Lap_christo/Desktop/imagenes gam//PALMATITLA-1.jpg" alt="" class="img-responsive"></a>
                        </div>
                        <div class="label">
                            <div class="label-text">
                                <span class="text-category">Palmatitla</span>
                            </div>
                            <div class="label-bg"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio Centro" data-cat="Centro">
                    <div class="portfolio-wrapper">
                        <div class="fancyDemo">
                            <a rel="group" href="single.html"><img src="file:///C:/Users/Lap_christo/Desktop/imagenes gam//ARISTEGUI.JPG" alt="" class="img-responsive"></a>
                        </div>
                        <div class="label">
                            <div class="label-text">
                                <span class="text-category">Carmen Aristegui</span>
                            </div>
                            <div class="label-bg"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio Casa" data-cat="Casa">
                    <div class="portfolio-wrapper">
                        <div class="fancyDemo">
                            <a rel="group" href="single.html"><img src="file:///C:/Users/Lap_christo/Desktop/imagenes gam//CASILDA.JPG" alt="" class="img-responsive"></a>
                        </div>
                        <div class="label">
                            <div class="label-text">
                                <span class="text-category">La Casilda</span>
                            </div>
                            <div class="label-bg"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio Centro" data-cat="Centro">
                    <div class="portfolio-wrapper">
                        <div class="fancyDemo">
                            <a rel="group" href="single.html"><img src="file:///C:/Users/Lap_christo/Desktop/imagenes gam//TAIBO.JPG" alt="" class="img-responsive"></a>
                        </div>
                        <div class="label">
                            <div class="label-text">
                                <span class="text-category">Paco Taibo II</span>
                            </div>
                            <div class="label-bg"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio Centro" data-cat="Centro">
                    <div class="portfolio-wrapper">
                        <div class="fancyDemo">
                            <a rel="group" href="single.html"><img src="file:///C:/Users/Lap_christo/Desktop/imagenes gam//PRIMAVERA.JPG" alt="" class="img-responsive"></a>
                        </div>
                        <div class="label">
                            <div class="label-text">
                                <span class="text-category">PRIMAVERA</span>
                            </div>
                            <div class="label-bg"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio Centro" data-cat="Centro">
                    <div class="portfolio-wrapper">
                        <div class="fancyDemo">
                            <a rel="group" href="single.html"><img src="file:///C:/Users/Lap_christo/Desktop/imagenes gam//WAGNER.JPG" alt="" class="img-responsive"></a>
                        </div>
                        <div class="label">
                            <div class="label-text">
                                <span class="text-category">Richard Wagner</span>
                            </div>
                            <div class="label-bg"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio Casa" data-cat="Casa">
                    <div class="portfolio-wrapper">
                        <div class="fancyDemo">
                            <a rel="group" href="single.html"><img src="file:///C:/Users/Lap_christo/Desktop/imagenes gam//RULFO.JPG" alt="" class="img-responsive"></a>
                        </div>
                        <div class="label">
                            <div class="label-text">
                                <span class="text-category">Juan Rulfo</span>
                            </div>
                            <div class="label-bg"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio Casa" data-cat="Casa">
                    <div class="portfolio-wrapper">
                        <div class="fancyDemo">
                            <a rel="group" href="single.html"><img src="file:///C:/Users/Lap_christo/Desktop/imagenes gam//PACHECO.JPG" alt="" class="img-responsive"></a>
                        </div>
                        <div class="label">
                            <div class="label-text">
                                <span class="text-category">José Emilio Pacheco</span>
                            </div>
                            <div class="label-bg"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio Centro" data-cat="Centro">
                    <div class="portfolio-wrapper">
                        <div class="fancyDemo">
                            <a rel="group" href="single.html"><img src="file:///C:/Users/Lap_christo/Desktop/imagenes gam//FUTURAMA.JPG" alt="" class="img-responsive"></a>
                        </div>
                        <div class="label">
                            <div class="label-text">
                                <span class="text-category">Futurama</span>
                            </div>
                            <div class="label-bg"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio Casa" data-cat="Casa">
                    <div class="portfolio-wrapper">
                        <div class="fancyDemo">
                            <a rel="group" href="single.html"><img src="file:///C:/Users/Lap_christo/Desktop/imagenes gam//JOSE-Ma-VELAZCO.jpg" alt="" class="img-responsive"></a>
                        </div>
                        <div class="label">
                            <div class="label-text">
                                <span class="text-category">José María Velazco</span>
                            </div>
                            <div class="label-bg"></div>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
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
        <footer class="section section-danger text-justify">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <h1 class="text-inverse"></h1>
                        <p class="text-inverse">Derechos reservados y consulte nuestro aviso de privacidad.</p>
                    </div>
                    <div class="col-sm-6">
                        <p class="text-info text-right">
                            <br>
                            <br>
                        </p>
                        <div class="row">
                            <div class="col-md-12 hidden-lg hidden-md hidden-sm text-left">
                                <a href="#"><i class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-twitter text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 hidden-xs text-right">
                                <a href="#"><i class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-twitter text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-facebook fa-fw text-inverse"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </body>

</html>