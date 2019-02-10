<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<tags:header title="Fiscal Year Settings"/>

<div class="container">

  <div class="card" style="width: 18rem;">
    <div class="card-body">
      <form>
        <div class="row">
          <div class="form-group">
            <div class="col">
              <label for="inputFiscalYear">Fiscal Year</label>
            </div>
            <div class="col">
             <input type="text" class="form-control" id="inputFiscalYear" name="fiscalYear">
            </div>
          </div>
        </div>

        <div class="row">
          <div class="form-group">
            <div class="col">
              <label for="inputStartDate">Start Date</label>
            </div>
            <div class="col">
             <input type="date" class="form-control" id="inputStartDate" name="startDate">
            </div>
          </div>
        </div>

        <div class="row">
          <div class="form-group">
            <div class="col">
              <label for="inputEndDate">End Date</label>
            </div>
            <div class="col">
             <input type="date" class="form-control" id="inputEndDate" name="endDate">
            </div>
          </div>
        </div>

        <button type="submit" class="btn btn-primary">Update</button>
      </form>
    </div>
  </div>
  
</div>

<tags:footer/>