<!DOCTYPE html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
  <head>
    <title>CMS &mdash; Comic Collection</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800" rel="stylesheet">
    <link rel="stylesheet" href="../../listing/fonts/icomoon/style.css">

    <link rel="stylesheet" href="../../listing/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../listing/css/magnific-popup.css">
    <link rel="stylesheet" href="../../listing/css/jquery-ui.css">
    <link rel="stylesheet" href="../../listing/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../../listing/css/owl.theme.default.min.css">

    <link rel="stylesheet" href="../../listing/css/bootstrap-datepicker.css">

    <link rel="stylesheet" href="../../listing/fonts/flaticon/font/flaticon.css">

    <link rel="stylesheet" href="../../listing/css/aos.css">
    <link rel="stylesheet" href="../../listing/css/rangeslider.css">

    <link rel="stylesheet" href="../../listing/css/style.css">
    <style type="text/css">
    .collapsible {
  background-color: #777;
  color: white;
  cursor: pointer;
  padding: 18px;
  width: 100%;
  border: none;
  text-align: left;
  outline: none;
  font-size: 15px;
}

.active, .collapsible:hover {
  background-color: #555;
}

.collapsible:after {
  content: '\002B';
  color: white;
  font-weight: bold;
  float: right;
  margin-left: 5px;
}

.active:after {
  content: "\2212";
}

.content {
  padding: 0 18px;
  max-height: 0;
  overflow: hidden;
  transition: max-height 0.2s ease-out;
  background-color: #f1f1f1;
  font-weight: bold;
  
}
    .grid-container {
  display: grid;
  grid-template-columns: auto auto auto  ;
  grid-gap: 10px;
  background-color: #FFFFFF;
  padding: 10px;
}

.grid-container > div {
  background-color: rgba(255, 255, 255, 0.8);
  text-align: center;
  padding: 15px 0;
  font-size: 20px;
  
}

</style>
  </head>
<body>
 
    
      <!-- ***** Header Area Start ***** -->
 <iframe src="/bms/menu" height="80px"  width="100%" scrolling="no" >
</iframe>    <!-- ***** Header Area End ***** -->
   

  
    
    <div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(../../images/bg-img/hero-1.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">

          <div class="col-md-10" data-aos="fade-up" data-aos-delay="400">
            
            
            <div class="row justify-content-center mt-5">
              <div class="col-md-8 text-center">
                <h1>comics Khazana</h1>
                <p class="mb-0"><b>you have total ${totalRecords} Comics in your comics Khazana</b></p>
              </div>
            </div>

            
          </div>
        </div>
      </div>
    </div>  

    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-8">

            <div class="row">
              <div class="col-lg-6">
              <div class="grid-container">
                <c:forEach items="${comicsList}" var="comic">
                <div class="d-block d-md-flex listing vertical">
                  <a href="#" class="img d-block" style="background-image: url('../../images/comiccover/${comic.imageUrl}');height:200px;width:200px;align:middle"></a>
                  <div class="lh-content">
                    <span class="category" style="white-space:noWrap">${comic.charcterName}</span>
                    <h3 style="white-space:nowrap"><a href="/View-comic?id=${comic.id}" title="click for More Info">${comic.comicName}</a></h3>
                    <address>${comic.serialNumber}</address>
                    <address>${comic.publicationHouse}</address>
                    <p class="mb-0">
                      
                      <span class="review"><a href="/View-comic?id=${comic.id}" title="click for Info/Edit/Delete this comic ">Click here for More Info</a></span>
                    </p>
                  </div>
                </div>
				</c:forEach>
				</div>	
              </div>
         
             </div>
            

            </div>

            <div class="col-12 mt-5 text-center">
              <div class="custom-pagination">
              <c:forEach var="counter" begin="1" end="${totalPages}">
               <a href="/bms/comicslist/${counter}"><c:out value="${counter}" /></a>
              </c:forEach>
               
              </div>
            </div>

          </div>
        
      </div>
    </div>


    
    

    
    
    <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-md-9">
            <div class="row">
              <div class="col-md-6">
                <h2 class="footer-heading mb-4">About</h2>
                <p>CMS for Managing your comic collection effortlessly </p>
              </div>
              
              <div class="col-md-3">
                <h2 class="footer-heading mb-4">Navigations</h2>
                <ul class="list-unstyled">
                  <li><a href="#">Home</a></li>
                  <li><a href="#">Add comics</a></li>
                  <li><a href="#">Search comics</a></li>
                  <li><a href="#">View your comic collection</a></li>
                  <li><a href="#">Contact Us</a></li>
                </ul>
              </div>
            
            </div>
          </div>
         
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <div class="border-top pt-5">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
            </div>
          </div>
          
        </div>
      </div>
    </footer>
  </div>

  <script src="../../listing/js/jquery-3.3.1.min.js"></script>
  <script src="../../listing/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="../../listing/js/jquery-ui.js"></script>
  <script src="../../listing/js/popper.min.js"></script>
  <script src="../../listing/js/bootstrap.min.js"></script>
  <script src="../../listing/js/owl.carousel.min.js"></script>
  <script src="../../listing/js/jquery.stellar.min.js"></script>
  <script src="../../listing/js/jquery.countdown.min.js"></script>
  <script src="../../listing/js/jquery.magnific-popup.min.js"></script>
  <script src="../../listing/js/bootstrap-datepicker.min.js"></script>
  <script src="../../listing/js/aos.js"></script>
  <script src="../../listing/js/rangeslider.min.js"></script>

  <script src="../../listing/js/main.js"></script>
    
  </body>
</html>