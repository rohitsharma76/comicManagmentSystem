<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="../../common/header.jspf" %>
<%@ include file="../../common/navigation.jspf" %>
	<div class="container">
		<table class="table">
			<tr>
				<td>Add New Branches for ${resturentName}</td>
			</tr>
			<tr>
				<td>
	<form:form method="POST" action="/rms/admin/addBranches" modelAttribute="addressDetail">
		<table>
            <tr>
               <td><form:label path = "address">Address</form:label></td>
               <td><form:input path = "address"  maxlength="200"/></td>
            </tr>
            <tr>
               <td><form:label path = "city">City</form:label></td>
               <td><form:input path = "city" maxlength="20"/></td>
            </tr> 
           
            <tr>
               <td><form:label path = "state">State</form:label></td>
               <td>
                  <form:select path = "state">
                     <form:option value = "NONE" label = "Select"/>
                     <form:options items = "${stateList}" />
                  </form:select>     	
               </td>
            </tr>   	  
            <tr>
               <td colspan = "2">
                  <input type = "submit" value = "Submit"/>
               </td>
            </tr>
         </table>  
	</form:form>
	
				<%-- 	<form method="post">
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
					</form> --%>
				</td>

			</tr>
		</table>

	</div>
<%@ include file="../../common/footer.jspf" %>