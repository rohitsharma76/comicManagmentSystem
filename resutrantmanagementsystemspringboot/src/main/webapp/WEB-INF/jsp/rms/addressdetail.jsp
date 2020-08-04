<%@ include file="../common/header.jspf" %>
<%@ include file="../common/navigation.jspf" %>
<div class="container">
	<table class="table ">
		<tr>
			<td> Welcome ${resturentName}  These are Our Branches </td>
		</tr>
		<tr>
			<td>
				<table class="table table-striped">
			
					<thead>
						<tr>
							<th>Address</th>
							<th>City</th>
							<th>State</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${address}" var="add">
							<tr><td>${add.address}</td>
							<td>${add.city}</td>
							<td>${add.state}<td>
							<td><a type="button" class="btn btn-warning" href="/delete-branch?id=${add.id}">Delete</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td>
			<div> <a class="button" href="/rms/admin/addBranches">Add Branches</a></div>
			
			</td>
		</tr>

	</table> 
		</div>
<%@ include file="../common/footer.jspf" %>
