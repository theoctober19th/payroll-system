<%@ taglib tagdir="/WEB-INF/tags" prefix="tag" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<tag:header title="Add Branch"/>

<div class="container">

<b style="color:${messageColor};">${message }</b>

  <div class="card mt-5" style="width: 18rem;">
      <div class="card-body">
        <form action='<spring:url value="/updateBranch"></spring:url>' method="POST">
          <div class="row">
            <div class="form-group">
              <div class="col">
                <label for="inputRegionID">Region ID</label>
              </div>
              <div class="col">
               <input type="text" class="form-control" id="inputBranchID" name="regionID">
              </div>
            </div>
          </div>
          
          <div class="row">
            <div class="form-group">
              <div class="col">
                <label for="inputBranchID">Branch ID</label>
              </div>
              <div class="col">
               <input type="text" class="form-control" id="inputBranchID" name="branchID">
              </div>
            </div>
          </div>

          <div class="row">
            <div class="form-group">
              <div class="col">
                <label for="inputBranchName">Branch Name</label>
              </div>
              <div class="col">
               <input type="text" class="form-control" id="inputBranchName" name="branchName">
              </div>
            </div>
          </div>
          
          <div class="row">
            <div class="form-group">
              <div class="col">
                <label for="inputBranchName">Office Code</label>
              </div>
              <div class="col">
               <input type="text" class="form-control" id="inputBranchName" name="officeID">
              </div>
            </div>
          </div>
          

          <button type="submit" class="btn btn-primary">Add/Update</button>
          <button type="reset" class="btn btn-danger">Clear</button>
        </form>
      </div>
    </div>
     
</div>

<tag:footer/>