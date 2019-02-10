<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<tags:header title="Insurance Company List"/>
    
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
                  <label for="inputCompanyName">Company Name</label>
                </div>
                <div class="col">
                 <input type="text" class="form-control" id="inputCompanyName" name="companyName">
                </div>
              </div>
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
            <button type="reset" class="btn btn-danger">Delete</button>
            <button type="button" class="btn btn-dark">Close</button>
          </form>
        </div>
      </div>
      

    </div>


<tags:footer></tags:footer>