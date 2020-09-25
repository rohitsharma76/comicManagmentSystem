<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
<title>welcome to BMS - comics/books Managment System</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="author" content="colorlib.com">
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet" />
    <link href="../../search/css/main.css" rel="stylesheet" />
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 

</head>
<body>
 <iframe src="/bms/menu" height="80px"  width="100%" scrolling="no" >
</iframe>
	<div class="s01">
	 <form   method="post">
	<fieldset>
          <legend>search your amazing comic collection</legend>
        </fieldset>
        <div class="inner-form">
          <div class="input-field first-wrap">
            <input id="search" type="text" placeholder="search by comic Name or artist" name="keyword"/>
          </div>
           <div class="input-field third-wrap">
  <button type="submit" class="btn-search">Search</button></div>
</div>

</div>
</form>



	</div>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>


<%-- <%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

	 <div class="s01">
		<table class="table" style="background-color: gray;">
			
			<tr>
				<td>
				<p style="font-weight: bold;color: white " >Search By Comic Name Or Artist Name:</p>
<form class="example"  method="post">
  <input type="text" placeholder="Search By Comic Name or artist .." name="keyword">
  <button type="submit"><i class="fa fa-search"></i></button>
</form>
	
	
				</td>

			</tr>
		</table>


<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="author" content="colorlib.com">
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet" />
    <link href="../../search/css/main.css" rel="stylesheet" />
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
  </head>
  <body> <iframe src="/bms/menu" height="80px"  width="100%" scrolling="no" >
</iframe>
   <iframe src="/bms/menu" height="80px"  width="100%" scrolling="no" >
</iframe>
    <div class="s01">
      <form method="post" action="/bms/searchcomics">
        <fieldset>
          <legend>search your amazing comic collection</legend>
        </fieldset>
        <div class="inner-form">
          <div class="input-field first-wrap">
            <input id="search" type="text" placeholder="search by comic Name or artist" name="keyword"/>
          </div>
        
          <div class="input-field third-wrap">
            <button class="btn-search" type="button">Search</button>
          </div>
        </div>
      </form>
    </div>
  </body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
 --%> 