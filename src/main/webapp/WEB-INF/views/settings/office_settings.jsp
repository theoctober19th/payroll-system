<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<tags:header title="Office Settings"/>


    <div class="container">
    
    <b style="color:${messageColor};">${message }</b>


      <div class="card" style="width: 32rem;">
        <div class="card-body">
       
          <form action='<spring:url value="/updateOfficeSettings"></spring:url>' method="post">
            <div class="row">
              <div class="form-group">
                <div class="col">
                  <label for="inputOfficeCode">Office Code</label>
                </div>
                <div class="col">
                 <input type="text" class="form-control" id="inputOfficeCode" name="officeCode">
                </div>
              </div>
            </div>

            <div class="row">
              <div class="form-group">
                <div class="col">
                  <label for="inputOfficeName">Office Name</label>
                </div>
                <div class="col">
                 <input type="text" class="form-control" id="inputOfficeName" name="officeName">
                </div>
              </div>
            </div>

            <div class="row">
              <div class="form-group">
                <div class="col">
                  <label for="inputOfficeAddress">Office Address</label>
                </div>
                <div class="col">
                 <input type="text" class="form-control" id="inputOfficeAddress" name="officeAddress">
                </div>
              </div>
            </div>

            <div class="row">
              <div class="form-group">
                <div class="col">
                  <label for="inputGovernmentRegionalTaxDiscountAmount">Government Regional Tax Discount Amount</label>
                </div>
                <div class="col">
                 <input type="number" step="any" class="form-control" id="inputGovernmentRegionalTaxDiscountAmount" name="regGovtDiscountAmt">
                </div>
              </div>
            </div>

            <button type="submit" class="btn btn-primary">Update</button>
          </form>
        </div>
      </div>
      

    </div>


<tags:footer/>