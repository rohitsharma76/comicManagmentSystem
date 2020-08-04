<%@ include file="../commonbms/header.jspf" %>
<%@ include file="../commonbms/navigation.jspf" %>
<script>

</script>
<div class="container">
	<table class="table " >
		<tr>
			<td>Welcome to your comic collection , you have ${totalRecords}
				comics in your collection</td>
		</tr>
		<tr>
			<td>

				<div class="grid-container">
					<c:forEach items="${comicsList}" var="comic">
						<div>${comic.comicName}
							<table style="width: 100%">
								<tr>

									<td><img alt="" src="/images/details.jpg"
										title="view details of this comic"></td>
									<td><a href="/update-comic?id=${comic.id}"><img alt=""
											src="/images/update.jpg"
											title="Update details of this comic "></a></td>
									<td><a href="/delete-comic?id=${comic.id}"><img alt=""
											src="/images/delete.jpg" title="delete this comic "></a></td>

								</tr>
							</table>
						</div>

					</c:forEach>
				</div>

			</td>
		</tr>
		</table>
		<table>
		<tr>
			<td>Number of records per page : ${elementsOnPage}</td>
		</tr>
		<tr style="white-space: none">
			<td>Page : ${currentPage} of ${totalPages}</td>
			<td><c:forEach var="counter" begin="1" end="${totalPages}">
					<a href="/bms/comicslist/${counter}"><c:out value="${counter}" /></a>&nbsp;&nbsp;
    					</c:forEach></td>
		</tr>
		<tr>
			<td>
				<div>
					<a class="button" href="/bms/addcomics">Add comics</a>
				</div>

			</td>
		</tr>
		</table>

	
</div>
<script>
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if (content.style.maxHeight){
      content.style.maxHeight = null;
    } else {
      content.style.maxHeight = content.scrollHeight + "px";
    } 
  });
}


function myFunction(id)
{
	alert(id);
var popup = document.getElementById(id);
popup.classList.toggle("show");
}
</script>
		<%-- <tr>
			<td>
				<table class="table table-striped">
			
					<thead>
						<tr>
							<th>Comic Name</th>
							<th style="white-space:nowrap">Comic character Name</th>
							<th style="white-space:nowrap" >serial Number of comic</th>
							<th></th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${comicsList}" var="comic">
							<tr><td style="white-space:nowrap">${comic.comicName}</td>
							<td>${comic.charcterName}</td>
							<td>${comic.serialNumber}</td>
							<td><a type="button" class="btn btn-success" href="/update-comic?id=${comic.id}">Update</a></td>
							<td><a type="button" class="btn btn-warning" href="/delete-comic?id=${comic.id}">Delete</a></td>
							</tr>
							<tr><td colspan="8">
							<button class="collapsible">details about ${comic.comicName} </button>
							<div class="content" >
							<table  style="width:100%; font-weight:bold" >
							<tr><td>publication House: </td><td>${comic.publicationHouse}</td></tr>
							<tr><td>Comic Type: </td><td>${comic.comicType}</td></tr>
							<tr><td>Artist: </td><td>${comic.artist}</td></tr>
							<tr><td>Price: </td><td>${wicomic.price}</td></tr>
							<tr><td>Language: </td><td>${comic.language}</td></tr>
							<tr><td>publication Year: </td><td>${comic.publlicationYear}</td></tr>
							<tr><td>Scanned ? </td><td>${comic.scanned}</td></tr>
							<tr><td>location of Comic : </td><td>${comic.comicLocation}</td></tr>
							<tr><td>Comments/Info about comic  :  </td><td>${comic.notes}</td></tr>
							</table>
							</div>
							</td></tr>
						</c:forEach>
						<tr><td>Number of records per page : ${elementsOnPage}</td></tr>
						<tr><td> Page : ${currentPage} of ${totalPages}</td>
						<td>
						 <c:forEach var="counter" begin="1" end="${totalPages}">
        					<a href="/bms/comicslist/${counter}"><c:out value="${counter}" /></a>&nbsp;&nbsp;
    					</c:forEach>

						</td></tr>
						</tbody>
				</table>
			</td>
		</tr> --%>
	

<%@ include file="../commonbms/footer.jspf" %>
