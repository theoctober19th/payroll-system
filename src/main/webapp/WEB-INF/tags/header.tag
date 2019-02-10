<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>


<%
	session = request.getSession(false);
	
	if(session.getAttribute("userSession") == null){
		response.sendRedirect(request.getContextPath());
	}
%>


<%@ attribute name="title" required="true" %>
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Meta, title, CSS, favicons, etc. -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>PayRoll System</title>

  <!-- Bootstrap core CSS -->
  <link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
<!--   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous"> -->

  <link href="${pageContext.request.contextPath }/resources/fonts/css/font-awesome.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath }/resources/css/animate.min.css" rel="stylesheet">
  
  <link href = "https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">

  <!-- Custom styling plus plugins -->
  <link href="${pageContext.request.contextPath }/resources/css/custom.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/maps/jquery-jvectormap-2.0.3.css" />
  <link href="${pageContext.request.contextPath }/resources/css/icheck/flat/green.css" rel="stylesheet" />
  <link href="${pageContext.request.contextPath }/resources/css/floatexamples.css" rel="stylesheet" type="text/css" />

  <script src="${pageContext.request.contextPath }/resources/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/nprogress.js"></script>


</head>


<body class="nav-md">

  <div class="container body">


    <div class="main_container">

      <div class="col-md-3 left_col">
        <div class="left_col scroll-view">

          <div class="navbar nav_title" style="border: 0;">
            <a href="<spring:url value="/home"/>" class="site_title"><i class="fa fa-paw"></i> <span>PayRoll System</span></a>
          </div>
          <div class="clearfix"></div>

          <!-- menu prile quick info -->
          <div class="profile">
            <div class="profile_pic">
              <img src="${pageContext.request.contextPath }/resources/images/img.jpg" alt="..." class="img-circle profile_img">
            </div>
            <div class="profile_info">
              <span>Welcome,</span>
              <h2>${userSession}</h2>
            </div>
          </div>
          <!-- /menu prile quick info -->

          <br />

          <!-- sidebar menu -->
          <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

            <div class="menu_section">
              <h3>Menu</h3>
              <ul class="nav side-menu">
                <li><a href="<spring:url value="/home"/>"><i class="fa fa-home"></i> Home</a>
                 
                </li>
                <li><a><i class="fa fa-home"></i> Settings <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: none">
                    <li><a href="<spring:url value="/fiscal_year_settings"/>">Fiscal Year Settings</a>
                    </li>
                    <li><a href="<spring:url value="/office_settings"/>">Office Settings</a>
                    </li>
                    <li><a href="<spring:url value="/add_branch"/>">Add Branch</a>
                    </li>
                    <li><a href="<spring:url value="/division_setting"/>">Division Settings</a>
                    </li>
                    <li><a href="<spring:url value="/compensation_setting"/>">Compensation Settings</a>
                    </li>
                    <li><a href="<spring:url value="/insurance_company_list"/>">Insurance Company List</a>
                    </li>
                  </ul>
                </li>
                <li><a><i class="fa fa-edit"></i> Employee Settings <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: none">
                  	<li><a href="<spring:url value="/employee/all"/>">View Employees</a>
                    </li>
                    <li><a href="<spring:url value="/employee/add_employee"/>">New Employee</a>
                    </li>
                     <li><a href="<spring:url value="employee/employee_type"/>">Employee Type</a>
                    </li>
                    <li><a href="<spring:url value="/employee/employee_leave_policy"/>">Employee Leave Policy</a>
                    </li>
                    <li><a href="<spring:url value="/employee/leave_without_pay"/>">Leave Without Pay</a>
                    </li>
                    <li><a href="<spring:url value="/employee/staff_insurance"/>">Staff Insurance</a>
                    </li>
                  </ul>
                </li>
                
                <c:if test="${userSession.accountInfo.roleID eq 1}">
                	<li><a><i class="fa fa-edit"></i> User Settings <span class="fa fa-chevron-down"></span></a>
	                  <ul class="nav child_menu" style="display: none">
	                  
	                    <li><a href="<spring:url value="/user/add_user"/>">Add User</a>
	                    </li>
	                    <li><a href="<spring:url value="/user/allUsers"/>">View Users</a>
	                    </li>
	                  </ul>
	                </li>
                </c:if>
                
                
              </ul>
            </div>

          </div>
          <!-- /sidebar menu -->

          <!-- /menu footer buttons -->
          <div class="sidebar-footer hidden-small">
            <a data-toggle="tooltip" data-placement="top" title="Settings">
              <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="FullScreen">
              <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="Lock">
              <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="Logout">
              <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
            </a>
          </div>
          <!-- /menu footer buttons -->
        </div>
      </div>

      <!-- top navigation -->
      <div class="top_nav">

        <div class="nav_menu">
          <nav class="" role="navigation">
            <div class="nav toggle">
              <a id="menu_toggle"><i class="fa fa-bars"></i></a>
            </div>

            <ul class="nav navbar-nav navbar-right">
              <li class="">
                <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                  <img src="${pageContext.request.contextPath }/resources/images/img.jpg" alt="">${userSession }
                  <span class=" fa fa-angle-down"></span>
                </a>
                <ul class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
                  <li><a href="javascript:;">  Profile</a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <span class="badge bg-red pull-right">50%</span>
                      <span>Settings</span>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">Help</a>
                  </li>
                  <li><a href='<spring:url value="/logout"/>'> <i class="fa fa-sign-out pull-right"></i> Log Out</a>
                  </li>
                </ul>
              </li>

              <li role="presentation" class="dropdown">
                <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                  <i class="fa fa-envelope-o"></i>
                  <span class="badge bg-green">6</span>
                </a>
                <ul id="menu1" class="dropdown-menu list-unstyled msg_list animated fadeInDown" role="menu">
                  <li>
                    <a>
                      <span class="image">
                                        <img src="images/img.jpg" alt="Profile Image" />
                                    </span>
                      <span>
                                        <span>John Smith</span>
                      <span class="time">3 mins ago</span>
                      </span>
                      <span class="message">
                                        Film festivals used to be do-or-die moments for movie makers. They were where...
                                    </span>
                    </a>
                  </li>
                  <li>
                    <div class="text-center">
                      <a href="inbox.html">
                        <strong>See All Alerts</strong>
                        <i class="fa fa-angle-right"></i>
                      </a>
                    </div>
                  </li>
                </ul>
              </li>

            </ul>
          </nav>
        </div>

      </div>
      <!-- /top navigation -->


      <!-- page content -->
      <div class="right_col" role="main">
      
      <div class="x_panel">
		<div class="x_title">
			<h3>${title}</h3>
		</div>
		<div class="clearfix"> </div>	
	    <div class="x_content">