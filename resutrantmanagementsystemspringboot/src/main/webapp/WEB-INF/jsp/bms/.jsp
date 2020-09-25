<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="../commonbms/searchHeader.jspf" %>
<%@ include file="../commonbms/navigation.jspf" %>
	<div class="container">
		<table class="table">
			<tr>
				<td>Search comic By Comic Name/ Publication House/ Artists/ comic Character</td>
			</tr>
			<tr>
				<td>
	<%-- <form:form method="POST" action="/bms/addcomics" modelAttribute="ComicDetail">
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
           
	</form:form> --%>
	
				</td>

			</tr>
		</table>

	</div>
<%@ include file="../common/footer.jspf" %>