<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
    <!-- Required meta tags-->
 <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Title Page-->
    <title>Add your comics</title>

    <!-- Icons font CSS-->
    <link href="../../add/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="../../add/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="../../add/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="../../add/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="../../add/css/main.css" rel="stylesheet" media="all">
    
    
    
    <style type="text/css">
    .container-login100 {
  width: 100%;  
  min-height: 100vh;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  align-items: center;
  padding: 15px;
  background-repeat: no-repeat;
  background-size: cover;
  background-position: center;
  position: relative;
  z-index: 1;
}

.container-login100::before {
  content: "";
  display: block;
  position: absolute;
  z-index: -1;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  background: rgba(93,84,240,0.5);
  background: -webkit-linear-gradient(left, rgba(0,168,255,0.5), rgba(185,0,255,0.5));
  background: -o-linear-gradient(left, rgba(0,168,255,0.5), rgba(185,0,255,0.5));
  background: -moz-linear-gradient(left, rgba(0,168,255,0.5), rgba(185,0,255,0.5));
  background: linear-gradient(left, rgba(0,168,255,0.5), rgba(185,0,255,0.5));
  pointer-events: none;
}

</style>
</head>

<body>
 
    
      <!-- ***** Header Area Start ***** -->
 <iframe src="/bms/menu" height="80px"  width="100%" scrolling="no" >
</iframe>    <!-- ***** Header Area End ***** -->
   
    <div class="container-login100" style="background-image: url('../../images/bgcomic.jpg');">
    
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Add your Comic !!!</h2>
                </div>
                <div class="card-body">
                    <form:form method="POST" action="/bms/addcomics" modelAttribute="ComicDetail">
                        <form:hidden path = "id"></form:hidden>
                        <div class="form-row">
                            <div class="name"><form:label path = "comicName">Comic Name</form:label></div>
                            <div class="value">
                                <div class="input-group">
                                    <form:input path = "comicName"  class="input--style-5" type="text" name="comicName" />
                                </div>
                            </div>
                        </div>
                        
                        
                        <div class="form-row">
                            <div class="name"><form:label path = "charcterName">Comic character Name</form:label></div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select-search">
                                        <form:select path = "charcterName">
                     					<form:option value = "NONE" label = "Select"/>
                     					<form:options items = "${characterList}" />
                  						</form:select>    
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="name"><form:label path = "publicationHouse">Publication House</form:label></div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select-search">
                                      <form:select path = "publicationHouse">
                     					<form:option value = "NONE" label = "Select"/>
                     					<form:options items = "${publicationList}" />
                 						</form:select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name"><form:label path = "comicType">comic Type</form:label></div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select-search">
                                      <form:select path = "comicType">
                     					<form:option value = "NONE" label = "Select"/>
                     					<form:options items = "${comicTypeList}" />
                  						</form:select>   
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="name"><form:label path = "serialNumber">Serial Number</form:label></div>
                            <div class="value">
                                <div class="input-group">
                                    <form:input path = "serialNumber"  class="input--style-5" type="text" name="serialNumber" />
                                </div>
                            </div>
                        </div>
                         <div class="form-row">
                            <div class="name"><form:label path = "imageUrl">Image Name</form:label></div>
                            <div class="value">
                                <div class="input-group">
                                    <form:input path = "imageUrl"  class="input--style-5" type="text" name="imageUrl" />
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name"><form:label path = "price">Price</form:label></div>
                            <div class="value">
                                <div class="input-group">
                                    <form:input path = "price"  class="input--style-5" type="text" name="price" />
                                </div>
                            </div>
                        </div>
                         <div class="form-row">
                            <div class="name"><form:label path = "publlicationYear">Publication Year</form:label></div>
                            <div class="value">
                                <div class="input-group">
                                    <form:input path = "publlicationYear"  class="input--style-5" type="text" name="publlicationYear" />
                                </div>
                            </div>
                        </div>
                          <div class="form-row">
                            <div class="name"><form:label path = "artist">Artist</form:label></div>
                            <div class="value">
                                <div class="input-group">
                                    <form:input path = "artist"  class="input--style-5" type="text" name="artist" />
                                </div>
                            </div>
                        </div>
                        <div class="form-row p-t-20">
                            <label class="label label--block">Comic Scanned?</label>
                            <div class="p-t-15">
                                <label class="radio-container m-r-55">Yes
                                    <form:radiobutton path="scanned" value="Y"/>
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">No
                                    <form:radiobutton path="scanned" value="N"/>
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>

						<div class="form-row">
							<div class="name">
								<form:label path="language">Language</form:label>
							</div>
							<div class="value">
								<div class="input-group">
									<div class="rs-select2 js-select-simple select-search">
										<form:select path="language">
											<form:option value="NONE" label="Select" />
											<form:options items="${lanugageList}" />
										</form:select>
										<div class="select-dropdown"></div>
									</div>
								</div>
							</div>
						</div>

						<div class="form-row">
							<div class="name">
								<form:label path="comicLocation"
									title="where is the comic lying ?">Location</form:label>
							</div>
							<div class="value">
								<div class="input-group">
									<form:textarea path="comicLocation" class="input--style-5"
										name="comicLocation"
										title="where is the comic lying ? which book shelf " />
								</div>
							</div>
						</div>
						
						<div class="form-row">
							<div class="name">
								<form:label path="notes"
									title="enter info  about comic copies / condition etc. ">Notes</form:label>
							</div>
							<div class="value">
								<div class="input-group">
									<form:textarea path="notes" class="input--style-5"
										name="notes"
										title="enter info  about comic copies / condition etc. " />
								</div>
							</div>
						</div>
                        <div>
                            <button class="btn btn--radius-2 btn--red" type="submit">Add</button>
                        </div>
                    </form:form>
                   
                    <%-- <form  action="/uploadImage" method="post" enctype="multipart/form-data">
                     <div class="form-row">
                    <div class="name">
                    <input type="file" name="imageFile">
                    </div>
                    <div >
                    <input type="submit" value="Upload " class="btn btn--radius-2 btn--red" >
                    </div>
                    </div>
                    </form> --%>
                    
                    
            </div>
        </div>
    </div>
</div>
    <!-- Jquery JS-->
    <script src="../../add/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="../../add/vendor/select2/select2.min.js"></script>
    <script src="../../add/vendor/datepicker/moment.min.js"></script>
    <script src="../../add/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="../../add/js/global.js"></script>
    
    

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>


