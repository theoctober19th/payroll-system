<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<tags:header title="Division Settings"/>

    <div class="container">

      <div class="card" style="width: 18rem;">
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
                  <label for="inputDivisionID">Division ID</label>
                </div>
                <div class="col">
                 <input type="text" class="form-control" id="inputDivisionID" name="divisionID">
                </div>
              </div>
            </div>

            <div class="row">
              <div class="form-group">
                <div class="col">
                  <label for="inputDivisionName">Division Name</label>
                </div>
                <div class="col">
                 <input type="text" class="form-control" id="inputDivisionName" name="divisionName">
                </div>
              </div>
            </div>

            <button type="submit" class="btn btn-primary">Add/Update</button>
            <button type="button" class="btn btn-danger">Delete</button>
          </form>
        </div>
      </div>
      

    </div>


<tags:footer></tags:footer>