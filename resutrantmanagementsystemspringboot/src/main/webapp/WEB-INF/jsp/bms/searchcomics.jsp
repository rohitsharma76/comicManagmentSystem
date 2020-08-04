<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="../commonbms/searchHeader.jspf" %>
<%@ include file="../commonbms/navigation.jspf" %>
	<div class="container">
		<table class="table" style="background-color: gray;">
			<tr style="font-weight: bold;color: white ">
				<td>Search your collection  by Comic Name/ Publication House/ Artists/ comic Character</td>
			</tr>
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

	</div>
<%@ include file="../common/footer.jspf" %>