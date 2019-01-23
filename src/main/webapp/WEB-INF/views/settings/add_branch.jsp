<%@ taglib tagdir="/WEB-INF/tags" prefix="tag" %>

<tag:header title="Add Branch"/>

<div class="container">



  <div class="card mt-5" style="width: 18rem;">
      <div class="card-body">
        <form>
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

          <button type="submit" class="btn btn-primary">Add/Update</button>
          <button type="button" class="btn btn-danger">Delete</button>
        </form>
      </div>
    </div>
     
</div>

<tag:footer/>