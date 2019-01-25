<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<tags:header title="Add Employee"/>

<div class="container mt-3">
	    	<form class="form-horizontal customerForm toggle-disabled" id="form1" method="post" action="customer.add">
	    		<div class="" role="tabpanel" data-example-id="togglable-tabs">
	    	<ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
				<li role="presentation" class="active"><a
					href="#tab_content1" id="home-tab" role="tab" data-toggle="tab"
					aria-expanded="true">Personal Information</a></li>
				<li role="presentation" class=""><a href="#tab_content2"
					role="tab" id="profile-tab" data-toggle="tab"
					aria-expanded="false">Organization</a></li>
				<li role="presentation" class=""><a href="#tab_content3"
					role="tab" id="profile-tab2" data-toggle="tab"
					aria-expanded="false">Salary Structure</a></li>
				<li role="presentation" class=""><a href="#tab_content4"
					role="tab" id="profile-tab3" data-toggle="tab"
					aria-expanded="false">Set Salaries</a></li>
					
			</ul>
			
				<div id="myTabContent" class="tab-content">
					<div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">
				            <br>
				            <br>
				            <div class="form-group row">
				                <label for="inputID" class="col-sm-2 col-form-label">ID</label>
				                <div class="col-sm-2">
				                 <input type="text" class="form-control" id="inputID" name="id">
				                </div>
				            </div>
				            <div class="form-group row">
				                <label for="inputEmployeeName" class="col-sm-2 col-form-label">Employee Name</label>
				                <div class="col-sm-6">
				                 <input type="text" class="form-control" id="inputEmployeeName" name="employeeName">
				                </div>
				            </div>
				            <div class="form-group row">
				                <label for="inputPost" class="col-sm-2 col-form-label">Post</label>
				                <div class="col-sm-5">
				                 <input type="text" class="form-control" id="inputPost" name="post">
				                </div>
				            </div>
				            <div class="form-group row">
				                <label for="inputRank" class="col-sm-2 col-form-label">Rank</label>
				                <div class="col-sm-10">
				                  <select name="rank">
				                    <option value="test">Dummy Value</option>
				                  </select>
				                </div>
				            </div>
				            <div class="form-group row">
				                <label for="inputRank" class="col-sm-2 col-form-label">Sex</label>
				                <div class="col-sm-10">
				                  <select name="sex">
				                    <option value="male">Male</option>
				                    <option value="female">Female</option>
				                    <option value="other">Other</option>
				                  </select>
				                </div>
				            </div>
				            <div class="form-group row">
				                <label for="inputRank" class="col-sm-2 col-form-label">Marital Status</label>
				                <div class="col-sm-10">
				                  <select name="maritalStatus" >
				                    <option value="married">Married</option>
				                    <option value="unmarried">Unmarried</option>
				                    <option value="widowed">Widowed</option>
				                    <option value="divorced">Divorced</option>
				                  </select>
				                </div>
				            </div>
				            <div class="form-group row">
				                <label for="inputOfficeCode" class="col-sm-2 col-form-label">Working Office Code</label>
				                <div class="col-sm-10">
				                  <select name="officeCode">
				                    <option value="test">Dummy Value</option>
				                  </select>
				                </div>
				            </div>
					</div>
		
					
					<div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">
						 <div class="mt-3">
				            <div class="form-group row">
				                <label for="inputAppointedDate" class="col-sm-2 col-form-label">Appointed Date</label>
				                <div class="col-sm-4">
				                 <input type="date" class="form-control" id="inputAppointedDate" name="appointedDate" form="addEmployeeForm">
				                </div>
				            </div>
				            <div class="form-group row">
				                <label for="inputPermanentDate" class="col-sm-2 col-form-label">Permanent Date</label>
				                <div class="col-sm-4">
				                 <input type="date" class="form-control" id="inputPermanentDate" name="permanentDate" form="addEmployeeForm">
				                </div>
				            </div>
				            <div class="form-group row">
				                <label for="inputLeftDate" class="col-sm-2 col-form-label">Retirement/Resigned Date</label>
				                <div class="col-sm-4">
				                 <input type="date" class="form-control" id="inputLeftDate" name="leftDate" form="addEmployeeForm">
				                </div>
				                <div class="col-sm-2">
				                  <button form="addEmployeeForm">Update</button>
				                </div>
				            </div>
				            <div class="form-group row">
				                <label for="inputBranch" class="col-sm-2 col-form-label">Branch</label>
				                <div class="col-sm-2">
				                  <select name="branch" id="inputBranch" form="addEmployeeForm">
				                    <option value="test">Dummy Value</option>
				                  </select>
				                </div>
				                <div class="col-sm-2">
				                  <input type="text" name="branchManual" form="addEmployeeForm">
				                </div>
				            </div>
				            <div class="form-group row">
				                <label for="inputDivision" class="col-sm-2 col-form-label">Division</label>
				                <div class="col-sm-2">
				                  <select name="division" id="inputDivision" form="addEmployeeForm">
				                    <option value="test">Dummy Value</option>
				                  </select>
				                </div>
				                <div class="col-sm-2">
				                  <input type="text" name="divisionManual" form="addEmployeeForm">
				                </div>
				            </div>
				            <div class="form-group row">
				                <label for="inputEncashPolicyType" class="col-sm-2 col-form-label">Encash Policy Type</label>
				                <div class="col-sm-2">
				                  <select name="encashPolicyType" id="inputEncashPolicyType" form="addEmployeeForm">
				                    <option value="test">Dummy Value</option>
				                  </select>
				                </div>
				                <div class="col-sm-2">
				                  <input type="text" name="encashPolicyTypeManual" form="addEmployeeForm">
				                </div>
				            </div>
				            <div class="form-group row">
				                <label for="inputEmployeeType" class="col-sm-2 col-form-label">Employee Type</label>
				                <div class="col-sm-2">
				                  <select name="employeeType" id="inputEmployeeType" form="addEmployeeForm">
				                    <option value="test">Dummy Value</option>
				                  </select>
				                </div>
				                <div class="col-sm-2">
				                  <input type="text" name="employeeTypeManual" form="addEmployeeForm">
				                </div>
				            </div>
			
			          </div>
					</div>
		     
		     		<div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="profile-tab2">
		     		
		     			<div class="row">
				            <div class="col-sm-4">
				                  <div class="mt-3">
				                    <div class="row">
				                        <div class="col">
				                          <label for="inputBankAccountNumber">Bank Account Number</label>
				                        </div>
				                        <div class="col">
				                         <input type="text" class="form-control" id="inputBankAccountNumber" name="bankAccountNumber">
				                        </div>
				                    </div>
				                    <div class="row">
				                        <div class="col">
				                          <label for="inputPanNumber">PAN Number</label>
				                        </div>
				                        <div class="col">
				                         <input type="text" class="form-control" id="inputPanNumber" name="panNumber">
				                        </div>
				                    </div>
				                    <div class="row">
				                        <div class="col">
				                          <label for="inputCITNumber">CIT Number</label>
				                        </div>
				                        <div class="col">
				                         <input type="text" class="form-control" id="inputCITNumber" name="citNumber">
				                        </div>
				                    </div>
				                    <div class="row">
				                        <div class="col">
				                          <label for="inputPFAccountNumber">PF Account Number</label>
				                        </div>
				                        <div class="col">
				                         <input type="text" class="form-control" id="inputPFAccountNumber" name="pfAccountNumber">
				                        </div>
				                    </div>
				                    <div class="row mt-5">
				                        <div class="col">
				                          <label for="inputNewMonthlyCITAmount">New Monthly CIT Amount</label>
				                        </div>
				                        <div class="col">
				                         <input type="text" class="form-control" id="inputNewMonthlyCITAmount" name="newMonthlyCITAmount">
				                        </div>
				                    </div>
				                    <div class="row">
				                        <div class="col">
				                          <label for="inputLessInsurance">Less Insurance</label>
				                        </div>
				                        <div class="col">
				                         <input type="text" class="form-control" id="inputLessInsurance" name="lessInsurance">
				                        </div>
				                        <div class="col">
				                          <button>Add Insurance</button>
				                        </div>
				                    </div>
				                  </div>
				            </div>
				            <div class="col-sm-8 mt-3">
				              <div class="row-sm-8">
				                <h6><center>Employee Detail</center></h6>
				                <table class="table table-sm table-hover table-bordered table-striped">
				                  <thead>
				                    <tr>
				                      <th scope="col">#</th>
				                      <th scope="col">EmpType</th>
				                      <th scope="col">compensation_head</th>
				                      <th scope="col">fromdate</th>
				                      <th scope="col">todate</th>
				                      <th scope="col">Amount</th>
				                      <th scope="col">tmonth</th>
				                    </tr>
				                  </thead>
				                  <tbody>
				                    <tr>
				                      <th scope="row">1</th>
				                      <td>...</td>
				                      <td>...</td>
				                      <td>...</td>
				                      <td>...</td>
				                      <td>...</td>
				                      <td>...</td>
				                    </tr>
				                  </tbody>
				                </table>
				              </div>
				              <div class="row">
				                <div class="col-sm-3">
				                  <label for="inputCompID">Comp ID</label>
				                  <input type="text" class="form-control" id="inputCompID" name="compID">
				                </div>
				                <div class="col-sm-3">
				                  <label for="inputFromDate">From Date</label>
				                  <input type="date" class="form-control" id="inputFromDate" name="fromDate">
				                </div>
				                <div class="col-sm-3">
				                  <label for="inputToDate">To Date</label>
				                  <br>
				                  <input type="date" class="form-control" id="inputToDate" name="toDate">
				                </div>
				                 <div class="col-sm-3">
				                  <label for="inputAmount">Amount</label>
				                  <br>
				                  <input type="number" class="form-control" id="inputAmount" name="amount">
				                </div>
				              </div>
				              <div class="row mt-3">
				                <div class="col" align="right">
				                  <rt><button type="button">Update</button>
				                  <button type="button">Delete</button></rt>
				                </div>
				              </div>
				            </div>
				          </div>
				      
		     		</div>
		     		
		     		<div role="tabpanel" class="tab-pane fade" id="tab_content4" aria-labelledby="profile-tab3">
		     			<div class="row">
		            <div class="col-sm-3">
		                  <div class="mt-3">
		                    <div class="form-group row">
		                        <div class="col">
		                          <label for="inputCompensation">Compensation</label>
		                        </div>
		                        <div class="form-group col">
		                          <select name="compensation" id="inputCompensation" form="addEmployeeForm">
		                            <option value="test">Dummy Value</option>
		                          </select>
		                        </div>
		                    </div>
		                    <div class="form-group row">
		                        <div class="col">
		                          <label for="inputFromDate">From Date</label>
		                        </div>
		                        <div class="form-group col">
		                         <input type="date" class="form-control" id="inputFromDate" name="fromDate">
		                        </div>
		                    </div>
		                    <div class="form-group row">
		                        <div class="col">
		                          <label for="inputToDate">To Date</label>
		                        </div>
		                        <div class="form-group col">
		                         <input type="date" class="form-control" id="inputToDate" name="toDate">
		                        </div>
		                    </div>
		                    <div class="form-group row">
		                        <div class="col">
		                          <label for="inputRateAmount">Rate Amount</label>
		                        </div>
		                        <div class="form-group col">
		                         <input type="text" class="form-control" id="inputRateAmount" name="rateAmount">
		                        </div>
		                    </div>
		                    <div class="form-group row">
		                        <div class="col">
		                          <label for="inputEmployeeType">Employee Type</label>
		                        </div>
		                        <div class="form-group col">
		                          <select name="employeeType" id="input" form="addEmployeeForm">
		                            <option value="test">Dummy Value</option>
		                          </select>
		                        </div>
		                    </div>
		                    <div align="right"> <button>Add</button></div>
		                  </div>
		            </div>
		
		            <div class="col-sm-3 mt-3">
		              <div class="form-group row">
		                  <div class="col">
		                    <label for="inputBasicSalary">Basic Salary</label>
		                  </div>
		                  <div class="form-group col">
		                   <input type="text" class="form-control" id="inputBasicSalary" name="basicSalary">
		                  </div>
		              </div>
		              <div class="form-group row">
		                  <div class="col">
		                    <label for="inputPFAmount">PF Amount</label>
		                  </div>
		                  <div class="form-group col">
		                   <input type="text" class="form-control" id="inputPFAmount" name="pfAmount">
		                  </div>
		              </div>
		              <div class="form-group row">
		                  <div class="col">
		                    <label for="inputDearAllowance">Dear Allowance</label>
		                  </div>
		                  <div class="form-group col">
		                    <input type="text" class="form-control" id="inputDearAllowance" name="dearAllowance">
		                  </div>
		              </div>
		              <div class="form-group row">
		                  <div class="col">
		                    <label for="inputHardshipAllowance">Program/Hardship Allowance</label>
		                  </div>
		                  <div class="form-group col">
		                    <input type="text" class="form-control" id="inputHardshipAllowance" name="hardshipAllowance">
		                  </div>
		              </div>
		            </div>
		
		            <div class="col-sm-6 mt-3">
		              <h6>Leave Without Pay</h6>
		                <table class="table table-sm table-hover table-bordered table-striped">
		                  <thead>
		                    <tr>
		                      <th scope="col">StaffCode</th>
		                      <th scope="col">LeaveDate</th>
		                      <th scope="col">LWP_Days</th>
		                    </tr>
		                  </thead>
		                  <tbody>
		                    <tr>
		                      <th scope="row">1</th>
		                      <td>...</td>
		                      <td>...</td>
		                      <td>...</td>
		                    </tr>
		                  </tbody>
		                </table>
		            </div>
		          </div>
		     		</div>
		      
		      	</div>
	    		</div>
	    
	    	</form>
	    	
	    	<!-- Form Buttons Section -->
		      <div class="mt-5" align="center">
		          <button type="button" class="btn btn-success" form="addEmployeeForm">New</button>
		          <button type="submit" class="btn btn-primary" form="addEmployeeForm">Submit</button>
		          <button type="reset" class="btn btn-danger" form="addEmployeeForm">Delete</button>
		      </div>
	    	
	    </div>
	     
	</div>

      


</div>

<tags:footer/>