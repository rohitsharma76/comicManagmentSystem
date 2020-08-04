<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
<title>welcome to RMS - Restruent Managment System</title>
<link href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial;
}

* {
  box-sizing: border-box;
}

form.example input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 80%;
  background: #f1f1f1;
}

form.example button {
  float: left;
  width: 20%;
  padding: 10px;
  background: #2196F3;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
}

form.example button:hover {
  background: #0b7dda;
}

form.example::after {
  content: "";
  clear: both;
  display: table;
}
</style>
</head>
<body>
<%@ include file="../../common/navigation.jspf" %>
	<div class="container">
		<table class="table" >
			<caption>Search By City</caption>
			<tr >
				<td ><font color="red">${errorMessage}</font>
			</tr>
			<tr>
			<td >	
					<form method="post" action="/rms/search/branchSearchCity">
					<input type="text" placeholder="Search By City.." name="search">
  					<button type="submit"><i class="fa fa-search"></i></button>
					</form>
					</td>
			
			</tr>
		</table>
		
	</div>
<%@ include file="../../common/footer.jspf" %>