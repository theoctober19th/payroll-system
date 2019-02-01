<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<tags:header title="Edit User"/>

<div class="container mt-3">
<%-- <b style="color:${messageColor};">${message}</b><br> --%>

<%-- ${user } --%>

<spring:url value="/user/updateUser/${user.id }" var="formUrl"/>
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
						aria-expanded="false">Account Information</a></li>
						
				</ul>
			
				<div id="myTabContent" class="tab-content">
					<div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">
				            <br>
				            <br>
				            
				            <div class="form-row">
							    <div class="form-group col-md-4">
							      <label for="inputFirstName">First Name</label>
							      <input type="text" class="form-control" id="inputFirstName" name="firstName" value="${user.firstName }">
							    </div>
							    <div class="form-group col-md-4">
							      <label for="inputMiddleName">Middle Name</label>
							      <input type="text" class="form-control" id="inputMiddleName" name="middleName" value="${user.middleName }">
							    </div>
							    <div class="form-group col-md-4">
							      <label for="inputLastName">Last Name</label>
							      <input type="text" class="form-control" id="inputLastName"  name="lastName" value="${user.lastName }">
							    </div>
							  </div>
							  
							  <div class="form-row">
							    <div class="form-group col-md-6">
							      <label for="inputSex">Sex</label>
							      <select id="inputSex" class="form-control" name="sex">
							        <option <c:if test="${user.sex eq 'Female'}">selected</c:if>>Female</option>
							        <option <c:if test="${user.sex eq 'Male'}">selected</c:if>>Male</option>
							        <option <c:if test="${user.sex eq 'Other'}">selected</c:if>>Other</option>
							      </select>
							    </div>
							    <div class="form-group col-md-6">
							      <label for="inputDOB">Date Of Birth</label>
							      <input type="date" class="form-control" id="inputDOB" name="dateOfBirth" value="${user.dateOfBirth }" >
							    </div>
							  </div>
							
					</div>
		
					
					<div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">
						 <div class="form-row">
						 	<div class="form-group col-md-6">
						     	<label for="inputEmail">Email</label>
						    	<input type="email" class="form-control" id="inputEmail" name="email" value="${user.email}">
						    </div>
						    <div class="form-group col-md-6">
						     	<label for="inputPhone">Phone</label>
						    	<input type="text" class="form-control" id="inputPhone" name="phoneNumber" value="${user.phoneNumber}" >
						    </div>
						    
						    <div class="form-row">
							    <div class="form-group col-md-4">
							      <label for="inputProvince">Province</label>
							      <select id="inputProvince" class="form-control" name="addressInfo.provinceID">
							      
						      	<c:forEach items="${provinceList}" var="province">
							      		<option value="${province.id}" <c:if test="${province.id eq user.addressInfo.provinceID}" >selected</c:if>>${province.provinceName}</option>
							      	</c:forEach>
							      	
							      </select>
							    </div>
							    
							    <div class="form-group col-md-4">
							      <label for="inputDistrict">District</label>
							      <select id="inputDistrict" class="form-control" name="addressInfo.districtID">
							        
									<c:forEach items="${districtList}" var="district">
							      		<option value="${district.id}" <c:if test="${district.id eq user.addressInfo.districtID}" >selected</c:if>>${district.districtName}</option>
							      	</c:forEach>
																        
							      </select>
							    </div>
							    
							    <div class="form-group col-md-4">
							      <label for="inputLocalBody">Municipality/Village Council</label>
							      <input type="text" class="form-control" id="inputLocalBody" name="addressInfo.villageMunicipality" value="${user.addressInfo.villageMunicipality }" >
							    </div>
							    
							</div>
							
							<div class="form-row">
							    <div class="form-group col-md-4">
							     	<label for="inputWardNumber">Ward Number</label>
							    	<input type="number" class="form-control" id="inputWardNumber" name="addressInfo.wardNumber" value="${user.addressInfo.wardNumber }">
						    	</div>
							    
							    <div class="form-group col-md-8">
							     	<label for="inputStreetAddress">Street Address</label>
							    	<input type="text" class="form-control" id="inputStreetAddress" name="addressInfo.streetAddress" value="${user.addressInfo.streetAddress }" >
						    	</div>
							    
							</div>
						    
						    
						</div>
					</div>
		     
		     		<div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="profile-tab2">
		     			<div class="form-row">
						    <label for="inputUsername">Username</label>
						    <input type="text" class="form-control" id="inputUsername" name="loginInfo.username" value="${user.loginInfo.username}">
						</div>
						
						<div class="form-row">
							    <div class="form-group col-md-6">
							      <label for="inputStartDateAD">Activation Date(AD) ${user.accountInfo.activationDate}</label>
							      <input type="date" class="form-control" id="inputStartDateAD" name="accountInfo.activationDate" value="${user.accountInfo.activationDate }">
							    </div>
							    <div class="form-group col-md-6">
							      <label for="inputStartDateBS">Activation Date(BS)</label>
							      <input type="date" class="form-control" id="inputStartDateBS"  >
							    </div>
						 </div>
						 <div class="form-row">
							    <div class="form-group col-md-6">
							      <label for="inputEndDateAD">Expiry Date(AD)</label>
							      <input type="date" class="form-control" id="inputEndDateAD" name="accountInfo.expiryDate" value="${user.accountInfo.expiryDate }" >
							    </div>
							    <div class="form-group col-md-6">
							      <label for="inputEndDateBS">Expiry Date(BS)</label>
							      <input type="date" class="form-control" id="inputEndDateBS"  >
							    </div>
						 </div>
						 <div class="form-row">
						 		
						 		<div class="form-group col-md-6">
							      <label for="inputRole">Role</label>
							      <select id="inputRole" class="form-control" name="accountInfo.roleID">
							        <option <c:if test="${user.accountInfo.roleID eq 1 }">selected</c:if> value="1">Admin(Edit, Delete, View)</option>
							        <option <c:if test="${user.accountInfo.roleID eq 2 }">selected</c:if> value="2">User(View)</option>
							      </select>
							    </div>
							    
							    <div class="form-group col-md-6">
							      <label for="inputPasswordChangeFreq">Password Change Frequency</label>
							      <input type="number" class="form-control" id="inputPasswordChangeFreq" name="accountInfo.passwordChangeFreq" value="${user.accountInfo.passwordChangeFreq }" >
							    </div>
							    
						 </div>
		     		</div>
		     		

		      
		      	</div>
	    		</div>
	    
	    	
	    	<!-- Form Buttons Section -->
		      <div class="mt-5" align="center">
		          <button type="submit" class="btn btn-primary" form="newUserForm">Update</button>
		          <button type="reset" class="btn btn-danger" form="newUserForm">Clear</button>
		      </div>
		      
		      </form>
	    	
	    </div>
	     
	</div>

      


</div>

<tags:footer/>