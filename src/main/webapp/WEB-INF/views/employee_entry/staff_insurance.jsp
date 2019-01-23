<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<tags:header title="Staff Insurance"/>

<div class="container mt-3">

    	<form class="form-horizontal customerForm toggle-disabled" id="staff_insurance" method="post" action="staffInsurance">
    	
    		<div class="row">
		        <div class="form-group col-sm-4">
		          <label for="inputStaffCode">Staff Code</label>
		          <input type="text" class="form-control" id="inputStaffCode" name="staffCode">
		        </div>
		        <div class="form-group col-sm-4">
		          <label for="inputStaffName">Staff Name</label>
		          <input type="text" class="form-control" id="inputStaffName" name="staffName">
		        </div>
		        <div class="form-group col-sm-4">
		          <label for="inputPost">Post</label>
		          <input type="text" class="form-control" id="inputPost" name="post">
		        </div>
		      </div>
		      
		      <br>
		      <h3>Insurance Details</h3>
		      <br>
				      
		      <div class="row">
		        <div class="form-group row">
		          <div class="col-sm-4">
		            <label for="inputInsuranceID">Insurance ID</label>
		            <input type="text" class="form-control" id="inputInsuranceID" name="insuranceID">
		          </div>
		          <div class="col-sm-4">
		            <label for="inputCompanyName">Comapany Name</label>
		            <select name="companyName">
		              <option value="test">Dummy Option</option>
		            </select>
		          </div>
		          <div class="col-sm-4">
		            <label for="inputPolicyNumber">Policy Number</label>
		            <input type="text" class="form-control" id="inputPolicyNumber" name="policyNumber">
		          </div>
		        </div>
		
		        <div class="form-group row">
		          <div class="col-sm-4">
		            <label for="inputInsuredAmount">Insured Amount</label>
		              <input type="text" class="form-control" id="inputInsuredAmount" name="insuredAmount">
		          </div>
		          <div class="col-sm-4">
		            <label for="inputEffectedDate">Effected Date</label>
		            <input type="date" class="form-control" id="inputEffectedDate" name="effectedDate">
		          </div>
		          <div class="col-sm-4">
		            <label for="inputEndDate">End Date</label>
		              <input type="date" class="form-control" id="inputEndDate" name="endDate">
		          </div>
		        </div>
		
		      </div>
		      
		      <br>
		      <h3>Premium Amount</h3>
		      <br>
		
		      <div class="row">
		
		        <div class="col-md-6">
			          <div class="form-group row">
			            <div class="col-sm-6">
			              <label for="inputAnnualPremiumAmount">Annual</label>
			              <input type="text" class="form-control" id="inputAnnualPremiumAmount" name="annualPremiumAmount">
			            </div>
			            <div class="col-sm-6">
			              <label for="inputHalfYearlyPremiumAmount">Half Yearly</label>
			              <input type="text" class="form-control" id="inputHalfYearlyPremiumAmount" name="halfYearlyPremiumAmount">
			            </div>
			          </div>
			
			          <div class="form-group row">
			            <div class="col-sm-6">
			              <label for="inputQuarterlyPremiumAmount">Quarterly</label>
			              <input type="text" class="form-control" id="inputQuarterlyPremiumAmount" name="quarterlyPremiumAmount">
			            </div>
			            <div class="col-sm-6">
			              <label for="inputMonthlyPremiumAmount">Monthly</label>
			              <input type="text" class="form-control" id="inputMonthlyPremiumAmount" name="monthlyPremiumAmount">
			            </div>
			          </div>
			
			          <div class="form-group row">
			            <div class="col-sm-6">
			              <label for="inputTotal">Total</label>
			              <input type="text" class="form-control" id="inputTotal" name="total">
			            </div>
			          </div>
		        </div>
		
		        <div class="col-md-6">
			          <div class="form-group row">
			            <input type="submit" value="Submit">
			            <button>Edit</button>
			          </div>
			
			          <div class="form-group row">
			            <button >Delete</button>
			            <button >Refresh</button>
			            <button >Close</button>
			          </div>
		        </div>
		      </div>
    	
    	</form>
    </div>

      
</div>


<tags:footer></tags:footer>
</div>