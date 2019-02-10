<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<tags:header title="Payroll Management System"/>

<h3>Welcome to Payroll Management system. ${userSession }</h3>

          <div class="row top_tiles">
            
            <a href="<spring:url value='/employee/all'/>"> <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
              <div class="tile-stats">
                
                <div class="count">${staffCount }</div>

                <h3>Staffs</h3> 
<!--                 <p>Lorem ipsum psdea itgum rixt.</p> -->
              </div>
            </div></a>
            
            <a href="<spring:url value='/user/allUsers'/>"> <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
              <div class="tile-stats">
                
                <div class="count">${userCount }</div>

                <h3>Users</h3> 
<!--                 <p>Lorem ipsum psdea itgum rixt.</p> -->
              </div>
            </div></a>
            
            
          </div>

<h6>Current time on server is : ${serverTime }</h6>

<tags:footer/>