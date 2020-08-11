<!DOCTYPE html>
<html lang="en">
  <head>
    <title>ClassyAds &mdash; Colorlib Website Template</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800" rel="stylesheet">
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="../../listing/../../listing/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../listing/css/magnific-popup.css">
    <link rel="stylesheet" href="../../listing/css/jquery-ui.css">
    <link rel="stylesheet" href="../../listing/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../../listing/css/owl.theme.default.min.css">

    <link rel="stylesheet" href="../../listing/css/bootstrap-datepicker.css">

    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

    <link rel="stylesheet" href="../../listing/css/aos.css">
    <link rel="stylesheet" href="../../listing/css/rangeslider.css">

    <link rel="stylesheet" href="../../listing/css/style.css">
        <!-- Main CSS-->
    <link href="../../add/css/main.css" rel="stylesheet" media="all">
    
  </head>
  <body>
  
  < 
      <!-- ***** Header Area Start ***** -->
 <iframe src="/bms/menu" height="80px"  width="100%" scrolling="no" >
</iframe>    <!-- ***** Header Area End ***** -->
   

  
    
    <div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(../../images/bg-img/hero-1.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">      <div class="container">
        <div class="row align-items-center justify-content-center text-center">

          <div class="col-md-10" data-aos="fade-up" data-aos-delay="400">
            
            
            <div class="row justify-content-center mt-5">
              <div class="col-md-8 text-center">
                <h1>${comicName}</h1>
                <p class="mb-0">${charcterName}</p>
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

					<div class="mb-4">
						<div class="slide-one-item home-slider owl-carousel">
							<div>
								<img src="../../images/comiccover/${imageUrl}" alt="Image"
									class="img-fluid">
							</div>

						</div>
					</div>

					<div class="form-row">
						<div class="name">Comic Name: </div>
						<div class="value">
							<div class="name" style="white-space:nowrap">${comicName}</div>
						</div>
					</div>
					<div class="form-row">
						<div class="name" style="white-space:nowrap">character Name :</div>
						<div class="value">
							</nbsp><div class="name" style="white-space:nowrap">${charcterName}</div>
						</div>
					</div>
					<div class="form-row">
						<div class="name" style="white-space:nowrap">Publication House: </div>
						<div class="value">
							<div class="name" style="white-space:nowrap;margin-left:200 px ">&nbsp;&nbsp;&nbsp;&nbsp;${publicationHouse}</div>
						</div>
					</div>
					<div class="form-row">
						<div class="name">comic Type:</div>
						<div class="value">
							<div class="name" style="white-space:nowrap">${comicType}</div>
						</div>
					</div>
					<div class="form-row">
						<div class="name">Serial Number:</div>
						<div class="value">
							<div class="name" style="white-space:nowrap">${serialNumber}</div>
						</div>
					</div>
					<div class="form-row">
						<div class="name">Price:</div>
						<div class ="value">
							<div class="name" style="white-space:nowrap">${price}</div>
						</div>
					</div>
					<div class="form-row">
						<div class="name">Publication Year:</div>
						<div class="value">
							<div class="name" style="white-space:nowrap">${publlicationYear}</div>
						</div>
					</div>
					<div class="form-row">
						<div class="name">Artist:</div>
						<div class="value">
							<div class="name" style="white-space:nowrap">${artist}</div>
						</div>
					</div>
					<div class="form-row">
						<div class="name">Comic Scanned?</div>
						<div class="value">
							<div class="name" style="white-space:nowrap">${scanned}</div>
						</div>
					</div>
					<div class="form-row">
						<div class="name">Language:</div>
						<div class="value">
							<div class="name" style="white-space:nowrap">${language}</div>
						</div>
					</div>
					<div class="form-row">
						<div class="name">Location:</div>
						<div class="value">
							<div class="name"style="white-space:nowrap">${comicLocation}</div>
						</div>
					</div>
					<div class="form-row">
						<div class="name">Notes:</div>
						<div class="value">
							<div class="name" style="white-space:nowrap">${notes}</div>
						</div>
					</div>
					<div  class="form-row">
						<div class="name">
							<a type="button" class="btn btn-success" href="/update-comic?id=${id}">Update</a>
						</div>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<divclass="value"  >
							&nbsp;&nbsp;&nbsp;&nbsp;<a type="button" class="btn btn-warning" href="/delete-comic?id=${id}">Delete</a>
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