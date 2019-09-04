<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*, 
        DAOs.DAOCategoria,
        Entidades.Categoria,
        DAOs.DAOComunidade,
        Entidades.Comunidade,
        java.text.NumberFormat" %>
<%
    Locale ptBr = new Locale("pt", "BR");

    DAOComunidade dao = new DAOComunidade();
    DAOCategoria dao1 = new DAOCategoria();
    List<Categoria> categorias = dao1.listInOrderId();
    List<Comunidade> comunidades = dao.listInOrderId();
%>



<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Fóruns</title>

    <meta name="description" content="Snow - Clean & Minimal Portfolio HTML template.">
    <meta name="keywords" content="portfolio, clean, minimal, blog, template, portfolio website">
    <meta name="author" content="nK">

    <link rel="icon" type="image/png" href="images/logo2.png">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- START: Styles -->

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i%7cWork+Sans:400,500,700" rel="stylesheet" type="text/css">
    
    <link rel="stylesheet" href="css/combined.css">

    <!-- END: Styles -->



</head>


<body>


   <header class="nk-header nk-header-opaque">
        <!--
        START: Navbar
    -->
        <nav class="nk-navbar nk-navbar-top">
            <div class="container">
                <div class="nk-nav-table">
                    <a href="index.jsp" class="nk-nav-logo">
                        <img src="images/logo3.png" alt="" width="85" class="nk-nav-logo-onscroll">
                        <img src="images/logo3.png" alt="" width="85">
                    </a>

                    <ul class="nk-nav nk-nav-right hidden-md-down" data-nav-mobile="#nk-nav-mobile">
                        <li>
                            <a href="index.jsp">Home</a>
                        </li>
                        <li>
                            <a href="index.jsp#contact">Suporte</a>
                        </li>
                        <li>
                            <a href="trending.jsp">Trending</a>
                        </li>
                        <li>
                            <a href="login.jsp">Login</a>
                        </li>
                    </ul>

                    <ul class="nk-nav nk-nav-right nk-nav-icons">
                        <li class="single-icon hidden-lg-up">
                            <a href="#" class="nk-navbar-full-toggle">
                                <span class="nk-icon-burger">
                                    <span class="nk-t-1"></span>
                                    <span class="nk-t-2"></span>
                                    <span class="nk-t-3"></span>
                                </span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- END: Navbar -->

    </header>




    <!--
    START: Navbar Mobile
-->
    <nav class="nk-navbar nk-navbar-full nk-navbar-align-center" id="nk-nav-mobile">
        <div class="nk-navbar-bg">
            <div class="bg-image" style="background-image: url('images/wallpaper4.jpg')"></div>
        </div>
        <div class="nk-nav-table">
            <div class="nk-nav-row">
                <div class="container">
                    <div class="nk-nav-header">

                        <div class="nk-nav-logo">
                            <a href="index.jsp" class="nk-nav-logo">
                                <img src="images/logo3.png" alt="" width="85">
                            </a>
                        </div>

                        <div class="nk-nav-close nk-navbar-full-toggle">
                            <span class="nk-icon-close"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="nk-nav-row-full nk-nav-row">
                <div class="nano">
                    <div class="nano-content">
                        <div class="nk-nav-table">
                            <div class="nk-nav-row nk-nav-row-full nk-nav-row-center nk-navbar-mobile-content">
                                <ul class="nk-nav">
                                    <!-- Here will be inserted menu from [data-mobile-menu="#nk-nav-mobile"] -->
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="nk-nav-row">
                <div class="container">
                    <div class="nk-nav-social">
                        <ul>
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <!-- END: Navbar Mobile -->





    <div class="nk-main">



        <div class="container">
            <!-- START: Filter -->
            
            <div class="nk-pagination nk-pagination-nobg nk-pagination-center">
                <a href="criarcomunidade.jsp">
                    <span>Criar comunidade</span>
                </a>
                <a href="#nk-toggle-filter">
                    <span class="nk-icon-squares"></span>
                </a>
                <a href="criarcategoria.jsp">
                    <span>Criar categoria</span>
                </a>
            </div>
            
            <ul class="nk-isotope-filter">
               
                <li class="active" data-filter="*">Todos</li>
                <li data-filter="E-Sports">E-Sports</li>
                <li data-filter="Eletronicos">Eletrônicos</li>
                <li data-filter="Esporte">Esportes</li>
                <li data-filter="AnimesMangas">Animes/Mangás</li>
                <li data-filter="Gastronomia">Gastronomia</li>
                <li data-filter="Noticias">Notícias</li>
                <li data-filter="Jogos">Jogos</li>
                <%
                    for (Categoria u : categorias) {
                %>
                <li data-filter="<%=u.getNomeCategoria()%>"><%=u.getNomeCategoria()%></li>
                <%}%>
            </ul>
            <!-- END: Filter -->

            <div class="nk-portfolio-list nk-isotope nk-isotope-3-cols">


                <div class="nk-isotope-item" data-filter="E-Sports">
                    <div class="nk-portfolio-item nk-portfolio-item-square nk-portfolio-item-info-style-1">
                        <a href="#" class="nk-portfolio-item-link"></a>
                        <div class="nk-portfolio-item-image">
                            <div style="background-image: url('images/forumlol.jpg');"></div>
                        </div>
                        <div class="nk-portfolio-item-info nk-portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">League of Legends</h2>
                                <div class="portfolio-item-category">E-Sports</div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="nk-isotope-item" data-filter="Gastronomia">
                    <div class="nk-portfolio-item nk-portfolio-item-square nk-portfolio-item-info-style-1">
                        <a href="#" class="nk-portfolio-item-link"></a>
                        <div class="nk-portfolio-item-image">
                            <div style="background-image: url('images/receitas.jpg');"></div>
                        </div>
                        <div class="nk-portfolio-item-info nk-portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">Receitas</h2>
                                <div class="portfolio-item-category">Gastronomia</div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="nk-isotope-item" data-filter="Eletronicos">
                    <div class="nk-portfolio-item nk-portfolio-item-square nk-portfolio-item-info-style-1">
                        <a href="#" class="nk-portfolio-item-link"></a>
                        <div class="nk-portfolio-item-image">
                            <div style="background-image: url('images/smartphone.jpg');"></div>
                        </div>
                        <div class="nk-portfolio-item-info nk-portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">Smartphones</h2>
                                <div class="portfolio-item-category">Eletrônicos</div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="nk-isotope-item" data-filter="Esporte">
                    <div class="nk-portfolio-item nk-portfolio-item-square nk-portfolio-item-info-style-1">
                        <a href="#" class="nk-portfolio-item-link"></a>
                        <div class="nk-portfolio-item-image">
                            <div style="background-image: url('images/formula1.jpg');"></div>
                        </div>
                        <div class="nk-portfolio-item-info nk-portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">Fórmula 1</h2>
                                <div class="portfolio-item-category">Esportes</div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="nk-isotope-item" data-filter="Eletronicos">
                    <div class="nk-portfolio-item nk-portfolio-item-square nk-portfolio-item-info-style-1">
                        <a href="#" class="nk-portfolio-item-link"></a>
                        <div class="nk-portfolio-item-image">
                            <div style="background-image: url('images/laptop.jpg');"></div>
                        </div>
                        <div class="nk-portfolio-item-info nk-portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">Laptops</h2>
                                <div class="portfolio-item-category">Eletrônicos</div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="nk-isotope-item" data-filter="AnimesMangas">
                    <div class="nk-portfolio-item nk-portfolio-item-square nk-portfolio-item-info-style-1">
                        <a href="#" class="nk-portfolio-item-link"></a>
                        <div class="nk-portfolio-item-image">
                            <div style="background-image: url('images/manga.jpg');"></div>
                        </div>
                        <div class="nk-portfolio-item-info nk-portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">Haikyuu</h2>
                                <div class="portfolio-item-category">Animes/Mangás</div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="nk-isotope-item" data-filter="Esporte">
                    <div class="nk-portfolio-item nk-portfolio-item-square nk-portfolio-item-info-style-1">
                        <a href="#" class="nk-portfolio-item-link"></a>
                        <div class="nk-portfolio-item-image">
                            <div style="background-image: url('images/futebol.jpg');"></div>
                        </div>
                        <div class="nk-portfolio-item-info nk-portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">Futebol</h2>
                                <div class="portfolio-item-category">Esportes</div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="nk-isotope-item" data-filter="AnimesMangas">
                    <div class="nk-portfolio-item nk-portfolio-item-square nk-portfolio-item-info-style-1">
                        <a href="#" class="nk-portfolio-item-link"></a>
                        <div class="nk-portfolio-item-image">
                            <div style="background-image: url('images/anime.jpg');"></div>
                        </div>
                        <div class="nk-portfolio-item-info nk-portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">My Hero Academia</h2>
                                <div class="portfolio-item-category">Animes/Mangás</div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="nk-isotope-item" data-filter="E-Sports">
                    <div class="nk-portfolio-item nk-portfolio-item-square nk-portfolio-item-info-style-1">
                        <a href="#" class="nk-portfolio-item-link"></a>
                        <div class="nk-portfolio-item-image">
                            <div style="background-image: url('images/csgo.jpg');"></div>
                        </div>
                        <div class="nk-portfolio-item-info nk-portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">Counter-Strike: Global Offensive</h2>
                                <div class="portfolio-item-category">E-Sports</div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="nk-isotope-item" data-filter="Noticias">
                    <div class="nk-portfolio-item nk-portfolio-item-square nk-portfolio-item-info-style-1">
                        <a href="#" class="nk-portfolio-item-link"></a>
                        <div class="nk-portfolio-item-image">
                            <div style="background-image: url('images/congresso.jpg');"></div>
                        </div>
                        <div class="nk-portfolio-item-info nk-portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">Política brasileira</h2>
                                <div class="portfolio-item-category">Notícias</div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="nk-isotope-item" data-filter="Jogos">
                    <div class="nk-portfolio-item nk-portfolio-item-square nk-portfolio-item-info-style-1">
                        <a href="#" class="nk-portfolio-item-link"></a>
                        <div class="nk-portfolio-item-image">
                            <div style="background-image: url('images/fifa2019.jpg');"></div>
                        </div>
                        <div class="nk-portfolio-item-info nk-portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">FIFA 2019</h2>
                                <div class="portfolio-item-category">Jogos</div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="nk-isotope-item" data-filter="Noticias">
                    <div class="nk-portfolio-item nk-portfolio-item-square nk-portfolio-item-info-style-1">
                        <a href="#" class="nk-portfolio-item-link"></a>
                        <div class="nk-portfolio-item-image">
                            <div style="background-image: url('images/noticiasinternacionais.jpg');"></div>
                        </div>
                        <div class="nk-portfolio-item-info nk-portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">Notícias internacionais</h2>
                                <div class="portfolio-item-category">Notícias</div>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                
                
            </div>

            <div class="nk-gap-4"></div>
        </div>

        <!-- START: Pagination -->
<!--        <div class="nk-pagination nk-pagination-center">
            <a href="#">Mais (não funciona no momento)</a>
        </div> -->
        <!-- END: Pagination -->



        <!--
    START: Footer
-->
        <footer class="nk-footer">


            <div class="nk-footer-cont">
                <div class="container text-xs-center">
                    <div class="nk-footer-social">
                        <ul>
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                        </ul>
                    </div>

                </div>
            </div>
        </footer>
        <!-- END: Footer -->


    </div>




    <!-- START: Scripts -->

    <script src="js/combined.js"></script>
    
    <!-- END: Scripts -->


</body>

</html>