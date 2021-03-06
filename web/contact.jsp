<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
        <title>Kontak</title>

        <!-- font  -->
        <link href="assets/css/material-icons.css" rel="stylesheet">
        <link href="assets/css/font-awesome.css" rel="stylesheet">

        <!-- css  -->
        <link href="assets/css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
        <link href="assets/css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
        <link rel="icon" href="assets/favicon.png" sizes="32x32">
        <style>
            #map{
                width: 100%;
                height: 300px;
            }
        </style>
    </head>
    <body style="background-color: #fdfdfd">
        <nav class="light-blue" role="navigation">
            <div class="nav-wrapper container-fluid">
                <a id="logo-container" href="index.jsp" class="brand-logo">
                    <img src="assets/icon.png" style="max-width: 70px"/>
                </a>
                <ul class="right hide-on-med-and-down">
                    <li><a href="index.jsp"><i class="material-icons">home</i></a></li>
                    <li><a href="about.jsp">Tentang Kami</a></li>
                    <li class="active"><a href="contact.jsp">Kontak</a></li>
                </ul>

                <ul id="nav-mobile" class="side-nav">
                    <li><h5 class="black-text center">Menu</h5></li>
                    <li class="divider blue"></li>
                    <li><a href="index.jsp" class="blue-text"><i class="material-icons blue-text">home</i></a></li>
                    <li><a href="about.jsp" class="blue-text">Tentang Kami</a></li>
                    <li class="active"><a href="contact.jsp" class="blue-text">Kontak</a></li>
                </ul>
                <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
            </div>
        </nav>

        <div class="wrap container-fluid">
            <div class="section">
                <!--   Icon Section   -->
                <div class="row">
                    <div class="col s12">
                        <h4 class="blue-text">Kontak</h4>
                        <div id="map" class="grey lighten-5"></div>
                    </div>
                    <div class="col s12">
                        <div class="in-line">
                            <h5 class="light">
                                <i class="material-icons medium blue-text">place</i> Jl. Raya Janti No. 143, Karang Jambe, Banguntapan, Bantul, DIY
                            </h5>
                            <h5 class="light">
                                <i class="material-icons medium blue-text">phone</i> 085269260529
                            </h5>
                        </div>
                    </div>
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
        <script>
            function initMap() {
                var akakom = {lat: -7.7926996, lng: 110.4078696};
                var map = new google.maps.Map(document.getElementById('map'), {
                    zoom: 15,
                    center: akakom
                });
                var contentString = "<b>STMIK Akakom Yogyakarta</b>";
                var marker = new google.maps.Marker({
                    position: akakom,
                    map: map
                });
                var infowindow = new google.maps.InfoWindow({
                    content: contentString
                });
                marker.addListener('click', function () {
                    infowindow.open(map, marker);
                });
            }
        </script>
        <script async defer  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCdhgI0p4YhHFYYbWAcLt-tztBHByyRCQs&callback&callback=initMap"></script>

        <script src="assets/js/jquery-3.2.1.min.js"></script>
        <script src="assets/js/materialize.js"></script>
        <script src="assets/js/init.js"></script>
    </body>
</html>