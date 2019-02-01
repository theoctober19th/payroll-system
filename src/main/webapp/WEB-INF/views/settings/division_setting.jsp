<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<tags:header title="Division Settings"/>

    <div class="container">
    
    <b style="color:${messageColor};">${message }</b>

      <div class="card" style="width: 18rem;">
        <div class="card-body">
          <form action='<spring:url value="/updateDivisionSettings"></spring:url>' method="post">

            <div class="row">
              <div class="form-group">
                <div class="col">
                  <label for="inputDivisionID">Division ID</label>
                </div>
                <div class="col">
                 <input type="text" class="form-control" id="inputDivisionID" name="divCode">
                </div>
              </div>
            </div>

            <div class="row">
              <div class="form-group">
                <div class="col">
                  <label for="inputDivisionName">Division Name</label>
                </div>
                <div class="col">
                 <input type="text" class="form-control" id="inputDivisionName" name="divName">
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