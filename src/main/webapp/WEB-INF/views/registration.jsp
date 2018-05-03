<%@taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta charset="utf-8" />
  <title>Flatkit - HTML Version | Bootstrap 4 Web App Kit with AngularJS</title>
  <meta name="description" content="Admin, Dashboard, Bootstrap, Bootstrap 4, Angular, AngularJS" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimal-ui" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <!-- for ios 7 style, multi-resolution icon of 152x152 -->
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-barstyle" content="black-translucent">
  <link rel="apple-touch-icon" href="../resources/assets/images/logo.png">
  <meta name="apple-mobile-web-app-title" content="Flatkit">
  <!-- for Chrome on Android, multi-resolution icon of 196x196 -->
  <meta name="mobile-web-app-capable" content="yes">
  <link rel="shortcut icon" sizes="196x196" href="../resources/assets/images/logo.png">
  
  <!-- style -->
  <link rel="stylesheet" href="./resources/assets/animate.css/animate.min.css" type="text/css" />
  <link rel="stylesheet" href="./resources/assets/glyphicons/glyphicons.css" type="text/css" />
  <link rel="stylesheet" href="./resources/assets/font-awesome/css/font-awesome.min.css" type="text/css" />
  <link rel="stylesheet" href="./resources/assets/material-design-icons/material-design-icons.css" type="text/css" />

  <link rel="stylesheet" href="./resources/assets/bootstrap/dist/css/bootstrap.min.css" type="text/css" />
  <!-- build:css ../assets/styles/app.min.css -->
  <link rel="stylesheet" href="./resources/assets/styles/app.css" type="text/css" />
  <!-- endbuild -->
  <link rel="stylesheet" href="./resources/assets/styles/font.css" type="text/css" />
</head>
<body>
  <div class="app" id="app">

<!-- ############ LAYOUT START-->

  <!-- aside -->
  <div id="aside" class="app-aside modal nav-dropdown">
  	<!-- fluid app aside -->
    <div class="left navside dark dk" data-layout="column">
  	  <div class="navbar no-radius">
        <!-- brand -->
        <a class="navbar-brand">
        	<div ui-include="'./resources/assets/images/logo.svg'"></div>
        	<img src="./resources/assets/images/logo.png" alt="." class="hide">
        	<span class="hidden-folded inline">Admin Panel</span>
        </a>
        <!-- / brand -->
      </div>
      <div class="hide-scroll" data-flex>
          <nav class="scroll nav-light">
            
              <ul class="nav" ui-nav>
                <li class="nav-header hidden-folded">
                  <small class="text-muted">Main</small>
                </li>
                
                <li>
                  <a href="newStudent" >
                    <span class="nav-icon">
                      <i class="material-icons">&#xe3fc;
                        <span ui-include="'../assets/images/i_0.svg'"></span>
                      </i>
                    </span>
                    <span class="nav-text">Students</span>
                  </a>
                </li>
            
                <li class="nav-header hidden-folded">
                  <small class="text-muted">Components</small>
                </li>
            
                
                   
            
                <li class="nav-header hidden-folded">
                  <small class="text-muted">Help</small>
                </li>
                
                <li class="hidden-folded" >
                  <a href="docs.html" >
                    <span class="nav-text">Documents</span>
                  </a>
                </li>
            
              </ul>
          </nav>
      </div>
      <div class="b-t">
        <div class="nav-fold">
        	<a href="profile.html">
        	    <span class="pull-left">
        	      <img src="./resources/assets/images/a0.jpg" alt="..." class="w-40 img-circle">
        	    </span>
        	    <span class="clear hidden-folded p-x">
        	      <span class="block _500">Admin</span>
        	      <small class="block text-muted"><i class="fa fa-circle text-success m-r-sm"></i>online</small>
        	    </span>
        	</a>
        </div>
      </div>
    </div>
  </div>
  <!-- / -->
  
  <!-- content -->
  <div id="content" class="app-content box-shadow-z0" role="main">
    <div class="app-header white box-shadow">
        <div class="navbar navbar-toggleable-sm flex-row align-items-center">
            <!-- Open side - Naviation on mobile -->
            <a data-toggle="modal" data-target="#aside" class="hidden-lg-up mr-3">
              <i class="material-icons">&#xe5d2;</i>
            </a>
            <!-- / -->
        
            <!-- Page title - Bind to $state's title -->
            <div class="mb-0 h5 no-wrap" ng-bind="$state.current.data.title" id="pageTitle"></div>
        
            <!-- navbar collapse -->
            <div class="collapse navbar-collapse" id="collapse">
              <!-- link and dropdown -->
              <ul class="nav navbar-nav mr-auto">
                <li class="nav-item dropdown">
                  <a class="nav-link" href data-toggle="dropdown">
                    <i class="fa fa-fw fa-plus text-muted"></i>
                    <span>New</span>
                  </a>
                  <div ui-include="'../views/blocks/dropdown.new.html'"></div>
                </li>
              </ul>
        
              <div ui-include="'../views/blocks/navbar.form.html'"></div>
              <!-- / -->
            </div>
            <!-- / navbar collapse -->
        
            <!-- navbar right -->
            <ul class="nav navbar-nav ml-auto flex-row">
              <li class="nav-item dropdown pos-stc-xs">
                <a class="nav-link mr-2" href data-toggle="dropdown">
                  <i class="material-icons">&#xe7f5;</i>
                  <span class="label label-sm up warn">3</span>
                </a>
                <div ui-include="'../views/blocks/dropdown.notification.html'"></div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link p-0 clear" href="#" data-toggle="dropdown">
                  <span class="avatar w-32">
                    <img src="./resources/assets/images/a0.jpg" alt="...">
                    <i class="on b-white bottom"></i>
                  </span>
                </a>
                <div ui-include="'../views/blocks/dropdown.user.html'"></div>
              </li>
              <li class="nav-item hidden-md-up">
                <a class="nav-link pl-2" data-toggle="collapse" data-target="#collapse">
                  <i class="material-icons">&#xe5d4;</i>
                </a>
              </li>
            </ul>
            <!-- / navbar right -->
        </div>
    </div>
    <div class="app-footer">
      <div class="p-2 text-xs">
        <div class="pull-right text-muted py-1">
          &copy; Copyright <strong>Flatkit</strong> <span class="hidden-xs-down">- Built with Love v1.1.3</span>
          <a ui-scroll-to="content"><i class="fa fa-long-arrow-up p-x-sm"></i></a>
        </div>
        <div class="nav">
          <a class="nav-link" href="../">About</a>
          <a class="nav-link" href="http://themeforest.net/user/flatfull/portfolio?ref=flatfull">Get it</a>
        </div>
      </div>
    </div>
    <div ui-view class="app-body" id="view">
	<!-- ############ PAGE START-->
		<div class="padding">
			<div class="row">
				<div class="col-md-12">
					<div class="box">
						<!-- only need a height for layout 4 -->
						<div style="min-height: 200px">
							<div class="box-header">
								<h2>Add New Student</h2>
								<small>Please fill out the form to register a new student.</small>
							</div>
							<div class="box-divider m-0"></div>
								<div class="box-body">
								
								<form role="form" action="register" method="post" modelAttribute="student">
									
									<div class="form-group">
										<label for="firstName">First Name</label>
										<input type="text" name="firstName" class="form-control" placeholder="First Name">
									</div>
									<div class="form-group">
										<label for="lastName">Last Name</label>
										<input type="text" name="lastName" class="form-control" placeholder="Last Name">
									</div>
							
									<div class="form-group">
										<label for="phone">Phone Number</label>
										<input type="text" name="phone" class="form-control" placeholder="Phone Number">
									</div>
									<div class="form-group">
										<label for="street">Street Address</label>
										<input type="text" name="street" class="form-control" placeholder="Street Address">
									</div>
									<div class="form-group">
										<label for="city">City</label>
										<input type="text" name="city" class="form-control" placeholder="City">
									</div>
									<div class="form-group">
										<label for="state">State</label>
										<input type="text" name="state" class="form-control" placeholder="State">
									</div>
									<div class="form-group">
										<label for="zip">Zip Code</label>
										<input type="text" name="zip" class="form-control" placeholder="zip">
									</div>
									<div class="form-group">
										<label for="course">Course</label>
										<input type="text" name="course" class="form-control" placeholder="Course">
									</div>
									<div class="form-group">
										<label for="degree">Degree</label>
										<input type="text" name="degree" class="form-control" placeholder="Degree">
									</div>
									<div class="form-group">
										<label for="deptId">Department ID</label>
										<input type="text" name="deptId" class="form-control" placeholder="DeptID">
									</div>
									<div class="form-group">
										<label for="creditHours">Credit Hours</label>
										<input type="text" name="creditHours" class="form-control" placeholder="Credit hours">
									</div>
									<div class="form-group">
										<label for="gpa">G.P.A.</label>
										<input type="text" name="gpa" class="form-control" placeholder="GPA">
									</div>
									<div class="form-group">
										<input type="submit" value="Submit">
									</div>
								</form>
							</div>
						
						</div>

						
					</div>
				</div>
			</div>
		</div>
	<!-- ############ PAGE END-->
    </div>
  </div>
  <!-- / -->

  
    
    <div class="switcher box-color black lt" id="sw-demo">
      <a href ui-toggle-class="active" target="#sw-demo" class="box-color black lt text-color sw-btn">
        <i class="fa fa-list text-white"></i>
      </a>
        <h2>Demos</h2>
      </div>
      <div class="box-divider"></div>
      <div class="box-body">
        <div class="row no-gutter text-u-c text-center _600 clearfix">
          <a href="dashboard.html"
            class="p-a col-sm-6 primary">
            <span class="text-white">Default</span>
          </a>
          <a href="dashboard.0.html"
            class="p-a col-sm-6 success">
            <span class="text-white">Zero</span>
          </a>
          <a href="dashboard.1.html"
            class="p-a col-sm-6 blue">
            <span class="text-white">One</span>
          </a>
          <a href="dashboard.2.html"
            class="p-a col-sm-6 warn">
            <span class="text-white">Two</span>
          </a>
          <a href="dashboard.3.html"
            class="p-a col-sm-6 danger">
            <span class="text-white">Three</span>
          </a>
          <a href="dashboard.4.html"
            class="p-a col-sm-6 green">
            <span class="text-white">Four</span>
          </a>
          <a href="dashboard.5.html"
            class="p-a col-sm-6 info">
            <span class="text-white">Five</span>
          </a>
          <div 
            class="p-a col-sm-6 lter">
            <span class="text">...</span>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- / -->

<!-- ############ LAYOUT END-->

  </div>
<!-- build:js scripts/app.html.js -->
<!-- jQuery -->
  <script src="./libs/jquery/jquery/dist/jquery.js"></script>
<!-- Bootstrap -->
  <script src="./libs/jquery/tether/dist/js/tether.min.js"></script>
  <script src="./libs/jquery/bootstrap/dist/js/bootstrap.js"></script>
<!-- core -->
  <script src="./libs/jquery/underscore/underscore-min.js"></script>
  <script src="./libs/jquery/jQuery-Storage-API/jquery.storageapi.min.js"></script>
  <script src="./libs/jquery/PACE/pace.min.js"></script>

  <script src="scripts/config.lazyload.js"></script>

  <script src="scripts/palette.js"></script>
  <script src="scripts/ui-load.js"></script>
  <script src="scripts/ui-jp.js"></script>
  <script src="scripts/ui-include.js"></script>
  <script src="scripts/ui-device.js"></script>
  <script src="scripts/ui-form.js"></script>
  <script src="scripts/ui-nav.js"></script>
  <script src="scripts/ui-screenfull.js"></script>
  <script src="scripts/ui-scroll-to.js"></script>
  <script src="scripts/ui-toggle-class.js"></script>

  <script src="scripts/app.js"></script>

  <!-- ajax -->
  <script src="./libs/jquery/jquery-pjax/jquery.pjax.js"></script>
  <script src="scripts/ajax.js"></script>
<!-- endbuild -->
</body>
</html>
