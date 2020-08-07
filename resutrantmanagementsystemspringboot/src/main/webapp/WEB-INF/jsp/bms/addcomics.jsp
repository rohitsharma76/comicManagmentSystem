<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>welcome to comic Management System </title>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="../../vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="../../vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../css/util.css">
	<link rel="stylesheet" type="text/css" href="../../css/main.css">
<!--===============================================================================================-->
<!-- Font Icon -->

    <link rel="stylesheet" href="../../vendor/jquery-ui/jquery-ui.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="../../css/style-add.css">

    
</head>
<body>
	
	
	<div class="container-login100" style="background-image: url('../../images/bgcomic.jpg');">
		<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
			<form:form class="login100-form validate-form" action="/bms/addcomics" modelAttribute="ComicDetail" method="post">
				<span class="login100-form-title p-b-37">
					Add comics
				</span>
				 <div class="form-row">
                            <div class="form-group">
                                <form:label path = "comicName">comic Name</form:label>
                                <form:input path = "comicName" type="text" class="form-input"  />
                            </div>
                  </div>
			<%-- 	<div class="wrap-input100 validate-input m-b-20" data-validate="Enter Comic Name">
					<form:label path = "comicName">Comic Name</form:label>
					<form:input path = "comicName"  maxlength="200" class="input100" />
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100  m-b-20" >
					<form:label path = "charcterName">Comic character Name</form:label>
					 <form:select path = "charcterName" class="js-example-basic-single">
                     <form:option value = "NONE" label = "Select"/>
                     <form:options items = "${characterList}" />
                     </form:select>
					<span class="focus-input100"></span>
				</div> --%>

				<div class="container-login100-form-btn">
					<button class="login100-form-btn">
						Sign In
					</button>
				</div>

				<div class="text-center p-t-57 p-b-20">
					<span class="txt1">
						Comics Management System
					</span>
				</div>

				
				<div class="text-center">
					<a href="#" class="txt2 hov1">
						Sign Up
					</a>
				</div>
			</form:form>

			
		</div>
	</div>
	
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="../../vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="../../vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="../../vendor/bootstrap/js/popper.js"></script>
	<script src="../../vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="../../vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="../../vendor/daterangepicker/moment.min.js"></script>
	<script src="../../vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="../../vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="../../js/main.js"></script>

</body>
</html>


<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="../commonbms/header.jspf" %>
<%@ include file="../commonbms/navigation.jspf" %>
	<div class="container">
		<table class="table">
			<tr>
				<td>Add New comic</td>
			</tr>
			<tr>
				<td>
	<form:form method="POST" action="/bms/addcomics" modelAttribute="ComicDetail">
		<table>
		<tr>
               <td><form:hidden path = "id"></form:hidden></td>
         </tr>
            <tr>
               <td><form:label path = "comicName">Comic Name</form:label></td>
               <td><form:input path = "comicName"  maxlength="200"/></td>
            </tr>
             <tr>
               <td><form:label path = "charcterName">Comic character Name</form:label></td>
               <td>
                  <form:select path = "charcterName">
                     <form:option value = "NONE" label = "Select"/>
                     <form:options items = "${characterList}" />
                  </form:select>     	
               </td>
            </tr>
             <tr>
               <td><form:label path = "publicationHouse">publication House</form:label></td>
               <td>
                  <form:select path = "publicationHouse">
                     <form:option value = "NONE" label = "Select"/>
                     <form:options items = "${publicationList}" />
                  </form:select>     	
               </td>
            </tr>
            <tr>
               <td><form:label path = "comicType">Comic Type</form:label></td>
               <td>
                  <form:select path = "comicType">
                     <form:option value = "NONE" label = "Select"/>
                     <form:options items = "${comicTypeList}" />
                  </form:select>     	
               </td>
            </tr>
            <tr>
               <td><form:label path = "serialNumber">serial Number of comic</form:label></td>
               <td><form:input path = "serialNumber"  maxlength="200"/></td>
            </tr>  
            <tr>
               <td><form:label path = "price">price</form:label></td>
               <td><form:input path = "price"  maxlength="200"/></td>
            </tr>
             <tr>
               <td><form:label path = "publlicationYear">publication Year</form:label></td>
               <td><form:input path = "publlicationYear"  maxlength="200"/></td>
            </tr>
            <tr>
               <td><form:label path = "artist">Artist Name</form:label></td>
               <td><form:input path = "artist"  maxlength="200"/></td>
            </tr>
            
             <tr>
               <td><form:label path = "language">Language</form:label></td>
               <td>
                  <form:select path = "language">
                     <form:option value = "NONE" label = "Select"/>
                     <form:options items = "${lanugageList}" />
                  </form:select>     	
               </td>
            </tr>
             <tr>
               <td><form:label path = "scanned">Scanned</form:label></td>
               <td>Yes<form:radiobutton path="scanned" value="Y"/></td>
               <td>No<form:radiobutton path="scanned" value="N"/></td>
            </tr>
             <tr>
               <td><form:label path = "comicLocation">location of Comic</form:label></td>
               <td><form:textarea path = "comicLocation" rows="5" /></td>
            </tr>  	   
             <tr>
               <td><form:label path = "notes">Comments/Notes about comic </form:label></td>
               <td><form:textarea path = "notes" rows="5" /></td>
            </tr>  	   	  
            <tr>
               <td colspan = "2">
                  <input type = "submit" value = "Submit"/>
               </td>
            </tr>
         </table>     	   	  
           
	</form:form>
	
					<form method="post">
						<div class="form-group">
							<fieldset class="form-group">
								<label for="address" style="margin-left: 30px;">address:</label>
								<input type="text" name="address" required="required" "/> <label
									for="city" style="margin-left: 30px;">city:</label> <input
									type="text" name="city" required="required" "/> <label
									for="state" style="margin-left: 30px;">state</label> 
									<input
									type="text" name="state" required="required" "/>
							</fieldset>
							<button type="submit" class="btn btn-success">Submit</button>

						</div>
					</form>
				</td>

			</tr>
		</table>

	</div>
<%@ include file="../common/footer.jspf" %> --%>