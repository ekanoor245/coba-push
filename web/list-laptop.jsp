<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
        <title>Beranda</title>

        <!-- font  -->
        <link href="assets/css/material-icons.css" rel="stylesheet">
        <link href="assets/css/font-awesome.css" rel="stylesheet">

        <!-- css  -->
        <link href="assets/css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
        <link href="assets/css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
        <link rel="icon" href="assets/favicon.png" sizes="32x32">
    </head>
    <body style="background-color: #fdfdfd">
        <nav class="light-blue" role="navigation">
            <div class="nav-wrapper container-fluid">
                <a id="logo-container" href="index.jsp" class="brand-logo">
                    <img src="assets/icon.png" style="max-width: 70px"/>
                </a>
                <ul class="right hide-on-med-and-down">
                    <li class="active"><a href="index.jsp"><i class="material-icons">home</i></a></li>
                    <li><a href="about.jsp">Tentang Kami</a></li>
                    <li><a href="contact.jsp">Kontak</a></li>
                </ul>

                <ul id="nav-mobile" class="side-nav">
                    <li><h5 class="black-text center">Menu</h5></li>
                    <li class="divider blue"></li>
                    <li class="active"><a href="index.jsp" class="blue-text"><i class="material-icons blue-text">home</i></a></li>
                    <li ><a href="about.jsp" class="blue-text">Tentang Kami</a></li>
                    <li><a href="contact.jsp" class="blue-text">Kontak</a></li>
                </ul>
                <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
            </div>
        </nav>
        <div class="section no-pad-bot" id="index-banner">
            <div class="container-fluid">
                <div class="row">
                    <div class="col s12 carousel">
                        <a class="carousel-item" href="#pc_1!"><img src="assets/image/pc_1.png" class="responsive-img"></a>
                        <a class="carousel-item" href="#pc_2!"><img src="assets/image/pc_2.png" class="responsive-img"></a>
                        <a class="carousel-item" href="#pc_3!"><img src="assets/image/pc_3.png" class="responsive-img"></a>
                        <a class="carousel-item" href="#pc_4!"><img src="assets/image/pc_4.png" class="responsive-img"></a>
                        <a class="carousel-item" href="#pc_5!"><img src="assets/image/pc_5.png" class="responsive-img"></a>
                    </div>
                </div>

            </div>
        </div>

        <div class="wrap container-fluid">
            <div class="section">
                <!--   Icon Section   -->
                <div class="row">
                    <c:forEach items="${laptop}" var="lp">
                        <div class="col s12 m6">
                            <div class="in-line border border-light rounded valign-wrapper white">
                                <div class="col s12 m4">
                                    <img class="responsive-img" src='assets/image/<c:out value="${lp.gambar}"/>' style="padding-top: 10px" />
                                </div>
                                <div class="col s12 m8"> 
                                    <p>
                                        <a href="index.html?r=detail&id=<c:out value="${lp.id}"/>">
                                            <c:out value="${lp.merk}"/> <c:out value="${lp.model}"/>
                                        </a>
                                    </p>
                                    <p class="light red-text">
                                        Rp <c:out value="${lp.harga}"/>
                                    </p>
                                    <p class="yellow-text">
                                        <c:choose>
                                            <c:when test="${lp.rating >= 5}">
                                                <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half-empty"></i>
                                            </c:when>
                                            <c:when test="${lp.rating == 4}">
                                                <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half-empty"></i>
                                            </c:when>
                                            <c:when test="${lp.rating == 3}">
                                                <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half-empty"></i>
                                            </c:when>
                                            <c:when test="${lp.rating == 2}">
                                                <i class="fa fa-star"></i><i class="fa fa-star-half-empty"></i>
                                            </c:when>
                                            <c:otherwise>
                                                <i class="fa fa-star-half-empty"></i>
                                            </c:otherwise>
                                        </c:choose>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>

        <footer class="page-footer light-blue darken-1 z-depth-1">
            <div class="container-fluid">
                <div class="row">

                    <div class="col m6 s12">
                        <h5>Follow Us</h5>
                        <p>
                            <a class="white btn-floating" href="#!"><i class="fa fa-facebook indigo-text darken-4"></i></a> &nbsp;
                            <a class="white btn-floating" href="#!"><i class="fa fa-instagram pink-text"></i></a> &nbsp;
                            <a class="white btn-floating" href="#!"><i class="fa fa-google-plus red-text"></i></a> &nbsp;
                            <a class="white btn-floating" href="#!"><i class="fa fa-twitter blue-text"></i></a> &nbsp;
                            <a class="white btn-floating" href="#!"><i class="fa fa-linkedin indigo-text"></i></a> &nbsp;
                            <a class="white btn-floating" href="#!"><i class="fa fa-pinterest red-text"></i></a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="footer-copyright light-blue darken-2 z-depth-1">
                <div class="container-fluid">
                    <p class="center white-text">Copyright &copy; 2017</p>
                </div>
            </div>
        </footer>

        <!--  Scripts-->
        <script src="assets/js/jquery-3.2.1.min.js"></script>
        <script src="assets/js/materialize.js"></script>
        <script src="assets/js/init.js"></script>
    </body>
</html>
