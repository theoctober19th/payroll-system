<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<tags:header title="Employee Leave Policy"/>

    
<div class="container">
	    
	      <div class="card" style="width: 32rem;">
	        <div class="card-body">
	          <form>
	            <div class="form-group row">
	                <div class="col">
	                  <label for="inputEmployeeID">Employee ID</label>
	                </div>
	                <div class="col">
	                 <input type="text" class="form-control" id="inputEmployeeID" name="employeeID">
	                </div>
	            </div>
	
	            <div class="form-group row">
	                <div class="col">
	                  <label for="inputEmployeeName">Employee Name</label>
	                </div>
	                <div class="col">
	                 <input type="text" class="form-control" id="inputEmployeeName" name="employeeName">
	                </div>
	            </div>
	
	            <div class="form-group row">
	                <div class="col">
	                  <label for="inputPost">Post</label>
	                </div>
	                <div class="col">
	                 <input type="text" class="form-control" id="inputPost" name="post">
	                </div>
	            </div>
	
	            <div class="form-group row">
	                <div class="col">
	                  <label for="inputEncashLeavePolicy">Encash Leave Policy</label>
	                </div>
	                <div class="col">
	                 <input type="text" class="form-control" id="inputEncashLeavePolicy" name="encashLeavePolicy">
	                </div>
	            </div>
	
	            <div align="right">
	              <button type="submit" class="btn btn-primary">Update</button>
	            </div>
	          </form>
	        </div>
	      </div>

		</div>      
    </div>

<tags:footer/>
</div>