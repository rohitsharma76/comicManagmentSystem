<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>welcome to comic Management System </title>

    <!-- Favicon -->
    <link rel="icon" href="../../images/core-img/favicon.ico">
<link href="../../css/style.css" type="text/css" rel="stylesheet">
     <link href="../../css/bootstrap/bootstrap.min.css" type="text/css" rel="stylesheet">
      <link href="../../css/others/animate.css" type="text/css" rel="stylesheet"> 
      <link href="../../css/others/magnific-popup.css" type="text/css" rel="stylesheet">
       <link href="../../css/others/font-awesome.min.css" type="text/css" rel="stylesheet"> 
      <link href="../../css/others/elegant-font.css" type="text/css" rel="stylesheet">
       <link href="../../css/others/themify-icons.css" type="text/css" rel="stylesheet">
         <link href="../../css/style.css" type="text/css" rel="stylesheet">
    
    <!-- Responsive CSS -->
    <link href="../../css/responsive/responsive.css" rel="stylesheet">
    <!-- Core Stylesheet -->
    

</head>

<body>
    <!-- Preloader Start -->
    <div id="preloader">
        <div class="loader">
            <span class="inner1"></span>
            <span class="inner2"></span>
            <span class="inner3"></span>
        </div>
    </div>

    <!-- Search Form Area -->
    <div class="fancy-search-form d-flex align-items-center">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <!-- Close Btn -->
                    <div class="search-close-btn" id="closeBtn">
                        <i class="ti-close" aria-hidden="true"></i>
                    </div>
                    <!-- Form -->
                    <form action="/bms/searchcomics" method="post">
                        <input type="search" name="keyword" id="search" placeholder="search your comics by name/publication house/artists">
                        <input type="submit" class="d-none" value="submit">
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- ***** Header Area Start ***** -->
   <%@ include file="../commonbms/navigation.jspf"%>
    <!-- ***** Header Area End ***** -->
	
    <!-- ***** Hero Area Start ***** -->
    <div class="fancy-hero-area bg-img bg-overlay animated-img" style="background-image: url(../../images/bg-img/hero-1.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="fancy-hero-content text-center">
                        <!-- Video Overview -->
                        <h2>Welcome to your Comic Corner </h2>
                        <a href="/bms/addcomics" class="btn fancy-btn fancy-active">Add Comics </a>
                        <a href="/bms/comicslist" class="btn fancy-btn">View Comics</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Hero Area End ***** -->

    <!-- ***** Top Feature Area Start ***** -->
    <div class="fancy-top-features-area bg-gray">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="fancy-top-features-content">
                        <div class="row no-gutters">
                            <div class="col-12 col-md-4">
                                <div class="single-top-feature">
                                    <h5><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> Add Comics</h5>
                                    <p>In this section , you can add your comics collection to the database with details like name , publication House , year of printing , artists , character name etc. </p>
                                </div>
                            </div>
                            <div class="col-12 col-md-4">
                                <div class="single-top-feature">
                                    <h5><i class="fa fa-clock-o" aria-hidden="true"></i> View comics </h5>
                                    <p>you can either View your entire comic collection or you can view your collection artist wise or you can view your collection by character name. </p>
                                </div>
                            </div>
                            <div class="col-12 col-md-4">
                                <div class="single-top-feature">
                                    <h5><i class="fa fa-diamond" aria-hidden="true"></i> Smart Search </h5>
                                    <p>search your comics collection in a  jiffy using keywords like comic name , publication , artsits etc. </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Top Feature Area End ***** -->

    <!-- ***** About Us Area Start ***** -->
    <section class="fancy-about-us-area bg-gray">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-6">
                    <div class="about-us-text">
                        <h2>Manage you comic collection now using our cutting edge Technology</h2>
                        <p>The CMS or comic management system proides faciility for storing your comic details , Viewing your entire collection or Search your comic collection on heros , publication house or artists (or by plain fuddy duddy comic Name too) (:). </p>
                       
                        </div>
                </div>

                <div class="col-12 col-lg-6 col-xl-5 ml-xl-auto">
                    <div class="about-us-thumb wow fadeInUp" data-wow-delay="0.5s">
                        <img src="../../images/bg-img/about.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** About Us Area End ***** -->

   
    <!-- ***** Footer Area Start ***** -->
    <footer class="fancy-footer-area fancy-bg-dark">
        <div class="footer-content section-padding-80-50">
            <div class="container">
                <div class="row">
                    <!-- Footer Widget -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-footer-widget">
                            <h6>Our Newsletter</h6>
                            <p>Subscribe to our mailing list to get the updates to your email inbox.</p>
                           
                        </div>
                    </div>
                    <!-- Footer Widget -->
                   
                    <!-- Footer Widget -->
                   
                    <!-- Footer Widget -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-footer-widget">
                            <h6>Contact Us</h6>
                            <p>9810835332 <br>rohitsharma76@gmail.com
                            </p>
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer Copywrite -->
      
    </footer>
    <!-- ***** Footer Area End ***** -->

    <!-- jQuery-2.2.4 js -->
    <script src="../../js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="../../js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap-4 js -->
    <script src="../../js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="../../js/others/plugins.js"></script>
    <!-- Active JS -->
    <script src="../../js/active.js"></script>
</body>