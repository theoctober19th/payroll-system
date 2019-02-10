<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<tags:header title="Leave Without Pay"/>

    <div class="container">

      <div class="card" style="width: 32rem;">
        <div class="card-body">
          <form>
            <div class="form-group row">
                <div class="col">
                  <label for="inputLWPTransactionID">LWP Transaction ID</label>
                </div>
                <div class="col">
                 <input type="text" class="form-control" id="inputLWPTransactionID" name="lwpTransactionID">
                </div>
            </div>

            <div class="form-group row">
                <div class="col">
                  <label for="inputStaffID">Staff ID</label>
                </div>
                <div class="col">
                 <input type="text" class="form-control" id="inputStaffID" name="staffID">
                </div>
            </div>

            <div class="form-group row">
                <div class="col">
                  <label for="inputEntryDate">Entry Date</label>
                </div>
                <div class="col">
                 <input type="date" class="form-control" id="inputEntryDate" name="entryDate">
                </div>
            </div>

            <div class="form-group row">
                <div class="col">
                  <label for="inputTotalDays">Total Days</label>
                </div>
                <div class="col">
                 <input type="number" class="form-control" id="inputTotalDays" name="totalDays">
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