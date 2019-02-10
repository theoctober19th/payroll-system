<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<tags:header title="Employee Type"/>

    <div class="container">


      <div class="card" style="width: 18rem;">
        <div class="card-body">
          <form>
            <div class="row">
              <div class="form-group">
                <div class="col">
                  <label for="inputID">ID</label>
                </div>
                <div class="col">
                 <input type="text" class="form-control" id="inputID" name="id">
                </div>
              </div>
            </div>

            <div class="row">
              <div class="form-group">
                <div class="col">
                  <label for="inputEmpType">EmpType</label>
                </div>
                <div class="col">
                 <input type="text" class="form-control" id="inputEmpType" name="empType">
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