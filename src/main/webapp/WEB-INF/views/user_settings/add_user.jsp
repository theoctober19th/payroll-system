<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<tags:header title="Add User"/>

<div class="container mt-3">
<spring:url value="/user/createUser" var="formUrl"/>
	    	<form class="form-horizontal customerForm toggle-disabled" id="newUserForm" method="post" action="${formUrl }">
	    		<div class="" role="tabpanel" data-example-id="togglable-tabs">
		    	<ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
					<li role="presentation" class="active"><a
						href="#tab_content1" id="home-tab" role="tab" data-toggle="tab"
						aria-expanded="true">Personal Information</a></li>
					<li role="presentation" class=""><a href="#tab_content2"
						role="tab" id="profile-tab" data-toggle="tab"
						aria-expanded="false">Contact Information</a></li>
					<li role="presentation" class=""><a href="#tab_content3"
						role="tab" id="profile-tab2" data-toggle="tab"
						aria-expanded="false">Login Credentials</a></li>
						
				</ul>
			
				<div id="myTabContent" class="tab-content">
					<div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">
				            <br>
				            <br>
				            
				            <div class="form-row">
							    <div class="form-group col-md-4">
							      <label for="inputFirstName">First Name</label>
							      <input type="text" class="form-control" id="inputFirstName" required="required" name="firstName">
							    </div>
							    <div class="form-group col-md-4">
							      <label for="inputMiddleName">Middle Name</label>
							      <input type="text" class="form-control" id="inputMiddleName" name="middleName" >
							    </div>
							    <div class="form-group col-md-4">
							      <label for="inputLastName">Last Name</label>
							      <input type="text" class="form-control" id="inputLastName" required="required" name="lastName">
							    </div>
							  </div>
							  
							  <div class="form-row">
							    <div class="form-group col-md-6">
							      <label for="inputSex">Sex</label>
							      <select id="inputSex" class="form-control" name="sex">
							        <option selected>Female</option>
							        <option>Male</option>
							        <option>Other</option>
							      </select>
							    </div>
							    <div class="form-group col-md-6">
							      <label for="inputDOB">Date Of Birth</label>
							      <input type="date" class="form-control" id="inputDOB" name="dateOfBirth" >
							    </div>
							  </div>
							
					</div>
		
					
					<div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">
						 <div class="form-row">
						 	<div class="form-group col-md-6">
						     	<label for="inputEmail">Email</label>
						    	<input type="email" class="form-control" id="inputEmail" name="email" required="required">
						    </div>
						    <div class="form-group col-md-6">
						     	<label for="inputPhone">Phone</label>
						    	<input type="text" class="form-control" id="inputPhone" name="phone" required="required">
						    </div>
						    
						    <div class="form-row">
							    <div class="form-group col-md-6">
							      <label for="inputProvince">Province</label>
							      <select id="inputProvince" class="form-control" name="province">
							        <option selected>Province No. 1</option>
							        <option>Province No. 2</option>
							        <option>Province No. 3</option>
							        <option >Gandaki</option>
							        <option>Province No. 5</option>
							        <option>Karnali</option>
							        <option>Sudurpashchim</option>
							      </select>
							    </div>
							    
							    <div class="form-group col-md-6">
							      <label for="inputLocalBody">Municipality/Village Council</label>
							      <select id="inputLocalBody" class="form-control" name="localBody">
							        <option selected>Dummy Value</option>
							      </select>
							    </div>
							    
							</div>
							
							<div class="form-row">
							    <div class="form-group col-md-4">
							     	<label for="inputWardNumber">Ward Number</label>
							    	<input type="number" class="form-control" id="inputWardNumber" name="wardNumber" required="required">
						    	</div>
							    
							    <div class="form-group col-md-8">
							     	<label for="inputStreetAddress">Street Address</label>
							    	<input type="text" class="form-control" id="inputStreetAddress" name="streetAddress" required="required">
						    	</div>
							    
							</div>
						    
						    
						</div>
					</div>
		     
		     		<div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="profile-tab2">
		     			<div class="form-group">
						    <label for="inputUsername">Username</label>
						    <input type="text" class="form-control" id="inputUsername" name="username" required="required">
						</div>
						<div class="form-group">
						    <label for="inputPassword">Password</label>
						    <input type="password" class="form-control" id="inputPassword" name="password" required="required">
						</div>
						<div class="form-group">
						    <label for="inputPassword2">Confirm Password</label>
						    <input type="password" class="form-control" id="inputPassword2" name="password2" required="required">
						</div>
		     		</div>
		     		

		      
		      	</div>
	    		</div>
	    
	    	
	    	<!-- Form Buttons Section -->
		      <div class="mt-5" align="center">
		          <button type="button" class="btn btn-success">New</button>
		          <button type="submit" class="btn btn-primary" form="newUserForm">Submit</button>
		          <button type="reset" class="btn btn-danger" form="newUserForm">Clear</button>
		      </div>
		      
		      </form>
	    	
	    </div>
	     
	</div>

      


</div>

<tags:footer/>