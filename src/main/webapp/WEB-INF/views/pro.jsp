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
  <link rel="stylesheet" href="../resources/assets/animate.css/animate.min.css" type="text/css" />
  <link rel="stylesheet" href="../resources/assets/glyphicons/glyphicons.css" type="text/css" />
  <link rel="stylesheet" href="../resources/assets/font-awesome/css/font-awesome.min.css" type="text/css" />
  <link rel="stylesheet" href="../resources/assets/material-design-icons/material-design-icons.css" type="text/css" />

  <link rel="stylesheet" href="../resources/assets/bootstrap/dist/css/bootstrap.min.css" type="text/css" />
  <!-- build:css ../resources/assets/styles/app.min.css -->
  <link rel="stylesheet" href="../resources/assets/styles/app.css" type="text/css" />
  <!-- endbuild -->
  <link rel="stylesheet" href="	../resources/assets/styles/font.css" type="text/css" />
</head>
<body>
  <div class="app" id="app">

<!-- ############ LAYOUT START-->

  <%@include file="nav-aside.jsp" %>
  
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
                    <img src="../resources/assets/images/a0.jpg" alt="...">
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

  <div class="item">
    <div class="item-bg">
      <img src="../resources/assets/images/a1.jpg" class="blur opacity-3">
    </div>
    <div class="p-a-md">
      <div class="row m-t">
        <div class="col-sm-7">
          <a href class="pull-left m-r-md">
            <span class="avatar w-96">
              <img src="../resources/assets/images/a1.jpg">
              <i class="on b-white"></i>
            </span>
          </a>
          <div class="clear m-b">
            <h3 class="m-0 m-b-xs">${student.firstName} ${student.lastName}</h3>
            <h4 class="text-muted"><span class="m-r"></span> <small><i class="fa fa-map-marker m-r-xs"></i>${student.city}, ${student.state}</small></h4>
            <div class="block clearfix m-b">
              <a href="" class="btn btn-icon btn-social rounded white btn-sm">
                <i class="fa fa-facebook"></i>
                <i class="fa fa-facebook indigo"></i>
              </a>
              <a href="" class="btn btn-icon btn-social rounded white btn-sm">
                <i class="fa fa-twitter"></i>
                <i class="fa fa-twitter light-blue"></i>
              </a>
              <a href="" class="btn btn-icon btn-social rounded white btn-sm">
                <i class="fa fa-google-plus"></i>
                <i class="fa fa-google-plus red"></i>
              </a>
              <a href="" class="btn btn-icon btn-social rounded white btn-sm">
                <i class="fa fa-linkedin"></i>
                <i class="fa fa-linkedin cyan-600"></i>
              </a>
            </div>
            <a href class="btn btn-sm warn btn-rounded m-b">Follow</a>
          </div>
        </div>
        <div class="col-sm-5">
          <p class="text-md profile-status">GPA: ${student.gpa }</p>
          <p class="text-md profile-status">Degree: ${student.degree }</p>
          <button class="btn btn-sm white" data-toggle="collapse" data-target="#editor">Edit</button>
          <div class="collapse box m-t-sm" id="editor">
            <textarea class="form-control no-border" rows="2" placeholder="Type something..."></textarea>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="dker p-x">
    <div class="row">
      <div class="col-sm-6 push-sm-6">
        <div class="p-y text-center text-sm-right">
          <a href class="inline p-x text-center">
            <span class="h4 block m-0">2k</span>
            <small class="text-xs text-muted">Followers</small>
          </a>
          <a href class="inline p-x b-l b-r text-center">
            <span class="h4 block m-0">250</span>
            <small class="text-xs text-muted">Following</small>
          </a>
          <a href class="inline p-x text-center">
            <span class="h4 block m-0">89</span>
            <small class="text-xs text-muted">Courses</small>
          </a>
        </div>
      </div>
      <div class="col-sm-6 pull-sm-6">
        <div class="p-y-md clearfix nav-active-primary">
          <ul class="nav nav-pills nav-sm">
            <li class="nav-item active">
              <a class="nav-link" href data-toggle="tab" data-target="#tab_1">Courses</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href data-toggle="tab" data-target="#tab_2">Stream</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href data-toggle="tab" data-target="#tab_3">Friends</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href data-toggle="tab" data-target="#tab_4">Profile</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="padding">
    <div class="row">
      <div class="col-sm-8 col-lg-9">
        <div class="tab-content">      
          <div class="tab-pane p-v-sm active" id="tab_1">
            <div class="streamline b-l m-b m-l">
              
              <%@include file="student-courses.jsp" %>
              
            </div>
          </div>
          <div class="tab-pane p-v-sm" id="tab_2">
            <div class="streamline b-l m-b m-l">
              
            </div>
          </div>
          <div class="tab-pane p-v-sm" id="tab_3">
              <div ui-include="'../views/blocks/widget.friends.html'"></div>
          </div>
          <div class="tab-pane p-v-sm" id="tab_4">
            <div class="row m-b">
              <div class="col-xs-6">
                <h3 class="text-muted">Phone</h3>
                <div class="_500"><h4>${student.phone}</h4></div>
              </div>
              <div class="col-xs-6">
                <h3 class="text-muted">Address</h3>
                <div class="_500">
                	<h4>${student.street} ${student.city}, ${student.state} ${student.zip}</h4>
                </div>
              </div>
            </div>
            <div class="row m-b">
              <div class="col-xs-6">
                <small class="text-muted">Reporter</small>
                <div class="_500">Coch Jose</div>
              </div>
              <div class="col-xs-6">
                <small class="text-muted">Manager</small>
                <div class="_500">James Richo</div>
              </div>
            </div>
            <div>
              <small class="text-muted">Bio</small>
              <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi id neque quam. Aliquam sollicitudin venenatis ipsum ac feugiat. Vestibulum ullamcorper sodales nisi nec condimentum. Mauris convallis mauris at pellentesque volutpat. Phasellus at ultricies neque, quis malesuada augue.</div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-sm-4 col-lg-3">
        <div>
          <div class="box">
              <div class="box-header">
                <h3>Who to follow</h3>
              </div>
              <div class="box-divider m-0"></div>
              <ul class="list no-border p-b">
                <li class="list-item">
                  <a herf class="list-left">
                    <span class="w-40 avatar">
                      <img src="../resources/assets/images/a4.jpg" alt="...">
                      <i class="on b-white bottom"></i>
                    </span>
                  </a>
                  <div class="list-body">
                    <div><a href>Chris Fox</a></div>
                    <small class="text-muted text-ellipsis">Designer, Blogger</small>
                  </div>
                </li>
                <li class="list-item">
                  <a herf class="list-left">
                    <span class="w-40 avatar">
                      <img src="../resources/assets/images/a5.jpg" alt="...">
                      <i class="on b-white bottom"></i>
                    </span>
                  </a>
                  <div class="list-body">
                    <div><a href>Mogen Polish</a></div>
                    <small class="text-muted text-ellipsis">Writter, Mag Editor</small>
                  </div>
                </li>
                <li class="list-item">
                  <a herf class="list-left">
                    <span class="w-40 avatar">
                      <img src="../resources/assets/images/a6.jpg" alt="...">
                      <i class="busy b-white bottom"></i>
                    </span>
                  </a>
                  <div class="list-body">
                    <div><a href>Joge Lucky</a></div>
                    <small class="text-muted text-ellipsis">Art director, Movie Cut</small>
                  </div>
                </li>
                <li class="list-item">
                  <a herf class="list-left">
                    <span class="w-40 avatar">
                      <img src="../resources/assets/images/a7.jpg" alt="...">
                      <i class="away b-white bottom"></i>
                    </span>
                  </a>
                  <div class="list-body">
                    <div><a href>Folisise Chosielie</a></div>
                    <small class="text-muted text-ellipsis">Musician, Player</small>
                  </div>
                </li>
                <li class="list-item">
                  <a herf class="list-left">
                    <span class="w-40 circle green avatar">
                      P
                      <i class="away b-white bottom"></i>
                    </span>
                  </a>
                  <div class="list-body">
                    <div><a href>Peter</a></div>
                    <small class="text-muted text-ellipsis">Musician, Player</small>
                  </div>
                </li>
              </ul>
          </div>
          <div class="box info dk">
            <div class="box-body">
              <a href class="pull-left m-r">
                <img src="../resources/assets/images/a0.jpg" class="img-circle w-40">
              </a>
              <div class="clear">
                <a href>@Mike Mcalidek</a>
                <small class="block text-muted">2,415 followers / 225 tweets</small>
                <a href class="btn btn-sm btn-rounded btn-info m-t-xs"><i class="fa fa-twitter m-t-xs"></i> Follow</a>
              </div>
            </div>
          </div>
          <div class="box">
            <div class="box-header">
              <h2>Latest Tweets</h2>
            </div>
            <div class="box-divider m-0"></div>
            <ul class="list">
              <li class="list-item">
                <div class="list-body">
                  <p>Wellcome <a href class="text-info">@Drew Wllon</a> and play this web application template, have fun1 </p>
                  <small class="block text-muted"><i class="fa fa-fw fa-clock-o"></i> 2 minuts ago</small>
                </div>
              </li>
              <li class="list-item">
                <div class="list-body">
                  <p>Morbi nec <a href class="text-info">@Jonathan George</a> nunc condimentum ipsum dolor sit amet, consectetur</p>
                  <small class="block text-muted"><i class="fa fa-fw fa-clock-o"></i> 1 hour ago</small>
                </div>
              </li>
              <li class="list-item">
                <div class="list-body">                   
                  <p><a href class="text-info">@Josh Long</a> Vestibulum ullamcorper sodales nisi nec adipiscing elit. Morbi id neque quam. Aliquam sollicitudin venenatis</p>
                  <small class="block text-muted"><i class="fa fa-fw fa-clock-o"></i> 2 hours ago</small>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>

<!-- ############ PAGE END-->

    </div>
  </div>
  <!-- / -->

  <!-- theme switcher -->
  <div id="switcher">
    <div class="switcher box-color dark-white text-color" id="sw-theme">
      <a href ui-toggle-class="active" target="#sw-theme" class="box-color dark-white text-color sw-btn">
        <i class="fa fa-gear"></i>
      </a>
      <div class="box-header">
        <a href="https://themeforest.net/item/flatkit-app-ui-kit/13231484?ref=flatfull" class="btn btn-xs rounded danger pull-right">BUY</a>
        <h2>Theme Switcher</h2>
      </div>
      <div class="box-divider"></div>
      <div class="box-body">
        <p class="hidden-md-down">
          <label class="md-check m-y-xs"  data-target="folded">
            <input type="checkbox">
            <i class="green"></i>
            <span class="hidden-folded">Folded Aside</span>
          </label>
          <label class="md-check m-y-xs" data-target="boxed">
            <input type="checkbox">
            <i class="green"></i>
            <span class="hidden-folded">Boxed Layout</span>
          </label>
          <label class="m-y-xs pointer" ui-fullscreen>
            <span class="fa fa-expand fa-fw m-r-xs"></span>
            <span>Fullscreen Mode</span>
          </label>
        </p>
        <p>Colors:</p>
        <p data-target="themeID">
          <label class="radio radio-inline m-0 ui-check ui-check-color ui-check-md" data-value="{primary:'primary', accent:'accent', warn:'warn'}">
            <input type="radio" name="color" value="1">
            <i class="primary"></i>
          </label>
          <label class="radio radio-inline m-0 ui-check ui-check-color ui-check-md" data-value="{primary:'accent', accent:'cyan', warn:'warn'}">
            <input type="radio" name="color" value="2">
            <i class="accent"></i>
          </label>
          <label class="radio radio-inline m-0 ui-check ui-check-color ui-check-md" data-value="{primary:'warn', accent:'light-blue', warn:'warning'}">
            <input type="radio" name="color" value="3">
            <i class="warn"></i>
          </label>
          <label class="radio radio-inline m-0 ui-check ui-check-color ui-check-md" data-value="{primary:'success', accent:'teal', warn:'lime'}">
            <input type="radio" name="color" value="4">
            <i class="success"></i>
          </label>
          <label class="radio radio-inline m-0 ui-check ui-check-color ui-check-md" data-value="{primary:'info', accent:'light-blue', warn:'success'}">
            <input type="radio" name="color" value="5">
            <i class="info"></i>
          </label>
          <label class="radio radio-inline m-0 ui-check ui-check-color ui-check-md" data-value="{primary:'blue', accent:'indigo', warn:'primary'}">
            <input type="radio" name="color" value="6">
            <i class="blue"></i>
          </label>
          <label class="radio radio-inline m-0 ui-check ui-check-color ui-check-md" data-value="{primary:'warning', accent:'grey-100', warn:'success'}">
            <input type="radio" name="color" value="7">
            <i class="warning"></i>
          </label>
          <label class="radio radio-inline m-0 ui-check ui-check-color ui-check-md" data-value="{primary:'danger', accent:'grey-100', warn:'grey-300'}">
            <input type="radio" name="color" value="8">
            <i class="danger"></i>
          </label>
        </p>
        <p>Themes:</p>
        <div data-target="bg" class="row no-gutter text-u-c text-center _600 clearfix">
          <label class="p-a col-sm-6 light pointer m-0">
            <input type="radio" name="theme" value="" hidden>
            Light
          </label>
          <label class="p-a col-sm-6 grey pointer m-0">
            <input type="radio" name="theme" value="grey" hidden>
            Grey
          </label>
          <label class="p-a col-sm-6 dark pointer m-0">
            <input type="radio" name="theme" value="dark" hidden>
            Dark
          </label>
          <label class="p-a col-sm-6 black pointer m-0">
            <input type="radio" name="theme" value="black" hidden>
            Black
          </label>
        </div>
      </div>
    </div>
    
    <div class="switcher box-color black lt" id="sw-demo">
      <a href ui-toggle-class="active" target="#sw-demo" class="box-color black lt text-color sw-btn">
        <i class="fa fa-list text-white"></i>
      </a>
      <div class="box-header">
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
  <script src="../libs/jquery/jquery/dist/jquery.js"></script>
<!-- Bootstrap -->
  <script src="../libs/jquery/tether/dist/js/tether.min.js"></script>
  <script src="../libs/jquery/bootstrap/dist/js/bootstrap.js"></script>
<!-- core -->
  <script src="../libs/jquery/underscore/underscore-min.js"></script>
  <script src="../libs/jquery/jQuery-Storage-API/jquery.storageapi.min.js"></script>
  <script src="../libs/jquery/PACE/pace.min.js"></script>

  <script src="../scripts/config.lazyload.js"></script>

  <script src="../scripts/palette.js"></script>
  <script src="../scripts/ui-load.js"></script>
  <script src="../scripts/ui-jp.js"></script>
  <script src="../scripts/ui-include.js"></script>
  <script src="../scripts/ui-device.js"></script>
  <script src="../scripts/ui-form.js"></script>
  <script src="../scripts/ui-nav.js"></script>
  <script src="../scripts/ui-screenfull.js"></script>
  <script src="../scripts/ui-scroll-to.js"></script>
  <script src="../scripts/ui-toggle-class.js"></script>

  <script src="../scripts/app.js"></script>

  <!-- ajax -->
  <script src="../libs/jquery/jquery-pjax/jquery.pjax.js"></script>
  <script src="../scripts/ajax.js"></script>
<!-- endbuild -->
</body>
</html>
