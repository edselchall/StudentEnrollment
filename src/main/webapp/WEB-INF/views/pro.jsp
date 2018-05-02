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
  <link rel="apple-touch-icon" href="../assets/images/logo.png">
  <meta name="apple-mobile-web-app-title" content="Flatkit">
  <!-- for Chrome on Android, multi-resolution icon of 196x196 -->
  <meta name="mobile-web-app-capable" content="yes">
  <link rel="shortcut icon" sizes="196x196" href="../assets/images/logo.png">
  
  <!-- style -->
  <link rel="stylesheet" href="../assets/animate.css/animate.min.css" type="text/css" />
  <link rel="stylesheet" href="../assets/glyphicons/glyphicons.css" type="text/css" />
  <link rel="stylesheet" href="../assets/font-awesome/css/font-awesome.min.css" type="text/css" />
  <link rel="stylesheet" href="../assets/material-design-icons/material-design-icons.css" type="text/css" />

  <link rel="stylesheet" href="../assets/bootstrap/dist/css/bootstrap.min.css" type="text/css" />
  <!-- build:css ../assets/styles/app.min.css -->
  <link rel="stylesheet" href="../assets/styles/app.css" type="text/css" />
  <!-- endbuild -->
  <link rel="stylesheet" href="../assets/styles/font.css" type="text/css" />
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
        	<div ui-include="'../assets/images/logo.svg'"></div>
        	<img src="../assets/images/logo.png" alt="." class="hide">
        	<span class="hidden-folded inline">Flatkit</span>
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
                  <a href="dashboard.html" >
                    <span class="nav-icon">
                      <i class="material-icons">&#xe3fc;
                        <span ui-include="'../assets/images/i_0.svg'"></span>
                      </i>
                    </span>
                    <span class="nav-text">Dashboard</span>
                  </a>
                </li>
            
                <li>
                  <a>
                    <span class="nav-caret">
                      <i class="fa fa-caret-down"></i>
                    </span>
                    <span class="nav-label">
                      <b class="label rounded label-sm primary">5</b>
                    </span>
                    <span class="nav-icon">
                      <i class="material-icons">&#xe5c3;
                        <span ui-include="'../assets/images/i_1.svg'"></span>
                      </i>
                    </span>
                    <span class="nav-text">Apps</span>
                  </a>
                  <ul class="nav-sub">
                    <li>
                      <a href="inbox.html" >
                        <span class="nav-text">Inbox</span>
                      </a>
                    </li>
                    <li>
                      <a href="contact.html" >
                        <span class="nav-text">Contacts</span>
                      </a>
                    </li>
                    <li>
                      <a href="calendar.html" >
                        <span class="nav-text">Calendar</span>
                      </a>
                    </li>
                  </ul>
                </li>
            
                <li>
                  <a>
                    <span class="nav-caret">
                      <i class="fa fa-caret-down"></i>
                    </span>
                    <span class="nav-icon">
                      <i class="material-icons">&#xe8f0;
                        <span ui-include="'../assets/images/i_2.svg'"></span>
                      </i>
                    </span>
                    <span class="nav-text">Layouts</span>
                  </a>
                  <ul class="nav-sub">
                    <li>
                      <a href="headers.html" >
                        <span class="nav-text">Header</span>
                      </a>
                    </li>
                    <li>
                      <a href="asides.html" >
                        <span class="nav-text">Aside</span>
                      </a>
                    </li>
                    <li>
                      <a href="footers.html" >
                        <span class="nav-text">Footer</span>
                      </a>
                    </li>
                  </ul>
                </li>
            
                <li>
                  <a href="widget.html" >
                    <span class="nav-icon">
                      <i class="material-icons">&#xe8d2;
                        <span ui-include="'../assets/images/i_3.svg'"></span>
                      </i>
                    </span>
                    <span class="nav-text">Widgets</span>
                  </a>
                </li>
            
                <li class="nav-header hidden-folded">
                  <small class="text-muted">Components</small>
                </li>
            
                <li>
                  <a>
                    <span class="nav-caret">
                      <i class="fa fa-caret-down"></i>
                    </span>
                    <span class="nav-label">
                      <b class="label label-sm accent">8</b>
                    </span>
                    <span class="nav-icon">
                      <i class="material-icons">&#xe429;
                        <span ui-include="'../assets/images/i_4.svg'"></span>
                      </i>
                    </span>
                    <span class="nav-text">UI kit</span>
                  </a>
                  <ul class="nav-sub nav-mega nav-mega-3">
                    <li>
                      <a href="arrow.html" >
                        <span class="nav-text">Arrow</span>
                      </a>
                    </li>
                    <li>
                      <a href="box.html" >
                        <span class="nav-text">Box</span>
                      </a>
                    </li>
                    <li>
                      <a href="button.html" >
                        <span class="nav-text">Button</span>
                      </a>
                    </li>
                    <li>
                      <a href="color.html" >
                        <span class="nav-text">Color</span>
                      </a>
                    </li>
                    <li>
                      <a href="dropdown.html" >
                        <span class="nav-text">Dropdown</span>
                      </a>
                    </li>
                    <li>
                      <a href="grid.html" >
                        <span class="nav-text">Grid</span>
                      </a>
                    </li>
                    <li>
                      <a href="icon.html" >
                        <span class="nav-text">Icon</span>
                      </a>
                    </li>
                    <li>
                      <a href="label.html" >
                        <span class="nav-text">Label</span>
                      </a>
                    </li>
                    <li>
                      <a href="list.html" >
                        <span class="nav-text">List Group</span>
                      </a>
                    </li>
                    <li>
                      <a href="modal.html" >
                        <span class="nav-text">Modal</span>
                      </a>
                    </li>
                    <li>
                      <a href="nav.html" >
                        <span class="nav-text">Nav</span>
                      </a>
                    </li>
                    <li>
                      <a href="progress.html" >
                        <span class="nav-text">Progress</span>
                      </a>
                    </li>
                    <li>
                      <a href="social.html" >
                        <span class="nav-text">Social</span>
                      </a>
                    </li>
                    <li>
                      <a href="sortable.html" >
                        <span class="nav-text">Sortable</span>
                      </a>
                    </li>
                    <li>
                      <a href="streamline.html" >
                        <span class="nav-text">Streamline</span>
                      </a>
                    </li>
                    <li>
                      <a href="timeline.html" >
                        <span class="nav-text">Timeline</span>
                      </a>
                    </li>
                    <li>
                      <a href="map.vector.html" >
                        <span class="nav-text">Vector Map</span>
                      </a>
                    </li>
                  </ul>
                </li>
            
                <li>
                  <a>
                    <span class="nav-caret">
                      <i class="fa fa-caret-down"></i>
                    </span>
                    <span class="nav-label"><b class="label no-bg">9</b></span>
                    <span class="nav-icon">
                      <i class="material-icons">&#xe3e8;
                        <span ui-include="'../assets/images/i_5.svg'"></span>
                      </i>
                    </span>
                    <span class="nav-text">Pages</span>
                  </a>
                  <ul class="nav-sub nav-mega">
                    <li>
                      <a href="profile.html" >
                        <span class="nav-text">Profile</span>
                      </a>
                    </li>
                    <li>
                      <a href="setting.html" >
                        <span class="nav-text">Setting</span>
                      </a>
                    </li>
                    <li>
                      <a href="search.html" >
                        <span class="nav-text">Search</span>
                      </a>
                    </li>
                    <li>
                      <a href="faq.html" >
                        <span class="nav-text">FAQ</span>
                      </a>
                    </li>
                    <li>
                      <a href="gallery.html" >
                        <span class="nav-text">Gallery</span>
                      </a>
                    </li>
                    <li>
                      <a href="invoice.html" >
                        <span class="nav-text">Invoice</span>
                      </a>
                    </li>
                    <li>
                      <a href="price.html" >
                        <span class="nav-text">Price</span>
                      </a>
                    </li>
                    <li>
                      <a href="blank.html" >
                        <span class="nav-text">Blank</span>
                      </a>
                    </li>
                    <li>
                      <a href="signin.html" >
                        <span class="nav-text">Sign In</span>
                      </a>
                    </li>
                    <li>
                      <a href="signup.html" >
                        <span class="nav-text">Sign Up</span>
                      </a>
                    </li>
                    <li>
                      <a href="forgot-password.html" >
                        <span class="nav-text">Forgot Password</span>
                      </a>
                    </li>
                    <li>
                      <a href="lockme.html" >
                        <span class="nav-text">Lockme Screen</span>
                      </a>
                    </li>
                    <li>
                      <a href="404.html" >
                        <span class="nav-text">Error 404</span>
                      </a>
                    </li>
                    <li>
                      <a href="505.html" >
                        <span class="nav-text">Error 505</span>
                      </a>
                    </li>
                  </ul>
                </li>
            
                <li>
                  <a>
                    <span class="nav-caret">
                      <i class="fa fa-caret-down"></i>
                    </span>
                    <span class="nav-icon">
                      <i class="material-icons">&#xe39e;
                        <span ui-include="'../assets/images/i_6.svg'"></span>
                      </i>
                    </span>
                    <span class="nav-text">Form</span>
                  </a>
                  <ul class="nav-sub">
                    <li>
                      <a href="form.layout.html" >
                        <span class="nav-text">Form Layout</span>
                      </a>
                    </li>
                    <li>
                      <a href="form.element.html" >
                        <span class="nav-text">Form Element</span>
                      </a>
                    </li>
                    <li>
                      <a href="form.validation.html" >
                        <span class="nav-text">Form Validation</span>
                      </a>
                    </li>
                    <li>
                      <a href="form.select.html" >
                        <span class="nav-text">Select</span>
                      </a>
                    </li>
                    <li>
                      <a href="form.editor.html" >
                        <span class="nav-text">Editor</span>
                      </a>
                    </li>
                    <li>
                      <a href="form.picker.html">
                        <span class="nav-text">Picker</span>
                      </a>
                    </li>
                    <li>
                      <a href="form.wizard.html">
                        <span class="nav-text">Wizard</span>
                      </a>
                    </li>
                    <li>
                      <a href="form.dropzone.html" class="no-ajax" >
                        <span class="nav-text">File Upload</span>
                      </a>
                    </li>
                  </ul>
                </li>
            
                <li>
                  <a>
                    <span class="nav-caret">
                      <i class="fa fa-caret-down"></i>
                    </span>
                    <span class="nav-icon">
                      <i class="material-icons">&#xe896;
                        <span ui-include="'../assets/images/i_7.svg'"></span>
                      </i>
                    </span>
                    <span class="nav-text">Tables</span>
                  </a>
                  <ul class="nav-sub">
                    <li>
                      <a href="static.html" >
                        <span class="nav-text">Static table</span>
                      </a>
                    </li>
                    <li>
                      <a href="datatable.html" >
                        <span class="nav-text">Datatable</span>
                      </a>
                    </li>
                    <li>
                      <a href="footable.html" >
                        <span class="nav-text">Footable</span>
                      </a>
                    </li>
                  </ul>
                </li>
                <li>
                  <a>
                    <span class="nav-caret">
                      <i class="fa fa-caret-down"></i>
                    </span>
                    <span class="nav-label hidden-folded">
                      <b class="label label-sm info">N</b>
                    </span>
                    <span class="nav-icon">
                      <i class="material-icons">&#xe1b8;
                        <span ui-include="'../assets/images/i_8.svg'"></span>
                      </i>
                    </span>
                    <span class="nav-text">Charts</span>
                  </a>
                  <ul class="nav-sub">
                    <li>
                      <a href="chart.html" >
                        <span class="nav-text">Chart</span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="nav-caret">
                          <i class="fa fa-caret-down"></i>
                        </span>
                        <span class="nav-text">Echarts</span>
                      </a>
                      <ul class="nav-sub">
                        <li>
                          <a href="echarts-line.html" >
                            <span class="nav-text">line</span>
                          </a>
                        </li>
                        <li>
                          <a href="echarts-bar.html" >
                            <span class="nav-text">Bar</span>
                          </a>
                        </li>
                        <li>
                          <a href="echarts-pie.html" >
                            <span class="nav-text">Pie</span>
                          </a>
                        </li>
                        <li>
                          <a href="echarts-scatter.html" >
                            <span class="nav-text">Scatter</span>
                          </a>
                        </li>
                        <li>
                          <a href="echarts-radar-chord.html" >
                            <span class="nav-text">Radar &amp; Chord</span>
                          </a>
                        </li>
                        <li>
                          <a href="echarts-gauge-funnel.html" >
                            <span class="nav-text">Gauges &amp; Funnel</span>
                          </a>
                        </li>
                        <li>
                          <a href="echarts-map.html" >
                            <span class="nav-text">Map</span>
                          </a>
                        </li>
                      </ul>
                    </li>
                  </ul>
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
        	      <img src="../assets/images/a0.jpg" alt="..." class="w-40 img-circle">
        	    </span>
        	    <span class="clear hidden-folded p-x">
        	      <span class="block _500">Jean Reyes</span>
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
                    <img src="../assets/images/a0.jpg" alt="...">
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
      <img src="../assets/images/a1.jpg" class="blur opacity-3">
    </div>
    <div class="p-a-md">
      <div class="row m-t">
        <div class="col-sm-7">
          <a href class="pull-left m-r-md">
            <span class="avatar w-96">
              <img src="../assets/images/a1.jpg">
              <i class="on b-white"></i>
            </span>
          </a>
          <div class="clear m-b">
            <h3 class="m-0 m-b-xs">Jean Reyes</h3>
            <p class="text-muted"><span class="m-r">UX/UI Director</span> <small><i class="fa fa-map-marker m-r-xs"></i>London, UK</small></p>
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
          <p class="text-md profile-status">I am feeling good!</p>
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
            <small class="text-xs text-muted">Activities</small>
          </a>
        </div>
      </div>
      <div class="col-sm-6 pull-sm-6">
        <div class="p-y-md clearfix nav-active-primary">
          <ul class="nav nav-pills nav-sm">
            <li class="nav-item active">
              <a class="nav-link" href data-toggle="tab" data-target="#tab_1">Activities</a>
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
              <div class="sl-item">
                <div class="sl-left">
                  <img src="../assets/images/a0.jpg" class="img-circle">
                </div>
                <div class="sl-content">
                  <div class="sl-date text-muted">2 minutes ago</div>
                  <div class="sl-author">
                    <a href>Peter Joo</a>
                  </div>
                  <div>
                    <p>Check your Internet connection</p>
                  </div>
                  <div class="sl-footer">
                    <a href ui-toggle-class class="btn white btn-xs">
                      <i class="fa fa-fw fa-star-o text-muted inline"></i>
                      <i class="fa fa-fw fa-star text-danger none"></i>
                    </a>
                    <a href class="btn white btn-xs" data-toggle="collapse" data-target="#reply-1">
                      <i class="fa fa-fw fa-mail-reply text-muted"></i>
                    </a>
                  </div>
                  <div class="box collapse m-0" id="reply-1">
                    <form>
                      <textarea class="form-control no-border" rows="3" placeholder="Type something..."></textarea>
                    </form>
                    <div class="box-footer clearfix">
                      <button class="btn btn-info pull-right btn-sm">Post</button>
                      <ul class="nav nav-pills nav-sm">
                        <li class="nav-item"><a class="nav-link" href><i class="fa fa-camera text-muted"></i></a></li>
                        <li class="nav-item"><a class="nav-link" href><i class="fa fa-video-camera text-muted"></i></a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <div class="sl-item">
                <div class="sl-left">
                  <img src="../assets/images/a1.jpg" class="img-circle">
                </div>
                <div class="sl-content">
                  <div class="sl-date text-muted">9:30</div>
                  <div class="sl-author">
                    <a href>Mike</a>
                  </div>
                  <div>
                    <p>Meeting with tech leader</p>
                  </div>
                  <div class="sl-footer">
                    <a href ui-toggle-class class="btn white btn-xs">
                      <i class="fa fa-fw fa-star-o text-muted inline"></i>
                      <i class="fa fa-fw fa-star text-danger none"></i>
                    </a>
                    <a href class="btn white btn-xs" data-toggle="collapse" data-target="#reply-2">
                      <i class="fa fa-fw fa-mail-reply text-muted"></i>
                    </a>
                  </div>
                  <div class="box collapse in m-0" id="reply-2">
                    <form>
                      <textarea class="form-control no-border" rows="3" placeholder="Type something..."></textarea>
                    </form>
                    <div class="box-footer clearfix">
                      <button class="btn btn-info pull-right btn-sm">Post</button>
                      <ul class="nav nav-pills nav-sm">
                        <li class="nav-item"><a class="nav-link" href><i class="fa fa-camera text-muted"></i></a></li>
                        <li class="nav-item"><a class="nav-link" href><i class="fa fa-video-camera text-muted"></i></a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <div class="sl-item">
                <div class="sl-left">
                  <img src="../assets/images/a2.jpg" class="img-circle">
                </div>
                <div class="sl-content">
                  <div class="sl-date text-muted">8:30</div>
                  <div class="sl-author">
                    <a href>Moke</a>
                  </div>
                  <div>
                    <p>Call to customer <a href class="text-info">Jacob</a> and discuss the detail.</p>
                    <p>
                      <span class="inline w-lg w-auto-xs p-a-xs b dark-white">
                        <img src="../assets/images/c0.jpg" class="w-full">
                      </span>
                    </p>
                  </div>
                </div>
              </div>
              <div class="sl-item">
                <div class="sl-left">
                  <img src="../assets/images/a3.jpg" class="img-circle">
                </div>
                <div class="sl-content">
                  <div class="sl-date text-muted">Wed, 25 Mar</div>
                  <p>Finished task <a href class="text-info">Testing</a>.</p>
                </div>
              </div>
              <div class="sl-item">
                <div class="sl-left">
                  <img src="../assets/images/a4.jpg" class="img-circle">
                </div>
                <div class="sl-content">
                  <div class="sl-date text-muted">Thu, 10 Mar</div>
                  <p>Trip to the moon</p>
                </div>
              </div>
              <div class="sl-item">
                <div class="sl-left">
                  <img src="../assets/images/a3.jpg" class="img-circle">
                </div>
                <div class="sl-content">
                  <div class="sl-date text-muted">Sat, 5 Mar</div>
                  <p>Prepare for presentation</p>
                  <blockquote>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante soe aiea ose dos soois.</p>
                    <small>Someone famous in <cite title="Source Title">Source Title</cite></small>
                  </blockquote>
                </div>
              </div>
              <div class="sl-item">
                <div class="sl-left">
                  <img src="../assets/images/a2.jpg" class="img-circle">
                </div>
                <div class="sl-content">
                  <div class="sl-date text-muted">Sun, 11 Feb</div>
                  <p><a href class="text-info">Jessi</a> assign you a task <a href class="text-info">Mockup Design</a>.</p>
                </div>
              </div>
              <div class="sl-item">
                <div class="sl-left">
                  <img src="../assets/images/a5.jpg" class="img-circle">
                </div>
                <div class="sl-content">
                  <div class="sl-date text-muted">Thu, 17 Jan</div>
                  <p>Follow up to close deal</p>
                </div>
              </div>
            </div>
          </div>
          <div class="tab-pane p-v-sm" id="tab_2">
            <div class="streamline b-l m-b m-l">
              <div class="sl-item">
                <div class="sl-content">
                  <div class="sl-date text-muted">2 minutes ago</div>
                  <p>Check your Internet connection</p>
                </div>
              </div>
              <div class="sl-item">
                <div class="sl-content">
                  <div class="sl-date text-muted">9:30</div>
                  <p>Meeting with tech leader</p>
                </div>
              </div>
              <div class="sl-item b-success">
                <div class="sl-content">
                  <div class="sl-date text-muted">8:30</div>
                  <p>Call to customer <a href class="text-info">Jacob</a> and discuss the detail.</p>
                </div>
              </div>
              <div class="sl-item">
                <div class="sl-content">
                  <div class="sl-date text-muted">Wed, 25 Mar</div>
                  <p>Finished task <a href class="text-info">Testing</a>.</p>
                </div>
              </div>
              <div class="sl-item">
                <div class="sl-content">
                  <div class="sl-date text-muted">Thu, 10 Mar</div>
                  <p>Trip to the moon</p>
                </div>
              </div>
              <div class="sl-item b-info">
                <div class="sl-content">
                  <div class="sl-date text-muted">Sat, 5 Mar</div>
                  <p>Prepare for presentation</p>
                </div>
              </div>
              <div class="sl-item">
                <div class="sl-content">
                  <div class="sl-date text-muted">Sun, 11 Feb</div>
                  <p><a href class="text-info">Jessi</a> assign you a task <a href class="text-info">Mockup Design</a>.</p>
                </div>
              </div>
              <div class="sl-item">
                <div class="sl-content">
                  <div class="sl-date text-muted">Thu, 17 Jan</div>
                  <p>Follow up to close deal</p>
                </div>
              </div>
            </div>
          </div>
          <div class="tab-pane p-v-sm" id="tab_3">
              <div ui-include="'../views/blocks/widget.friends.html'"></div>
          </div>
          <div class="tab-pane p-v-sm" id="tab_4">
            <div class="row m-b">
              <div class="col-xs-6">
                <small class="text-muted">Cell Phone</small>
                <div class="_500">1243 0303 0333</div>
              </div>
              <div class="col-xs-6">
                <small class="text-muted">Family Phone</small>
                <div class="_500">+32(0) 3003 234 543</div>
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
                      <img src="../assets/images/a4.jpg" alt="...">
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
                      <img src="../assets/images/a5.jpg" alt="...">
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
                      <img src="../assets/images/a6.jpg" alt="...">
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
                      <img src="../assets/images/a7.jpg" alt="...">
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
                <img src="../assets/images/a0.jpg" class="img-circle w-40">
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
  <script src="../libs/jquery/jquery-pjax/jquery.pjax.js"></script>
  <script src="scripts/ajax.js"></script>
<!-- endbuild -->
</body>
</html>
