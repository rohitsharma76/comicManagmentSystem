<%@ include file="../common/header.jspf" %>
<%@ include file="../common/navigation.jspf" %>
	<div class="container">
		<table class="table">

			<tr>
				<td>Welcome ${resturentName} 
				 to Restaurant Management System</td>
			</tr>
			<tr>
				<td>you can manage Various sections here like Admin section and
					kitchen section</td>
			</tr>
			<tr>
				<td>Admin Section</td>
			</tr>
			<tr>
				<td><a type="button" href="/rms/addressdetail"
					class="btn btn-success"> Manage Branches</a></td>
			</tr>
			
			<tr>
				<td><a type="button" href="/rms/search/branchSearchCity"
					class="btn btn-success">Search By Branch/city </a></td>
			</tr>
			<tr>
				<td><a type="button" href="/rms/menudetail"
					class="btn btn-success">Manage  Menu </a></td>
			</tr>

		</table>
		
	</div>
<%@ include file="../common/footer.jspf" %>