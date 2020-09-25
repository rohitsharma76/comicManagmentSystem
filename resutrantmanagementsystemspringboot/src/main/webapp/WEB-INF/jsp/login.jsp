<%@ include file="common/header.jspf" %>
	<div class="container">
		<table class="table" >
			<caption>welcome to RMS</caption>
			<tr >
				<td ><font color="red">${errorMessage}</font>
			</tr>
			<tr>
			<td >	
					<form method="post">
					<div class="form-group">
					<fieldset class="form-group">
    					<label for="name" style="margin-left: 30px;">Name:</label>
    					<input type="text" name="user" required="required" "/>
  					<br/>
    					<label for="pwd">password:</label>
    					<input type="password" name="password"
									required="required"  />
					</fieldset>
  					</div>
  					<button type="submit" class="btn btn-success">Submit</button>
					</form>
					</td>
			
			</tr>
		</table>
		
	</div>
<%@ include file="common/footer.jspf" %>