
<!DOCTYPE html>
<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.6
Version: 4.6
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Dribbble: www.dribbble.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
Renew Support: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
    <!--<![endif]-->
    <!-- BEGIN HEAD -->

    <head>
        <meta charset="utf-8" />
        <title>Metronic | Dashboard 2</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta content="" name="description" />
        <meta content="" name="author" />
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
        <link href="theme/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="theme/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
        <link href="theme/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="theme/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <link href="theme/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.css" rel="stylesheet" type="text/css" />
        <link href="theme/assets/global/plugins/morris/morris.css" rel="stylesheet" type="text/css" />
        <link href="theme/assets/global/plugins/fullcalendar/fullcalendar.min.css" rel="stylesheet" type="text/css" />
        <link href="theme/assets/global/plugins/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL STYLES -->
        <link href="theme/assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
        <link href="theme/assets/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME GLOBAL STYLES -->
        <!-- BEGIN THEME LAYOUT STYLES -->
        <link href="theme/assets/layouts/layout/css/layout.min.css" rel="stylesheet" type="text/css" />
        <link href="theme/assets/layouts/layout/css/themes/darkblue.min.css" rel="stylesheet" type="text/css" id="style_color" />
        <link href="theme/assets/layouts/layout/css/custom.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME LAYOUT STYLES -->
    </head>
    <!-- END HEAD -->

    <body class="page-header-fixed page-sidebar-closed-hide-logo page-container-bg-solid page-content-white">
        <div class="page-wrapper">
            <!-- BEGIN HEADER -->
            <div class="page-header navbar navbar-fixed-top">
                <!-- BEGIN HEADER INNER -->
                <div class="page-header-inner ">
                    <!-- BEGIN LOGO -->
                    <div class="page-logo">
                        <a href="index.html">
                            <img src="theme/assets/layouts/layout/img/logo.png" alt="logo" class="logo-default" /> </a>
                        <div class="menu-toggler sidebar-toggler">
                            <span></span>
                        </div>
                    </div>
                    <!-- END LOGO -->
                    <!-- BEGIN RESPONSIVE MENU TOGGLER -->
                    <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
                        <span></span>
                    </a>
                    <!-- END RESPONSIVE MENU TOGGLER -->
                    <!-- BEGIN TOP NAVIGATION MENU -->
                    <div class="top-menu">
                        <ul class="nav navbar-nav pull-right">
                            <!-- BEGIN NOTIFICATION DROPDOWN -->
                            <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
                            <li class="dropdown dropdown-extended dropdown-notification" id="header_notification_bar">
                                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                    <i class="icon-bell"></i>
                                    <span class="badge badge-default"> 7 </span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="external">
                                        <h3>
                                            <span class="bold">12 pending</span> notifications</h3>
                                        <a href="page_user_profile_1.html">view all</a>
                                    </li>
                                    <li>
                                        <ul class="dropdown-menu-list scroller" style="height: 250px;" data-handle-color="#637283">
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="time">just now</span>
                                                    <span class="details">
                                                        <span class="label label-sm label-icon label-success">
                                                            <i class="fa fa-plus"></i>
                                                        </span> New user registered. </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="time">3 mins</span>
                                                    <span class="details">
                                                        <span class="label label-sm label-icon label-danger">
                                                            <i class="fa fa-bolt"></i>
                                                        </span> Server #12 overloaded. </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="time">10 mins</span>
                                                    <span class="details">
                                                        <span class="label label-sm label-icon label-warning">
                                                            <i class="fa fa-bell-o"></i>
                                                        </span> Server #2 not responding. </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="time">14 hrs</span>
                                                    <span class="details">
                                                        <span class="label label-sm label-icon label-info">
                                                            <i class="fa fa-bullhorn"></i>
                                                        </span> Application error. </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="time">2 days</span>
                                                    <span class="details">
                                                        <span class="label label-sm label-icon label-danger">
                                                            <i class="fa fa-bolt"></i>
                                                        </span> Database overloaded 68%. </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="time">3 days</span>
                                                    <span class="details">
                                                        <span class="label label-sm label-icon label-danger">
                                                            <i class="fa fa-bolt"></i>
                                                        </span> A user IP blocked. </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="time">4 days</span>
                                                    <span class="details">
                                                        <span class="label label-sm label-icon label-warning">
                                                            <i class="fa fa-bell-o"></i>
                                                        </span> Storage Server #4 not responding dfdfdfd. </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="time">5 days</span>
                                                    <span class="details">
                                                        <span class="label label-sm label-icon label-info">
                                                            <i class="fa fa-bullhorn"></i>
                                                        </span> System Error. </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="time">9 days</span>
                                                    <span class="details">
                                                        <span class="label label-sm label-icon label-danger">
                                                            <i class="fa fa-bolt"></i>
                                                        </span> Storage server failed. </span>
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <!-- END NOTIFICATION DROPDOWN -->
                            <!-- BEGIN INBOX DROPDOWN -->
                            <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
                            <li class="dropdown dropdown-extended dropdown-inbox" id="header_inbox_bar">
                                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                    <i class="icon-envelope-open"></i>
                                    <span class="badge badge-default"> 4 </span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="external">
                                        <h3>You have
                                            <span class="bold">7 New</span> Messages</h3>
                                        <a href="app_inbox.html">view all</a>
                                    </li>
                                    <li>
                                        <ul class="dropdown-menu-list scroller" style="height: 275px;" data-handle-color="#637283">
                                            <li>
                                                <a href="#">
                                                    <span class="photo">
                                                        <img src="theme/assets/layouts/layout3/img/avatar2.jpg" class="img-circle" alt=""> </span>
                                                    <span class="subject">
                                                        <span class="from"> Lisa Wong </span>
                                                        <span class="time">Just Now </span>
                                                    </span>
                                                    <span class="message"> Vivamus sed auctor nibh congue nibh. auctor nibh auctor nibh... </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="photo">
                                                        <img src="theme/assets/layouts/layout3/img/avatar3.jpg" class="img-circle" alt=""> </span>
                                                    <span class="subject">
                                                        <span class="from"> Richard Doe </span>
                                                        <span class="time">16 mins </span>
                                                    </span>
                                                    <span class="message"> Vivamus sed congue nibh auctor nibh congue nibh. auctor nibh auctor nibh... </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="photo">
                                                        <img src="theme/assets/layouts/layout3/img/avatar1.jpg" class="img-circle" alt=""> </span>
                                                    <span class="subject">
                                                        <span class="from"> Bob Nilson </span>
                                                        <span class="time">2 hrs </span>
                                                    </span>
                                                    <span class="message"> Vivamus sed nibh auctor nibh congue nibh. auctor nibh auctor nibh... </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="photo">
                                                        <img src="theme/assets/layouts/layout3/img/avatar2.jpg" class="img-circle" alt=""> </span>
                                                    <span class="subject">
                                                        <span class="from"> Lisa Wong </span>
                                                        <span class="time">40 mins </span>
                                                    </span>
                                                    <span class="message"> Vivamus sed auctor 40% nibh congue nibh... </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="photo">
                                                        <img src="theme/assets/layouts/layout3/img/avatar3.jpg" class="img-circle" alt=""> </span>
                                                    <span class="subject">
                                                        <span class="from"> Richard Doe </span>
                                                        <span class="time">46 mins </span>
                                                    </span>
                                                    <span class="message"> Vivamus sed congue nibh auctor nibh congue nibh. auctor nibh auctor nibh... </span>
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <!-- END INBOX DROPDOWN -->
                            <!-- BEGIN TODO DROPDOWN -->
                            <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
                            <li class="dropdown dropdown-extended dropdown-tasks" id="header_task_bar">
                                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                    <i class="icon-calendar"></i>
                                    <span class="badge badge-default"> 3 </span>
                                </a>
                                <ul class="dropdown-menu extended tasks">
                                    <li class="external">
                                        <h3>You have
                                            <span class="bold">12 pending</span> tasks</h3>
                                        <a href="app_todo.html">view all</a>
                                    </li>
                                    <li>
                                        <ul class="dropdown-menu-list scroller" style="height: 275px;" data-handle-color="#637283">
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="task">
                                                        <span class="desc">New release v1.2 </span>
                                                        <span class="percent">30%</span>
                                                    </span>
                                                    <span class="progress">
                                                        <span style="width: 40%;" class="progress-bar progress-bar-success" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100">
                                                            <span class="sr-only">40% Complete</span>
                                                        </span>
                                                    </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="task">
                                                        <span class="desc">Application deployment</span>
                                                        <span class="percent">65%</span>
                                                    </span>
                                                    <span class="progress">
                                                        <span style="width: 65%;" class="progress-bar progress-bar-danger" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100">
                                                            <span class="sr-only">65% Complete</span>
                                                        </span>
                                                    </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="task">
                                                        <span class="desc">Mobile app release</span>
                                                        <span class="percent">98%</span>
                                                    </span>
                                                    <span class="progress">
                                                        <span style="width: 98%;" class="progress-bar progress-bar-success" aria-valuenow="98" aria-valuemin="0" aria-valuemax="100">
                                                            <span class="sr-only">98% Complete</span>
                                                        </span>
                                                    </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="task">
                                                        <span class="desc">Database migration</span>
                                                        <span class="percent">10%</span>
                                                    </span>
                                                    <span class="progress">
                                                        <span style="width: 10%;" class="progress-bar progress-bar-warning" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100">
                                                            <span class="sr-only">10% Complete</span>
                                                        </span>
                                                    </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="task">
                                                        <span class="desc">Web server upgrade</span>
                                                        <span class="percent">58%</span>
                                                    </span>
                                                    <span class="progress">
                                                        <span style="width: 58%;" class="progress-bar progress-bar-info" aria-valuenow="58" aria-valuemin="0" aria-valuemax="100">
                                                            <span class="sr-only">58% Complete</span>
                                                        </span>
                                                    </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="task">
                                                        <span class="desc">Mobile development</span>
                                                        <span class="percent">85%</span>
                                                    </span>
                                                    <span class="progress">
                                                        <span style="width: 85%;" class="progress-bar progress-bar-success" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100">
                                                            <span class="sr-only">85% Complete</span>
                                                        </span>
                                                    </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="task">
                                                        <span class="desc">New UI release</span>
                                                        <span class="percent">38%</span>
                                                    </span>
                                                    <span class="progress progress-striped">
                                                        <span style="width: 38%;" class="progress-bar progress-bar-important" aria-valuenow="18" aria-valuemin="0" aria-valuemax="100">
                                                            <span class="sr-only">38% Complete</span>
                                                        </span>
                                                    </span>
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <!-- END TODO DROPDOWN -->
                            <!-- BEGIN USER LOGIN DROPDOWN -->
                            <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
                            <li class="dropdown dropdown-user">
                                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                    <img alt="" class="img-circle" src="theme/assets/layouts/layout/img/avatar3_small.jpg" />
                                    <span class="username username-hide-on-mobile"> Nick </span>
                                    <i class="fa fa-angle-down"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-default">
                                    <li>
                                        <a href="page_user_profile_1.html">
                                            <i class="icon-user"></i> My Profile </a>
                                    </li>
                                    <li>
                                        <a href="app_calendar.html">
                                            <i class="icon-calendar"></i> My Calendar </a>
                                    </li>
                                    <li>
                                        <a href="app_inbox.html">
                                            <i class="icon-envelope-open"></i> My Inbox
                                            <span class="badge badge-danger"> 3 </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="app_todo.html">
                                            <i class="icon-rocket"></i> My Tasks
                                            <span class="badge badge-success"> 7 </span>
                                        </a>
                                    </li>
                                    <li class="divider"> </li>
                                    <li>
                                        <a href="page_user_lock_1.html">
                                            <i class="icon-lock"></i> Lock Screen </a>
                                    </li>
                                    <li>
                                        <a href="page_user_login_1.html">
                                            <i class="icon-key"></i> Log Out </a>
                                    </li>
                                </ul>
                            </li>
                            <!-- END USER LOGIN DROPDOWN -->
                            <!-- BEGIN QUICK SIDEBAR TOGGLER -->
                            <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
                            <li class="dropdown dropdown-quick-sidebar-toggler">
                                <a href="javascript:;" class="dropdown-toggle">
                                    <i class="icon-logout"></i>
                                </a>
                            </li>
                            <!-- END QUICK SIDEBAR TOGGLER -->
                        </ul>
                    </div>
                    <!-- END TOP NAVIGATION MENU -->
                </div>
                <!-- END HEADER INNER -->
            </div>
            <!-- END HEADER -->
            <!-- BEGIN HEADER & CONTENT DIVIDER -->
            <div class="clearfix"> </div>
            <!-- END HEADER & CONTENT DIVIDER -->
            <!-- BEGIN CONTAINER -->
            <div class="page-container">
                <!-- BEGIN SIDEBAR -->
                <div class="page-sidebar-wrapper">
                    <!-- BEGIN SIDEBAR -->
                    <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
                    <!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
                    <div class="page-sidebar navbar-collapse collapse">
                        <!-- BEGIN SIDEBAR MENU -->
                        <!-- DOC: Apply "page-sidebar-menu-light" class right after "page-sidebar-menu" to enable light sidebar menu style(without borders) -->
                        <!-- DOC: Apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode -->
                        <!-- DOC: Apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode -->
                        <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
                        <!-- DOC: Set data-keep-expand="true" to keep the submenues expanded -->
                        <!-- DOC: Set data-auto-speed="200" to adjust the sub menu slide up/down speed -->
                        
                        <!-- END SIDEBAR MENU -->
                        <!-- END SIDEBAR MENU -->
                    </div>
                    <!-- END SIDEBAR -->
                </div>
                <!-- END SIDEBAR -->
                <!-- BEGIN CONTENT -->
                <div class="page-content-wrapper">
                    <!-- BEGIN CONTENT BODY -->
                    <div class="page-content">
                        <!-- BEGIN PAGE HEADER-->
                        <!-- BEGIN THEME PANEL -->
                        <div class="theme-panel hidden-xs hidden-sm">
                            <div class="toggler"> </div>
                            <div class="toggler-close"> </div>
                            <div class="theme-options">
                                <div class="theme-option theme-colors clearfix">
                                    <span> THEME COLOR </span>
                                    <ul>
                                        <li class="color-default current tooltips" data-style="default" data-container="body" data-original-title="Default"> </li>
                                        <li class="color-darkblue tooltips" data-style="darkblue" data-container="body" data-original-title="Dark Blue"> </li>
                                        <li class="color-blue tooltips" data-style="blue" data-container="body" data-original-title="Blue"> </li>
                                        <li class="color-grey tooltips" data-style="grey" data-container="body" data-original-title="Grey"> </li>
                                        <li class="color-light tooltips" data-style="light" data-container="body" data-original-title="Light"> </li>
                                        <li class="color-light2 tooltips" data-style="light2" data-container="body" data-html="true" data-original-title="Light 2"> </li>
                                    </ul>
                                </div>
                                <div class="theme-option">
                                    <span> Theme Style </span>
                                    <select class="layout-style-option form-control input-sm">
                                        <option value="square" selected="selected">Square corners</option>
                                        <option value="rounded">Rounded corners</option>
                                    </select>
                                </div>
                                <div class="theme-option">
                                    <span> Layout </span>
                                    <select class="layout-option form-control input-sm">
                                        <option value="fluid" selected="selected">Fluid</option>
                                        <option value="boxed">Boxed</option>
                                    </select>
                                </div>
                                <div class="theme-option">
                                    <span> Header </span>
                                    <select class="page-header-option form-control input-sm">
                                        <option value="fixed" selected="selected">Fixed</option>
                                        <option value="default">Default</option>
                                    </select>
                                </div>
                                <div class="theme-option">
                                    <span> Top Menu Dropdown</span>
                                    <select class="page-header-top-dropdown-style-option form-control input-sm">
                                        <option value="light" selected="selected">Light</option>
                                        <option value="dark">Dark</option>
                                    </select>
                                </div>
                                <div class="theme-option">
                                    <span> Sidebar Mode</span>
                                    <select class="sidebar-option form-control input-sm">
                                        <option value="fixed">Fixed</option>
                                        <option value="default" selected="selected">Default</option>
                                    </select>
                                </div>
                                <div class="theme-option">
                                    <span> Sidebar Menu </span>
                                    <select class="sidebar-menu-option form-control input-sm">
                                        <option value="accordion" selected="selected">Accordion</option>
                                        <option value="hover">Hover</option>
                                    </select>
                                </div>
                                <div class="theme-option">
                                    <span> Sidebar Style </span>
                                    <select class="sidebar-style-option form-control input-sm">
                                        <option value="default" selected="selected">Default</option>
                                        <option value="light">Light</option>
                                    </select>
                                </div>
                                <div class="theme-option">
                                    <span> Sidebar Position </span>
                                    <select class="sidebar-pos-option form-control input-sm">
                                        <option value="left" selected="selected">Left</option>
                                        <option value="right">Right</option>
                                    </select>
                                </div>
                                <div class="theme-option">
                                    <span> Footer </span>
                                    <select class="page-footer-option form-control input-sm">
                                        <option value="fixed">Fixed</option>
                                        <option value="default" selected="selected">Default</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- END THEME PANEL -->
                        <!-- BEGIN PAGE BAR -->
                        <div class="page-bar">
                            <ul class="page-breadcrumb">
                                <li>
                                    <a href="index.html">Home</a>
                                    <i class="fa fa-circle"></i>
                                </li>
                                <li>
                                    <span>Dashboard</span>
                                </li>
                            </ul>
                            <div class="page-toolbar">
                                <div id="dashboard-report-range" class="pull-right tooltips btn btn-sm" data-container="body" data-placement="bottom" data-original-title="Change dashboard date range">
                                    <i class="icon-calendar"></i>&nbsp;
                                    <span class="thin uppercase hidden-xs"></span>&nbsp;
                                    <i class="fa fa-angle-down"></i>
                                </div>
                            </div>
                        </div>
                        <!-- END PAGE BAR -->
                        <!-- BEGIN PAGE TITLE-->
                        <h1 class="page-title"> Dashboard 2
                            <small>dashboard & statistics</small>
                        </h1>
                        <!-- END PAGE TITLE-->
                        <!-- END PAGE HEADER-->
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="dashboard-stat2 ">
                                    <div class="display">
                                        <div class="number">
                                            <h3 class="font-green-sharp">
                                                <span data-counter="counterup" data-value="7800">0</span>
                                                <small class="font-green-sharp">$</small>
                                            </h3>
                                            <small>TOTAL PROFIT</small>
                                        </div>
                                        <div class="icon">
                                            <i class="icon-pie-chart"></i>
                                        </div>
                                    </div>
                                    <div class="progress-info">
                                        <div class="progress">
                                            <span style="width: 76%;" class="progress-bar progress-bar-success green-sharp">
                                                <span class="sr-only">76% progress</span>
                                            </span>
                                        </div>
                                        <div class="status">
                                            <div class="status-title"> progress </div>
                                            <div class="status-number"> 76% </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="dashboard-stat2 ">
                                    <div class="display">
                                        <div class="number">
                                            <h3 class="font-red-haze">
                                                <span data-counter="counterup" data-value="1349">0</span>
                                            </h3>
                                            <small>NEW FEEDBACKS</small>
                                        </div>
                                        <div class="icon">
                                            <i class="icon-like"></i>
                                        </div>
                                    </div>
                                    <div class="progress-info">
                                        <div class="progress">
                                            <span style="width: 85%;" class="progress-bar progress-bar-success red-haze">
                                                <span class="sr-only">85% change</span>
                                            </span>
                                        </div>
                                        <div class="status">
                                            <div class="status-title"> change </div>
                                            <div class="status-number"> 85% </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="dashboard-stat2 ">
                                    <div class="display">
                                        <div class="number">
                                            <h3 class="font-blue-sharp">
                                                <span data-counter="counterup" data-value="567"></span>
                                            </h3>
                                            <small>NEW ORDERS</small>
                                        </div>
                                        <div class="icon">
                                            <i class="icon-basket"></i>
                                        </div>
                                    </div>
                                    <div class="progress-info">
                                        <div class="progress">
                                            <span style="width: 45%;" class="progress-bar progress-bar-success blue-sharp">
                                                <span class="sr-only">45% grow</span>
                                            </span>
                                        </div>
                                        <div class="status">
                                            <div class="status-title"> grow </div>
                                            <div class="status-number"> 45% </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="dashboard-stat2 ">
                                    <div class="display">
                                        <div class="number">
                                            <h3 class="font-purple-soft">
                                                <span data-counter="counterup" data-value="276"></span>
                                            </h3>
                                            <small>NEW USERS</small>
                                        </div>
                                        <div class="icon">
                                            <i class="icon-user"></i>
                                        </div>
                                    </div>
                                    <div class="progress-info">
                                        <div class="progress">
                                            <span style="width: 57%;" class="progress-bar progress-bar-success purple-soft">
                                                <span class="sr-only">56% change</span>
                                            </span>
                                        </div>
                                        <div class="status">
                                            <div class="status-title"> change </div>
                                            <div class="status-number"> 57% </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-sm-6">
                                <div class="portlet light ">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <span class="caption-subject bold uppercase font-dark">Revenue</span>
                                            <span class="caption-helper">distance stats...</span>
                                        </div>
                                        <div class="actions">
                                            <a class="btn btn-circle btn-icon-only btn-default" href="#">
                                                <i class="icon-cloud-upload"></i>
                                            </a>
                                            <a class="btn btn-circle btn-icon-only btn-default" href="#">
                                                <i class="icon-wrench"></i>
                                            </a>
                                            <a class="btn btn-circle btn-icon-only btn-default" href="#">
                                                <i class="icon-trash"></i>
                                            </a>
                                            <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="#"> </a>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div id="dashboard_amchart_1" class="CSSAnimationChart"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="portlet light ">
                                    <div class="portlet-title">
                                        <div class="caption ">
                                            <span class="caption-subject font-dark bold uppercase">Finance</span>
                                            <span class="caption-helper">distance stats...</span>
                                        </div>
                                        <div class="actions">
                                            <a href="#" class="btn btn-circle green btn-outline btn-sm">
                                                <i class="fa fa-pencil"></i> Export </a>
                                            <a href="#" class="btn btn-circle green btn-outline btn-sm">
                                                <i class="fa fa-print"></i> Print </a>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div id="dashboard_amchart_3" class="CSSAnimationChart"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-sm-6">
                                <div class="portlet light ">
                                    <div class="portlet-title tabbable-line">
                                        <div class="caption">
                                            <i class="icon-bubbles font-dark hide"></i>
                                            <span class="caption-subject font-dark bold uppercase">Comments</span>
                                        </div>
                                        <ul class="nav nav-tabs">
                                            <li class="active">
                                                <a href="#portlet_comments_1" data-toggle="tab"> Pending </a>
                                            </li>
                                            <li>
                                                <a href="#portlet_comments_2" data-toggle="tab"> Approved </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="tab-content">
                                            <div class="tab-pane active" id="portlet_comments_1">
                                                <!-- BEGIN: Comments -->
                                                <div class="mt-comments">
                                                    <div class="mt-comment">
                                                        <div class="mt-comment-img">
                                                            <img src="theme/assets/pages/media/users/avatar1.jpg" /> </div>
                                                        <div class="mt-comment-body">
                                                            <div class="mt-comment-info">
                                                                <span class="mt-comment-author">Michael Baker</span>
                                                                <span class="mt-comment-date">26 Feb, 10:30AM</span>
                                                            </div>
                                                            <div class="mt-comment-text"> Lorem Ipsum is simply dummy text of the printing and typesetting industry. </div>
                                                            <div class="mt-comment-details">
                                                                <span class="mt-comment-status mt-comment-status-pending">Pending</span>
                                                                <ul class="mt-comment-actions">
                                                                    <li>
                                                                        <a href="#">Quick Edit</a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">View</a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">Delete</a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mt-comment">
                                                        <div class="mt-comment-img">
                                                            <img src="theme/assets/pages/media/users/avatar6.jpg" /> </div>
                                                        <div class="mt-comment-body">
                                                            <div class="mt-comment-info">
                                                                <span class="mt-comment-author">Larisa Maskalyova</span>
                                                                <span class="mt-comment-date">12 Feb, 08:30AM</span>
                                                            </div>
                                                            <div class="mt-comment-text"> It is a long established fact that a reader will be distracted. </div>
                                                            <div class="mt-comment-details">
                                                                <span class="mt-comment-status mt-comment-status-rejected">Rejected</span>
                                                                <ul class="mt-comment-actions">
                                                                    <li>
                                                                        <a href="#">Quick Edit</a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">View</a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">Delete</a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mt-comment">
                                                        <div class="mt-comment-img">
                                                            <img src="theme/assets/pages/media/users/avatar8.jpg" /> </div>
                                                        <div class="mt-comment-body">
                                                            <div class="mt-comment-info">
                                                                <span class="mt-comment-author">Natasha Kim</span>
                                                                <span class="mt-comment-date">19 Dec,09:50 AM</span>
                                                            </div>
                                                            <div class="mt-comment-text"> The generated Lorem or non-characteristic Ipsum is therefore or non-characteristic. </div>
                                                            <div class="mt-comment-details">
                                                                <span class="mt-comment-status mt-comment-status-pending">Pending</span>
                                                                <ul class="mt-comment-actions">
                                                                    <li>
                                                                        <a href="#">Quick Edit</a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">View</a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">Delete</a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mt-comment">
                                                        <div class="mt-comment-img">
                                                            <img src="theme/assets/pages/media/users/avatar4.jpg" /> </div>
                                                        <div class="mt-comment-body">
                                                            <div class="mt-comment-info">
                                                                <span class="mt-comment-author">Sebastian Davidson</span>
                                                                <span class="mt-comment-date">10 Dec, 09:20 AM</span>
                                                            </div>
                                                            <div class="mt-comment-text"> The standard chunk of Lorem or non-characteristic Ipsum used since the 1500s or non-characteristic. </div>
                                                            <div class="mt-comment-details">
                                                                <span class="mt-comment-status mt-comment-status-rejected">Rejected</span>
                                                                <ul class="mt-comment-actions">
                                                                    <li>
                                                                        <a href="#">Quick Edit</a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">View</a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">Delete</a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- END: Comments -->
                                            </div>
                                            <div class="tab-pane" id="portlet_comments_2">
                                                <!-- BEGIN: Comments -->
                                                <div class="mt-comments">
                                                    <div class="mt-comment">
                                                        <div class="mt-comment-img">
                                                            <img src="theme/assets/pages/media/users/avatar4.jpg" /> </div>
                                                        <div class="mt-comment-body">
                                                            <div class="mt-comment-info">
                                                                <span class="mt-comment-author">Michael Baker</span>
                                                                <span class="mt-comment-date">26 Feb, 10:30AM</span>
                                                            </div>
                                                            <div class="mt-comment-text"> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy. </div>
                                                            <div class="mt-comment-details">
                                                                <span class="mt-comment-status mt-comment-status-approved">Approved</span>
                                                                <ul class="mt-comment-actions">
                                                                    <li>
                                                                        <a href="#">Quick Edit</a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">View</a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">Delete</a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mt-comment">
                                                        <div class="mt-comment-img">
                                                            <img src="theme/assets/pages/media/users/avatar8.jpg" /> </div>
                                                        <div class="mt-comment-body">
                                                            <div class="mt-comment-info">
                                                                <span class="mt-comment-author">Larisa Maskalyova</span>
                                                                <span class="mt-comment-date">12 Feb, 08:30AM</span>
                                                            </div>
                                                            <div class="mt-comment-text"> It is a long established fact that a reader will be distracted by. </div>
                                                            <div class="mt-comment-details">
                                                                <span class="mt-comment-status mt-comment-status-approved">Approved</span>
                                                                <ul class="mt-comment-actions">
                                                                    <li>
                                                                        <a href="#">Quick Edit</a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">View</a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">Delete</a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mt-comment">
                                                        <div class="mt-comment-img">
                                                            <img src="theme/assets/pages/media/users/avatar6.jpg" /> </div>
                                                        <div class="mt-comment-body">
                                                            <div class="mt-comment-info">
                                                                <span class="mt-comment-author">Natasha Kim</span>
                                                                <span class="mt-comment-date">19 Dec,09:50 AM</span>
                                                            </div>
                                                            <div class="mt-comment-text"> The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. </div>
                                                            <div class="mt-comment-details">
                                                                <span class="mt-comment-status mt-comment-status-approved">Approved</span>
                                                                <ul class="mt-comment-actions">
                                                                    <li>
                                                                        <a href="#">Quick Edit</a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">View</a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">Delete</a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mt-comment">
                                                        <div class="mt-comment-img">
                                                            <img src="theme/assets/pages/media/users/avatar1.jpg" /> </div>
                                                        <div class="mt-comment-body">
                                                            <div class="mt-comment-info">
                                                                <span class="mt-comment-author">Sebastian Davidson</span>
                                                                <span class="mt-comment-date">10 Dec, 09:20 AM</span>
                                                            </div>
                                                            <div class="mt-comment-text"> The standard chunk of Lorem Ipsum used since the 1500s </div>
                                                            <div class="mt-comment-details">
                                                                <span class="mt-comment-status mt-comment-status-approved">Approved</span>
                                                                <ul class="mt-comment-actions">
                                                                    <li>
                                                                        <a href="#">Quick Edit</a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">View</a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">Delete</a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- END: Comments -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="portlet light ">
                                    <div class="portlet-title tabbable-line">
                                        <div class="caption">
                                            <i class=" icon-social-twitter font-dark hide"></i>
                                            <span class="caption-subject font-dark bold uppercase">Quick Actions</span>
                                        </div>
                                        <ul class="nav nav-tabs">
                                            <li class="active">
                                                <a href="#tab_actions_pending" data-toggle="tab"> Pending </a>
                                            </li>
                                            <li>
                                                <a href="#tab_actions_completed" data-toggle="tab"> Completed </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="tab-content">
                                            <div class="tab-pane active" id="tab_actions_pending">
                                                <!-- BEGIN: Actions -->
                                                <div class="mt-actions">
                                                    <div class="mt-action">
                                                        <div class="mt-action-img">
                                                            <img src="theme/assets/pages/media/users/avatar10.jpg" /> </div>
                                                        <div class="mt-action-body">
                                                            <div class="mt-action-row">
                                                                <div class="mt-action-info ">
                                                                    <div class="mt-action-icon ">
                                                                        <i class="icon-magnet"></i>
                                                                    </div>
                                                                    <div class="mt-action-details ">
                                                                        <span class="mt-action-author">Natasha Kim</span>
                                                                        <p class="mt-action-desc">Dummy text of the printing</p>
                                                                    </div>
                                                                </div>
                                                                <div class="mt-action-datetime ">
                                                                    <span class="mt-action-date">3 jun</span>
                                                                    <span class="mt-action-dot bg-green"></span>
                                                                    <span class="mt=action-time">9:30-13:00</span>
                                                                </div>
                                                                <div class="mt-action-buttons ">
                                                                    <div class="btn-group btn-group-circle">
                                                                        <button type="button" class="btn btn-outline green btn-sm">Appove</button>
                                                                        <button type="button" class="btn btn-outline red btn-sm">Reject</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mt-action">
                                                        <div class="mt-action-img">
                                                            <img src="theme/assets/pages/media/users/avatar3.jpg" /> </div>
                                                        <div class="mt-action-body">
                                                            <div class="mt-action-row">
                                                                <div class="mt-action-info ">
                                                                    <div class="mt-action-icon ">
                                                                        <i class=" icon-bubbles"></i>
                                                                    </div>
                                                                    <div class="mt-action-details ">
                                                                        <span class="mt-action-author">Gavin Bond</span>
                                                                        <p class="mt-action-desc">pending for approval</p>
                                                                    </div>
                                                                </div>
                                                                <div class="mt-action-datetime ">
                                                                    <span class="mt-action-date">3 jun</span>
                                                                    <span class="mt-action-dot bg-red"></span>
                                                                    <span class="mt=action-time">9:30-13:00</span>
                                                                </div>
                                                                <div class="mt-action-buttons ">
                                                                    <div class="btn-group btn-group-circle">
                                                                        <button type="button" class="btn btn-outline green btn-sm">Appove</button>
                                                                        <button type="button" class="btn btn-outline red btn-sm">Reject</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mt-action">
                                                        <div class="mt-action-img">
                                                            <img src="theme/assets/pages/media/users/avatar2.jpg" /> </div>
                                                        <div class="mt-action-body">
                                                            <div class="mt-action-row">
                                                                <div class="mt-action-info ">
                                                                    <div class="mt-action-icon ">
                                                                        <i class="icon-call-in"></i>
                                                                    </div>
                                                                    <div class="mt-action-details ">
                                                                        <span class="mt-action-author">Diana Berri</span>
                                                                        <p class="mt-action-desc">Lorem Ipsum is simply dummy text</p>
                                                                    </div>
                                                                </div>
                                                                <div class="mt-action-datetime ">
                                                                    <span class="mt-action-date">3 jun</span>
                                                                    <span class="mt-action-dot bg-green"></span>
                                                                    <span class="mt=action-time">9:30-13:00</span>
                                                                </div>
                                                                <div class="mt-action-buttons ">
                                                                    <div class="btn-group btn-group-circle">
                                                                        <button type="button" class="btn btn-outline green btn-sm">Appove</button>
                                                                        <button type="button" class="btn btn-outline red btn-sm">Reject</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mt-action">
                                                        <div class="mt-action-img">
                                                            <img src="theme/assets/pages/media/users/avatar7.jpg" /> </div>
                                                        <div class="mt-action-body">
                                                            <div class="mt-action-row">
                                                                <div class="mt-action-info ">
                                                                    <div class="mt-action-icon ">
                                                                        <i class=" icon-bell"></i>
                                                                    </div>
                                                                    <div class="mt-action-details ">
                                                                        <span class="mt-action-author">John Clark</span>
                                                                        <p class="mt-action-desc">Text of the printing and typesetting industry</p>
                                                                    </div>
                                                                </div>
                                                                <div class="mt-action-datetime ">
                                                                    <span class="mt-action-date">3 jun</span>
                                                                    <span class="mt-action-dot bg-red"></span>
                                                                    <span class="mt=action-time">9:30-13:00</span>
                                                                </div>
                                                                <div class="mt-action-buttons ">
                                                                    <div class="btn-group btn-group-circle">
                                                                        <button type="button" class="btn btn-outline green btn-sm">Appove</button>
                                                                        <button type="button" class="btn btn-outline red btn-sm">Reject</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mt-action">
                                                        <div class="mt-action-img">
                                                            <img src="theme/assets/pages/media/users/avatar8.jpg" /> </div>
                                                        <div class="mt-action-body">
                                                            <div class="mt-action-row">
                                                                <div class="mt-action-info ">
                                                                    <div class="mt-action-icon ">
                                                                        <i class="icon-magnet"></i>
                                                                    </div>
                                                                    <div class="mt-action-details ">
                                                                        <span class="mt-action-author">Donna Clarkson </span>
                                                                        <p class="mt-action-desc">Simply dummy text of the printing</p>
                                                                    </div>
                                                                </div>
                                                                <div class="mt-action-datetime ">
                                                                    <span class="mt-action-date">3 jun</span>
                                                                    <span class="mt-action-dot bg-green"></span>
                                                                    <span class="mt=action-time">9:30-13:00</span>
                                                                </div>
                                                                <div class="mt-action-buttons ">
                                                                    <div class="btn-group btn-group-circle">
                                                                        <button type="button" class="btn btn-outline green btn-sm">Appove</button>
                                                                        <button type="button" class="btn btn-outline red btn-sm">Reject</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mt-action">
                                                        <div class="mt-action-img">
                                                            <img src="theme/assets/pages/media/users/avatar9.jpg" /> </div>
                                                        <div class="mt-action-body">
                                                            <div class="mt-action-row">
                                                                <div class="mt-action-info ">
                                                                    <div class="mt-action-icon ">
                                                                        <i class="icon-magnet"></i>
                                                                    </div>
                                                                    <div class="mt-action-details ">
                                                                        <span class="mt-action-author">Tom Larson</span>
                                                                        <p class="mt-action-desc">Lorem Ipsum is simply dummy text</p>
                                                                    </div>
                                                                </div>
                                                                <div class="mt-action-datetime ">
                                                                    <span class="mt-action-date">3 jun</span>
                                                                    <span class="mt-action-dot bg-green"></span>
                                                                    <span class="mt=action-time">9:30-13:00</span>
                                                                </div>
                                                                <div class="mt-action-buttons ">
                                                                    <div class="btn-group btn-group-circle">
                                                                        <button type="button" class="btn btn-outline green btn-sm">Appove</button>
                                                                        <button type="button" class="btn btn-outline red btn-sm">Reject</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- END: Actions -->
                                            </div>
                                            <div class="tab-pane" id="tab_actions_completed">
                                                <!-- BEGIN:Completed-->
                                                <div class="mt-actions">
                                                    <div class="mt-action">
                                                        <div class="mt-action-img">
                                                            <img src="theme/assets/pages/media/users/avatar1.jpg" /> </div>
                                                        <div class="mt-action-body">
                                                            <div class="mt-action-row">
                                                                <div class="mt-action-info ">
                                                                    <div class="mt-action-icon ">
                                                                        <i class="icon-action-redo"></i>
                                                                    </div>
                                                                    <div class="mt-action-details ">
                                                                        <span class="mt-action-author">Frank Cameron</span>
                                                                        <p class="mt-action-desc">Lorem Ipsum is simply dummy</p>
                                                                    </div>
                                                                </div>
                                                                <div class="mt-action-datetime ">
                                                                    <span class="mt-action-date">3 jun</span>
                                                                    <span class="mt-action-dot bg-red"></span>
                                                                    <span class="mt=action-time">9:30-13:00</span>
                                                                </div>
                                                                <div class="mt-action-buttons ">
                                                                    <div class="btn-group btn-group-circle">
                                                                        <button type="button" class="btn btn-outline green btn-sm">Appove</button>
                                                                        <button type="button" class="btn btn-outline red btn-sm">Reject</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mt-action">
                                                        <div class="mt-action-img">
                                                            <img src="theme/assets/pages/media/users/avatar8.jpg" /> </div>
                                                        <div class="mt-action-body">
                                                            <div class="mt-action-row">
                                                                <div class="mt-action-info ">
                                                                    <div class="mt-action-icon ">
                                                                        <i class="icon-cup"></i>
                                                                    </div>
                                                                    <div class="mt-action-details ">
                                                                        <span class="mt-action-author">Ella Davidson </span>
                                                                        <p class="mt-action-desc">Text of the printing and typesetting industry</p>
                                                                    </div>
                                                                </div>
                                                                <div class="mt-action-datetime ">
                                                                    <span class="mt-action-date">3 jun</span>
                                                                    <span class="mt-action-dot bg-green"></span>
                                                                    <span class="mt=action-time">9:30-13:00</span>
                                                                </div>
                                                                <div class="mt-action-buttons">
                                                                    <div class="btn-group btn-group-circle">
                                                                        <button type="button" class="btn btn-outline green btn-sm">Appove</button>
                                                                        <button type="button" class="btn btn-outline red btn-sm">Reject</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mt-action">
                                                        <div class="mt-action-img">
                                                            <img src="theme/assets/pages/media/users/avatar5.jpg" /> </div>
                                                        <div class="mt-action-body">
                                                            <div class="mt-action-row">
                                                                <div class="mt-action-info ">
                                                                    <div class="mt-action-icon ">
                                                                        <i class=" icon-graduation"></i>
                                                                    </div>
                                                                    <div class="mt-action-details ">
                                                                        <span class="mt-action-author">Jason Dickens </span>
                                                                        <p class="mt-action-desc">Dummy text of the printing and typesetting industry</p>
                                                                    </div>
                                                                </div>
                                                                <div class="mt-action-datetime ">
                                                                    <span class="mt-action-date">3 jun</span>
                                                                    <span class="mt-action-dot bg-red"></span>
                                                                    <span class="mt=action-time">9:30-13:00</span>
                                                                </div>
                                                                <div class="mt-action-buttons ">
                                                                    <div class="btn-group btn-group-circle">
                                                                        <button type="button" class="btn btn-outline green btn-sm">Appove</button>
                                                                        <button type="button" class="btn btn-outline red btn-sm">Reject</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mt-action">
                                                        <div class="mt-action-img">
                                                            <img src="theme/assets/pages/media/users/avatar2.jpg" /> </div>
                                                        <div class="mt-action-body">
                                                            <div class="mt-action-row">
                                                                <div class="mt-action-info ">
                                                                    <div class="mt-action-icon ">
                                                                        <i class="icon-badge"></i>
                                                                    </div>
                                                                    <div class="mt-action-details ">
                                                                        <span class="mt-action-author">Jan Kim</span>
                                                                        <p class="mt-action-desc">Lorem Ipsum is simply dummy</p>
                                                                    </div>
                                                                </div>
                                                                <div class="mt-action-datetime ">
                                                                    <span class="mt-action-date">3 jun</span>
                                                                    <span class="mt-action-dot bg-green"></span>
                                                                    <span class="mt=action-time">9:30-13:00</span>
                                                                </div>
                                                                <div class="mt-action-buttons ">
                                                                    <div class="btn-group btn-group-circle">
                                                                        <button type="button" class="btn btn-outline green btn-sm">Appove</button>
                                                                        <button type="button" class="btn btn-outline red btn-sm">Reject</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- END: Completed -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-sm-6">
                                <div class="portlet light portlet-fit ">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="icon-directions font-green hide"></i>
                                            <span class="caption-subject bold font-dark uppercase "> Activities</span>
                                            <span class="caption-helper">Horizontal Timeline</span>
                                        </div>
                                        <div class="actions">
                                            <div class="btn-group">
                                                <a class="btn blue btn-outline btn-circle btn-sm" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true"> Actions
                                                    <i class="fa fa-angle-down"></i>
                                                </a>
                                                <ul class="dropdown-menu pull-right">
                                                    <li>
                                                        <a href="javascript:;"> Action 1</a>
                                                    </li>
                                                    <li class="divider"> </li>
                                                    <li>
                                                        <a href="javascript:;">Action 2</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">Action 3</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">Action 4</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="cd-horizontal-timeline mt-timeline-horizontal">
                                            <div class="timeline">
                                                <div class="events-wrapper">
                                                    <div class="events">
                                                        <ol>
                                                            <li>
                                                                <a href="#0" data-date="16/01/2014" class="border-after-red bg-after-red selected">16 Jan</a>
                                                            </li>
                                                            <li>
                                                                <a href="#0" data-date="28/02/2014" class="border-after-red bg-after-red">28 Feb</a>
                                                            </li>
                                                            <li>
                                                                <a href="#0" data-date="20/04/2014" class="border-after-red bg-after-red">20 Mar</a>
                                                            </li>
                                                            <li>
                                                                <a href="#0" data-date="20/05/2014" class="border-after-red bg-after-red">20 May</a>
                                                            </li>
                                                            <li>
                                                                <a href="#0" data-date="09/07/2014" class="border-after-red bg-after-red">09 Jul</a>
                                                            </li>
                                                            <li>
                                                                <a href="#0" data-date="30/08/2014" class="border-after-red bg-after-red">30 Aug</a>
                                                            </li>
                                                            <li>
                                                                <a href="#0" data-date="15/09/2014" class="border-after-red bg-after-red">15 Sep</a>
                                                            </li>
                                                            <li>
                                                                <a href="#0" data-date="01/11/2014" class="border-after-red bg-after-red">01 Nov</a>
                                                            </li>
                                                            <li>
                                                                <a href="#0" data-date="10/12/2014" class="border-after-red bg-after-red">10 Dec</a>
                                                            </li>
                                                            <li>
                                                                <a href="#0" data-date="19/01/2015" class="border-after-red bg-after-red">29 Jan</a>
                                                            </li>
                                                            <li>
                                                                <a href="#0" data-date="03/03/2015" class="border-after-red bg-after-red">3 Mar</a>
                                                            </li>
                                                        </ol>
                                                        <span class="filling-line bg-red" aria-hidden="true"></span>
                                                    </div>
                                                    <!-- .events -->
                                                </div>
                                                <!-- .events-wrapper -->
                                                <ul class="cd-timeline-navigation mt-ht-nav-icon">
                                                    <li>
                                                        <a href="#0" class="prev inactive btn btn-outline red md-skip">
                                                            <i class="fa fa-chevron-left"></i>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#0" class="next btn btn-outline red md-skip">
                                                            <i class="fa fa-chevron-right"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <!-- .cd-timeline-navigation -->
                                            </div>
                                            <!-- .timeline -->
                                            <div class="events-content">
                                                <ol>
                                                    <li class="selected" data-date="16/01/2014">
                                                        <div class="mt-title">
                                                            <h2 class="mt-content-title">New User</h2>
                                                        </div>
                                                        <div class="mt-author">
                                                            <div class="mt-avatar">
                                                                <img src="theme/assets/pages/media/users/avatar80_3.jpg" />
                                                            </div>
                                                            <div class="mt-author-name">
                                                                <a href="javascript:;" class="font-blue-madison">Andres Iniesta</a>
                                                            </div>
                                                            <div class="mt-author-datetime font-grey-mint">16 January 2014 : 7:45 PM</div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                        <div class="mt-content border-grey-steel">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam euismod eleifend ipsum, at posuere augue. Pellentesque mi felis, aliquam at iaculis eu, mi felis, aliquam at iaculis mi felis, aliquam
                                                                at iaculis finibus eu ex. Integer efficitur tincidunt malesuada. Sed sit amet molestie elit, vel placerat ipsum. Ut consectetur odio non est rhoncus volutpat.</p>
                                                            <a href="javascript:;" class="btn btn-circle red btn-outline">Read More</a>
                                                            <a href="javascript:;" class="btn btn-circle btn-icon-only blue">
                                                                <i class="fa fa-plus"></i>
                                                            </a>
                                                            <a href="javascript:;" class="btn btn-circle btn-icon-only green pull-right">
                                                                <i class="fa fa-twitter"></i>
                                                            </a>
                                                        </div>
                                                    </li>
                                                    <li data-date="28/02/2014">
                                                        <div class="mt-title">
                                                            <h2 class="mt-content-title">Sending Shipment</h2>
                                                        </div>
                                                        <div class="mt-author">
                                                            <div class="mt-avatar">
                                                                <img src="theme/assets/pages/media/users/avatar80_3.jpg" />
                                                            </div>
                                                            <div class="mt-author-name">
                                                                <a href="javascript:;" class="font-blue-madison">Hugh Grant</a>
                                                            </div>
                                                            <div class="mt-author-datetime font-grey-mint">28 February 2014 : 10:15 AM</div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                        <div class="mt-content border-grey-steel">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam euismod eleifend ipsum, at posuere augue. Pellentesque mi felis, aliquam at iaculis eu, finibus eu ex. Integer efficitur leo eget
                                                                dolor tincidunt, et dignissim risus lacinia. Nam in egestas nunc. Suspendisse potenti. Cras ullamcorper tincidunt malesuada. Sed sit amet molestie elit, vel placerat ipsum. Ut consectetur
                                                                odio non est rhoncus volutpat. Nullam interdum, neque quis vehicula ornare, lacus elit dignissim purus, quis ultrices erat tortor eget felis. Cras commodo id massa at condimentum. Praesent
                                                                dignissim luctus risus sed sodales.</p>
                                                            <a href="javascript:;" class="btn btn-circle btn-outline green-jungle">Download Shipment List</a>
                                                            <div class="btn-group dropup pull-right">
                                                                <button class="btn btn-circle blue-steel dropdown-toggle" type="button" data-toggle="dropdown" data-hover="dropdown" data-close-others="true" aria-expanded="false"> Actions
                                                                    <i class="fa fa-angle-down"></i>
                                                                </button>
                                                                <ul class="dropdown-menu pull-right" role="menu">
                                                                    <li>
                                                                        <a href="javascript:;">Action </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="javascript:;">Another action </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="javascript:;">Something else here </a>
                                                                    </li>
                                                                    <li class="divider"> </li>
                                                                    <li>
                                                                        <a href="javascript:;">Separated link </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li data-date="20/04/2014">
                                                        <div class="mt-title">
                                                            <h2 class="mt-content-title">Blue Chambray</h2>
                                                        </div>
                                                        <div class="mt-author">
                                                            <div class="mt-avatar">
                                                                <img src="theme/assets/pages/media/users/avatar80_1.jpg" />
                                                            </div>
                                                            <div class="mt-author-name">
                                                                <a href="javascript:;" class="font-blue">Rory Matthew</a>
                                                            </div>
                                                            <div class="mt-author-datetime font-grey-mint">20 April 2014 : 10:45 PM</div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                        <div class="mt-content border-grey-steel">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam euismod eleifend ipsum, at posuere augue. Pellentesque mi felis, aliquam at iaculis eu, finibus eu ex. Integer efficitur leo eget
                                                                dolor tincidunt, et dignissim risus lacinia. Nam in egestas nunc. Suspendisse potenti. Cras ullamcorper tincidunt malesuada. Sed sit amet molestie elit, vel placerat ipsum. Ut consectetur
                                                                odio non est rhoncus volutpat. Nullam interdum, neque quis vehicula ornare, lacus elit dignissim purus, quis ultrices erat tortor eget felis. Cras commodo id massa at condimentum. Praesent
                                                                dignissim luctus risus sed sodales.</p>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto, optio, dolorum provident rerum aut hic quasi placeat iure tempora laudantium ipsa ad debitis unde? Iste voluptatibus minus veritatis
                                                                qui ut. laudantium ipsa ad debitis unde? Iste voluptatibus minus veritatis qui ut. </p>
                                                            <a href="javascript:;" class="btn btn-circle red">Read More</a>
                                                        </div>
                                                    </li>
                                                    <li data-date="20/05/2014">
                                                        <div class="mt-title">
                                                            <h2 class="mt-content-title">Timeline Received</h2>
                                                        </div>
                                                        <div class="mt-author">
                                                            <div class="mt-avatar">
                                                                <img src="theme/assets/pages/media/users/avatar80_2.jpg" />
                                                            </div>
                                                            <div class="mt-author-name">
                                                                <a href="javascript:;" class="font-blue-madison">Andres Iniesta</a>
                                                            </div>
                                                            <div class="mt-author-datetime font-grey-mint">20 May 2014 : 12:20 PM</div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                        <div class="mt-content border-grey-steel">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam euismod eleifend ipsum, at posuere augue. Pellentesque mi felis, aliquam at iaculis eu, finibus eu ex. Integer efficitur leo eget
                                                                dolor tincidunt, et dignissim risus lacinia. Nam in egestas nunc. Suspendisse potenti. Cras ullamcorper tincidunt malesuada. Sed sit amet molestie elit, vel placerat ipsum. Ut consectetur
                                                                odio non est rhoncus volutpat. Nullam interdum, neque quis vehicula ornare, lacus elit dignissim purus, quis ultrices erat tortor eget felis. Cras commodo id massa at condimentum. Praesent
                                                                dignissim luctus risus sed sodales.</p>
                                                            <a href="javascript:;" class="btn btn-circle green-turquoise">Read More</a>
                                                        </div>
                                                    </li>
                                                    <li data-date="09/07/2014">
                                                        <div class="mt-title">
                                                            <h2 class="mt-content-title">Event Success</h2>
                                                        </div>
                                                        <div class="mt-author">
                                                            <div class="mt-avatar">
                                                                <img src="theme/assets/pages/media/users/avatar80_1.jpg" />
                                                            </div>
                                                            <div class="mt-author-name">
                                                                <a href="javascript:;" class="font-blue-madison">Matt Goldman</a>
                                                            </div>
                                                            <div class="mt-author-datetime font-grey-mint">9 July 2014 : 8:15 PM</div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                        <div class="mt-content border-grey-steel">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto, optio, dolorum provident rerum aut hic quasi placeat iure tempora laudantium ipsa ad debitis unde.</p>
                                                            <a href="javascript:;"
                                                                class="btn btn-circle btn-outline purple-medium">View Summary</a>
                                                            <div class="btn-group dropup pull-right">
                                                                <button class="btn btn-circle green dropdown-toggle" type="button" data-toggle="dropdown" data-hover="dropdown" data-close-others="true" aria-expanded="false"> Actions
                                                                    <i class="fa fa-angle-down"></i>
                                                                </button>
                                                                <ul class="dropdown-menu pull-right" role="menu">
                                                                    <li>
                                                                        <a href="javascript:;">Action </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="javascript:;">Another action </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="javascript:;">Something else here </a>
                                                                    </li>
                                                                    <li class="divider"> </li>
                                                                    <li>
                                                                        <a href="javascript:;">Separated link </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li data-date="30/08/2014">
                                                        <div class="mt-title">
                                                            <h2 class="mt-content-title">Conference Call</h2>
                                                        </div>
                                                        <div class="mt-author">
                                                            <div class="mt-avatar">
                                                                <img src="theme/assets/pages/media/users/avatar80_1.jpg" />
                                                            </div>
                                                            <div class="mt-author-name">
                                                                <a href="javascript:;" class="font-blue-madison">Rory Matthew</a>
                                                            </div>
                                                            <div class="mt-author-datetime font-grey-mint">30 August 2014 : 5:45 PM</div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                        <div class="mt-content border-grey-steel">
                                                            <img class="timeline-body-img pull-left" src="theme/assets/pages/media/blog/5.jpg" alt="">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto, optio, dolorum provident rerum aut hic quasi placeat iure tempora laudantium ipsa ad debitis unde? Iste voluptatibus minus veritatis
                                                                qui ut. laudantium ipsa ad debitis unde? Iste voluptatibus minus veritatis qui ut. </p>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto, optio, dolorum provident rerum aut hic quasi placeat iure tempora laudantium ipsa ad debitis unde? Iste voluptatibus minus veritatis
                                                                qui ut. laudantium ipsa ad debitis unde? Iste voluptatibus minus veritatis qui ut. </p>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto, optio, dolorum provident rerum aut hic quasi placeat iure tempora laudantium ipsa ad debitis unde? Iste voluptatibus minus veritatis
                                                                qui ut. laudantium ipsa ad debitis unde? Iste voluptatibus minus veritatis qui ut. </p>
                                                            <a href="javascript:;" class="btn btn-circle red">Read More</a>
                                                        </div>
                                                    </li>
                                                    <li data-date="15/09/2014">
                                                        <div class="mt-title">
                                                            <h2 class="mt-content-title">Conference Decision</h2>
                                                        </div>
                                                        <div class="mt-author">
                                                            <div class="mt-avatar">
                                                                <img src="theme/assets/pages/media/users/avatar80_5.jpg" />
                                                            </div>
                                                            <div class="mt-author-name">
                                                                <a href="javascript:;" class="font-blue-madison">Jessica Wolf</a>
                                                            </div>
                                                            <div class="mt-author-datetime font-grey-mint">15 September 2014 : 8:30 PM</div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                        <div class="mt-content border-grey-steel">
                                                            <img class="timeline-body-img pull-right" src="theme/assets/pages/media/blog/6.jpg" alt="">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto, optio, dolorum provident rerum aut hic quasi placeat iure tempora laudantium ipsa ad debitis unde? Iste voluptatibus minus veritatis
                                                                qui ut.</p>
                                                            <a href="javascript:;" class="btn btn-circle green-sharp">Read More</a>
                                                        </div>
                                                    </li>
                                                    <li data-date="01/11/2014">
                                                        <div class="mt-title">
                                                            <h2 class="mt-content-title">Timeline Received</h2>
                                                        </div>
                                                        <div class="mt-author">
                                                            <div class="mt-avatar">
                                                                <img src="theme/assets/pages/media/users/avatar80_2.jpg" />
                                                            </div>
                                                            <div class="mt-author-name">
                                                                <a href="javascript:;" class="font-blue-madison">Andres Iniesta</a>
                                                            </div>
                                                            <div class="mt-author-datetime font-grey-mint">1 November 2014 : 12:20 PM</div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                        <div class="mt-content border-grey-steel">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam euismod eleifend ipsum, at posuere augue. Pellentesque mi felis, aliquam at iaculis eu, finibus eu ex. Integer efficitur leo eget
                                                                dolor tincidunt, et dignissim risus lacinia. Nam in egestas nunc. Suspendisse potenti. Cras ullamcorper tincidunt malesuada. Sed sit amet molestie elit, vel placerat ipsum. Ut consectetur
                                                                odio non est rhoncus volutpat. Nullam interdum, neque quis vehicula ornare, lacus elit dignissim purus, quis ultrices erat tortor eget felis. Cras commodo id massa at condimentum. Praesent
                                                                dignissim luctus risus sed sodales.</p>
                                                            <a href="javascript:;" class="btn btn-circle green-turquoise">Read More</a>
                                                        </div>
                                                    </li>
                                                    <li data-date="10/12/2014">
                                                        <div class="mt-title">
                                                            <h2 class="mt-content-title">Timeline Received</h2>
                                                        </div>
                                                        <div class="mt-author">
                                                            <div class="mt-avatar">
                                                                <img src="theme/assets/pages/media/users/avatar80_2.jpg" />
                                                            </div>
                                                            <div class="mt-author-name">
                                                                <a href="javascript:;" class="font-blue-madison">Andres Iniesta</a>
                                                            </div>
                                                            <div class="mt-author-datetime font-grey-mint">10 December 2015 : 12:20 PM</div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                        <div class="mt-content border-grey-steel">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam euismod eleifend ipsum, at posuere augue. Pellentesque mi felis, aliquam at iaculis eu, finibus eu ex. Integer efficitur leo eget
                                                                dolor tincidunt, et dignissim risus lacinia. Nam in egestas nunc. Suspendisse potenti. Cras ullamcorper tincidunt malesuada. Sed sit amet molestie elit, vel placerat ipsum. Ut consectetur
                                                                odio non est rhoncus volutpat. Nullam interdum, neque quis vehicula ornare, lacus elit dignissim purus, quis ultrices erat tortor eget felis. Cras commodo id massa at condimentum. Praesent
                                                                dignissim luctus risus sed sodales.</p>
                                                            <a href="javascript:;" class="btn btn-circle green-turquoise">Read More</a>
                                                        </div>
                                                    </li>
                                                    <li data-date="19/01/2015">
                                                        <div class="mt-title">
                                                            <h2 class="mt-content-title">Timeline Received</h2>
                                                        </div>
                                                        <div class="mt-author">
                                                            <div class="mt-avatar">
                                                                <img src="theme/assets/pages/media/users/avatar80_2.jpg" />
                                                            </div>
                                                            <div class="mt-author-name">
                                                                <a href="javascript:;" class="font-blue-madison">Andres Iniesta</a>
                                                            </div>
                                                            <div class="mt-author-datetime font-grey-mint">19 January 2015 : 12:20 PM</div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                        <div class="mt-content border-grey-steel">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam euismod eleifend ipsum, at posuere augue. Pellentesque mi felis, aliquam at iaculis eu, finibus eu ex. Integer efficitur leo eget
                                                                dolor tincidunt, et dignissim risus lacinia. Nam in egestas nunc. Suspendisse potenti. Cras ullamcorper tincidunt malesuada. Sed sit amet molestie elit, vel placerat ipsum. Ut consectetur
                                                                odio non est rhoncus volutpat. Nullam interdum, neque quis vehicula ornare, lacus elit dignissim purus, quis ultrices erat tortor eget felis. Cras commodo id massa at condimentum. Praesent
                                                                dignissim luctus risus sed sodales.</p>
                                                            <a href="javascript:;" class="btn btn-circle green-turquoise">Read More</a>
                                                        </div>
                                                    </li>
                                                    <li data-date="03/03/2015">
                                                        <div class="mt-title">
                                                            <h2 class="mt-content-title">Timeline Received</h2>
                                                        </div>
                                                        <div class="mt-author">
                                                            <div class="mt-avatar">
                                                                <img src="theme/assets/pages/media/users/avatar80_2.jpg" />
                                                            </div>
                                                            <div class="mt-author-name">
                                                                <a href="javascript:;" class="font-blue-madison">Andres Iniesta</a>
                                                            </div>
                                                            <div class="mt-author-datetime font-grey-mint">3 March 2015 : 12:20 PM</div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                        <div class="mt-content border-grey-steel">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam euismod eleifend ipsum, at posuere augue. Pellentesque mi felis, aliquam at iaculis eu, finibus eu ex. Integer efficitur leo eget
                                                                dolor tincidunt, et dignissim risus lacinia. Nam in egestas nunc. Suspendisse potenti. Cras ullamcorper tincidunt malesuada. Sed sit amet molestie elit, vel placerat ipsum. Ut consectetur
                                                                odio non est rhoncus volutpat. Nullam interdum, neque quis vehicula ornare, lacus elit dignissim purus, quis ultrices erat tortor eget felis. Cras commodo id massa at condimentum. Praesent
                                                                dignissim luctus risus sed sodales.</p>
                                                            <a href="javascript:;" class="btn btn-circle green-turquoise">Read More</a>
                                                        </div>
                                                    </li>
                                                </ol>
                                            </div>
                                            <!-- .events-content -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="portlet light portlet-fit ">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="icon-directions font-green hide"></i>
                                            <span class="caption-subject bold font-dark uppercase"> Events</span>
                                            <span class="caption-helper">Horizontal Timeline</span>
                                        </div>
                                        <div class="actions">
                                            <div class="btn-group btn-group-devided" data-toggle="buttons">
                                                <label class="btn green btn-outline btn-circle btn-sm active">
                                                    <input type="radio" name="options" class="toggle" id="option1">Actions</label>
                                                <label class="btn  green btn-outline btn-circle btn-sm">
                                                    <input type="radio" name="options" class="toggle" id="option2">Tools</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="cd-horizontal-timeline mt-timeline-horizontal">
                                            <div class="timeline mt-timeline-square">
                                                <div class="events-wrapper">
                                                    <div class="events">
                                                        <ol>
                                                            <li>
                                                                <a href="#0" data-date="16/01/2014" class="border-after-blue bg-after-blue selected">Expo 2016</a>
                                                            </li>
                                                            <li>
                                                                <a href="#0" data-date="28/02/2014" class="border-after-blue bg-after-blue">New Promo</a>
                                                            </li>
                                                            <li>
                                                                <a href="#0" data-date="20/04/2014" class="border-after-blue bg-after-blue">Meeting</a>
                                                            </li>
                                                            <li>
                                                                <a href="#0" data-date="20/05/2014" class="border-after-blue bg-after-blue">Launch</a>
                                                            </li>
                                                            <li>
                                                                <a href="#0" data-date="09/07/2014" class="border-after-blue bg-after-blue">Party</a>
                                                            </li>
                                                            <li>
                                                                <a href="#0" data-date="30/08/2014" class="border-after-blue bg-after-blue">Reports</a>
                                                            </li>
                                                            <li>
                                                                <a href="#0" data-date="15/09/2014" class="border-after-blue bg-after-blue">HR</a>
                                                            </li>
                                                            <li>
                                                                <a href="#0" data-date="01/11/2014" class="border-after-blue bg-after-blue">IPO</a>
                                                            </li>
                                                            <li>
                                                                <a href="#0" data-date="10/12/2014" class="border-after-blue bg-after-blue">Board</a>
                                                            </li>
                                                            <li>
                                                                <a href="#0" data-date="19/01/2015" class="border-after-blue bg-after-blue">Revenue</a>
                                                            </li>
                                                            <li>
                                                                <a href="#0" data-date="03/03/2015" class="border-after-blue bg-after-blue">Dinner</a>
                                                            </li>
                                                        </ol>
                                                        <span class="filling-line bg-blue" aria-hidden="true"></span>
                                                    </div>
                                                    <!-- .events -->
                                                </div>
                                                <!-- .events-wrapper -->
                                                <ul class="cd-timeline-navigation mt-ht-nav-icon">
                                                    <li>
                                                        <a href="#0" class="prev inactive btn blue md-skip">
                                                            <i class="fa fa-chevron-left"></i>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#0" class="next btn blue md-skip">
                                                            <i class="fa fa-chevron-right"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <!-- .cd-timeline-navigation -->
                                            </div>
                                            <!-- .timeline -->
                                            <div class="events-content">
                                                <ol>
                                                    <li class="selected" data-date="16/01/2014">
                                                        <div class="mt-title">
                                                            <h2 class="mt-content-title">Expo 2016 Launch</h2>
                                                        </div>
                                                        <div class="mt-author">
                                                            <div class="mt-avatar">
                                                                <img src="theme/assets/pages/media/users/avatar80_2.jpg" />
                                                            </div>
                                                            <div class="mt-author-name">
                                                                <a href="javascript:;" class="font-blue-madison">Lisa Bold</a>
                                                            </div>
                                                            <div class="mt-author-datetime font-grey-mint">23 February 2014</div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                        <div class="mt-content border-grey-steel">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam euismod mi felis, aliquam at iaculis eleifend ipsum, at posuere augue. Pellentesque mi felis, aliquam at iaculis mi felis, aliquam
                                                                at iaculis eu, onsectetur adipiscing elit finibus eu ex. Integer efficitur leo eget dolor tincidunt, et dignissim risus lacinia. Nam in egestas onsectetur adipiscing elit nunc. Suspendisse
                                                                potenti</p>
                                                            <a href="javascript:;" class="btn btn-circle dark btn-outline">Read More</a>
                                                            <a href="javascript:;" class="btn btn-circle btn-icon-only green pull-right">
                                                                <i class="fa fa-twitter"></i>
                                                            </a>
                                                        </div>
                                                    </li>
                                                    <li data-date="28/02/2014">
                                                        <div class="mt-title">
                                                            <h2 class="mt-content-title">Sending Shipment</h2>
                                                        </div>
                                                        <div class="mt-author">
                                                            <div class="mt-avatar">
                                                                <img src="theme/assets/pages/media/users/avatar80_3.jpg" />
                                                            </div>
                                                            <div class="mt-author-name">
                                                                <a href="javascript:;" class="font-blue-madison">Hugh Grant</a>
                                                            </div>
                                                            <div class="mt-author-datetime font-grey-mint">28 February 2014 : 10:15 AM</div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                        <div class="mt-content border-grey-steel">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam euismod eleifend ipsum, at posuere augue. Pellentesque mi felis, aliquam at iaculis eu, finibus eu ex. Integer efficitur leo eget
                                                                dolor tincidunt, et dignissim risus lacinia. Nam in egestas nunc. Suspendisse potenti. Cras ullamcorper tincidunt malesuada. Sed sit amet molestie elit, vel placerat ipsum. Ut consectetur
                                                                odio non est rhoncus volutpat. Nullam interdum, neque quis vehicula ornare, lacus elit dignissim purus, quis ultrices erat tortor eget felis. Cras commodo id massa at condimentum. Praesent
                                                                dignissim luctus risus sed sodales.</p>
                                                            <a href="javascript:;" class="btn btn-circle btn-outline green-jungle">Download Shipment List</a>
                                                            <div class="btn-group dropup pull-right">
                                                                <button class="btn btn-circle blue-steel dropdown-toggle" type="button" data-toggle="dropdown" data-hover="dropdown" data-close-others="true" aria-expanded="false"> Actions
                                                                    <i class="fa fa-angle-down"></i>
                                                                </button>
                                                                <ul class="dropdown-menu pull-right" role="menu">
                                                                    <li>
                                                                        <a href="javascript:;">Action </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="javascript:;">Another action </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="javascript:;">Something else here </a>
                                                                    </li>
                                                                    <li class="divider"> </li>
                                                                    <li>
                                                                        <a href="javascript:;">Separated link </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li data-date="20/04/2014">
                                                        <div class="mt-title">
                                                            <h2 class="mt-content-title">Blue Chambray</h2>
                                                        </div>
                                                        <div class="mt-author">
                                                            <div class="mt-avatar">
                                                                <img src="theme/assets/pages/media/users/avatar80_1.jpg" />
                                                            </div>
                                                            <div class="mt-author-name">
                                                                <a href="javascript:;" class="font-blue">Rory Matthew</a>
                                                            </div>
                                                            <div class="mt-author-datetime font-grey-mint">20 April 2014 : 10:45 PM</div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                        <div class="mt-content border-grey-steel">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam euismod eleifend ipsum, at posuere augue. Pellentesque mi felis, aliquam at iaculis eu, finibus eu ex. Integer efficitur leo eget
                                                                dolor tincidunt, et dignissim risus lacinia. Nam in egestas nunc. Suspendisse potenti. Cras ullamcorper tincidunt malesuada. Sed sit amet molestie elit, vel placerat ipsum. Ut consectetur
                                                                odio non est rhoncus volutpat. Nullam interdum, neque quis vehicula ornare, lacus elit dignissim purus, quis ultrices erat tortor eget felis. Cras commodo id massa at condimentum. Praesent
                                                                dignissim luctus risus sed sodales.</p>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto, optio, dolorum provident rerum aut hic quasi placeat iure tempora laudantium ipsa ad debitis unde? Iste voluptatibus minus veritatis
                                                                qui ut. laudantium ipsa ad debitis unde? Iste voluptatibus minus veritatis qui ut. </p>
                                                            <a href="javascript:;" class="btn btn-circle red">Read More</a>
                                                        </div>
                                                    </li>
                                                    <li data-date="20/05/2014">
                                                        <div class="mt-title">
                                                            <h2 class="mt-content-title">Timeline Received</h2>
                                                        </div>
                                                        <div class="mt-author">
                                                            <div class="mt-avatar">
                                                                <img src="theme/assets/pages/media/users/avatar80_2.jpg" />
                                                            </div>
                                                            <div class="mt-author-name">
                                                                <a href="javascript:;" class="font-blue-madison">Andres Iniesta</a>
                                                            </div>
                                                            <div class="mt-author-datetime font-grey-mint">20 May 2014 : 12:20 PM</div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                        <div class="mt-content border-grey-steel">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam euismod eleifend ipsum, at posuere augue. Pellentesque mi felis, aliquam at iaculis eu, finibus eu ex. Integer efficitur leo eget
                                                                dolor tincidunt, et dignissim risus lacinia. Nam in egestas nunc. Suspendisse potenti. Cras ullamcorper tincidunt malesuada. Sed sit amet molestie elit, vel placerat ipsum. Ut consectetur
                                                                odio non est rhoncus volutpat. Nullam interdum, neque quis vehicula ornare, lacus elit dignissim purus, quis ultrices erat tortor eget felis. Cras commodo id massa at condimentum. Praesent
                                                                dignissim luctus risus sed sodales.</p>
                                                            <a href="javascript:;" class="btn btn-circle green-turquoise">Read More</a>
                                                        </div>
                                                    </li>
                                                    <li data-date="09/07/2014">
                                                        <div class="mt-title">
                                                            <h2 class="mt-content-title">Event Success</h2>
                                                        </div>
                                                        <div class="mt-author">
                                                            <div class="mt-avatar">
                                                                <img src="theme/assets/pages/media/users/avatar80_1.jpg" />
                                                            </div>
                                                            <div class="mt-author-name">
                                                                <a href="javascript:;" class="font-blue-madison">Matt Goldman</a>
                                                            </div>
                                                            <div class="mt-author-datetime font-grey-mint">9 July 2014 : 8:15 PM</div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                        <div class="mt-content border-grey-steel">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto, optio, dolorum provident rerum aut hic quasi placeat iure tempora laudantium ipsa ad debitis unde.</p>
                                                            <a href="javascript:;"
                                                                class="btn btn-circle btn-outline purple-medium">View Summary</a>
                                                            <div class="btn-group dropup pull-right">
                                                                <button class="btn btn-circle green dropdown-toggle" type="button" data-toggle="dropdown" data-hover="dropdown" data-close-others="true" aria-expanded="false"> Actions
                                                                    <i class="fa fa-angle-down"></i>
                                                                </button>
                                                                <ul class="dropdown-menu pull-right" role="menu">
                                                                    <li>
                                                                        <a href="javascript:;">Action </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="javascript:;">Another action </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="javascript:;">Something else here </a>
                                                                    </li>
                                                                    <li class="divider"> </li>
                                                                    <li>
                                                                        <a href="javascript:;">Separated link </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li data-date="30/08/2014">
                                                        <div class="mt-title">
                                                            <h2 class="mt-content-title">Conference Call</h2>
                                                        </div>
                                                        <div class="mt-author">
                                                            <div class="mt-avatar">
                                                                <img src="theme/assets/pages/media/users/avatar80_1.jpg" />
                                                            </div>
                                                            <div class="mt-author-name">
                                                                <a href="javascript:;" class="font-blue-madison">Rory Matthew</a>
                                                            </div>
                                                            <div class="mt-author-datetime font-grey-mint">30 August 2014 : 5:45 PM</div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                        <div class="mt-content border-grey-steel">
                                                            <img class="timeline-body-img pull-left" src="theme/assets/pages/media/blog/5.jpg" alt="">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto, optio, dolorum provident rerum aut hic quasi placeat iure tempora laudantium ipsa ad debitis unde? Iste voluptatibus minus veritatis
                                                                qui ut. laudantium ipsa ad debitis unde? Iste voluptatibus minus veritatis qui ut. </p>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto, optio, dolorum provident rerum aut hic quasi placeat iure tempora laudantium ipsa ad debitis unde? Iste voluptatibus minus veritatis
                                                                qui ut. laudantium ipsa ad debitis unde? Iste voluptatibus minus veritatis qui ut. </p>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto, optio, dolorum provident rerum aut hic quasi placeat iure tempora laudantium ipsa ad debitis unde? Iste voluptatibus minus veritatis
                                                                qui ut. laudantium ipsa ad debitis unde? Iste voluptatibus minus veritatis qui ut. </p>
                                                            <a href="javascript:;" class="btn btn-circle red">Read More</a>
                                                        </div>
                                                    </li>
                                                    <li data-date="15/09/2014">
                                                        <div class="mt-title">
                                                            <h2 class="mt-content-title">Conference Decision</h2>
                                                        </div>
                                                        <div class="mt-author">
                                                            <div class="mt-avatar">
                                                                <img src="theme/assets/pages/media/users/avatar80_5.jpg" />
                                                            </div>
                                                            <div class="mt-author-name">
                                                                <a href="javascript:;" class="font-blue-madison">Jessica Wolf</a>
                                                            </div>
                                                            <div class="mt-author-datetime font-grey-mint">15 September 2014 : 8:30 PM</div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                        <div class="mt-content border-grey-steel">
                                                            <img class="timeline-body-img pull-right" src="theme/assets/pages/media/blog/6.jpg" alt="">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto, optio, dolorum provident rerum aut hic quasi placeat iure tempora laudantium ipsa ad debitis unde? Iste voluptatibus minus veritatis
                                                                qui ut.</p>
                                                            <a href="javascript:;" class="btn btn-circle green-sharp">Read More</a>
                                                        </div>
                                                    </li>
                                                    <li data-date="01/11/2014">
                                                        <div class="mt-title">
                                                            <h2 class="mt-content-title">Timeline Received</h2>
                                                        </div>
                                                        <div class="mt-author">
                                                            <div class="mt-avatar">
                                                                <img src="theme/assets/pages/media/users/avatar80_2.jpg" />
                                                            </div>
                                                            <div class="mt-author-name">
                                                                <a href="javascript:;" class="font-blue-madison">Andres Iniesta</a>
                                                            </div>
                                                            <div class="mt-author-datetime font-grey-mint">1 November 2014 : 12:20 PM</div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                        <div class="mt-content border-grey-steel">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam euismod eleifend ipsum, at posuere augue. Pellentesque mi felis, aliquam at iaculis eu, finibus eu ex. Integer efficitur leo eget
                                                                dolor tincidunt, et dignissim risus lacinia. Nam in egestas nunc. Suspendisse potenti. Cras ullamcorper tincidunt malesuada. Sed sit amet molestie elit, vel placerat ipsum. Ut consectetur
                                                                odio non est rhoncus volutpat. Nullam interdum, neque quis vehicula ornare, lacus elit dignissim purus, quis ultrices erat tortor eget felis. Cras commodo id massa at condimentum. Praesent
                                                                dignissim luctus risus sed sodales.</p>
                                                            <a href="javascript:;" class="btn btn-circle green-turquoise">Read More</a>
                                                        </div>
                                                    </li>
                                                    <li data-date="10/12/2014">
                                                        <div class="mt-title">
                                                            <h2 class="mt-content-title">Timeline Received</h2>
                                                        </div>
                                                        <div class="mt-author">
                                                            <div class="mt-avatar">
                                                                <img src="theme/assets/pages/media/users/avatar80_2.jpg" />
                                                            </div>
                                                            <div class="mt-author-name">
                                                                <a href="javascript:;" class="font-blue-madison">Andres Iniesta</a>
                                                            </div>
                                                            <div class="mt-author-datetime font-grey-mint">10 December 2014 : 12:20 PM</div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                        <div class="mt-content border-grey-steel">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam euismod eleifend ipsum, at posuere augue. Pellentesque mi felis, aliquam at iaculis eu, finibus eu ex. Integer efficitur leo eget
                                                                dolor tincidunt, et dignissim risus lacinia. Nam in egestas nunc. Suspendisse potenti. Cras ullamcorper tincidunt malesuada. Sed sit amet molestie elit, vel placerat ipsum. Ut consectetur
                                                                odio non est rhoncus volutpat. Nullam interdum, neque quis vehicula ornare, lacus elit dignissim purus, quis ultrices erat tortor eget felis. Cras commodo id massa at condimentum. Praesent
                                                                dignissim luctus risus sed sodales.</p>
                                                            <a href="javascript:;" class="btn btn-circle green-turquoise">Read More</a>
                                                        </div>
                                                    </li>
                                                    <li data-date="19/01/2015">
                                                        <div class="mt-title">
                                                            <h2 class="mt-content-title">Timeline Received</h2>
                                                        </div>
                                                        <div class="mt-author">
                                                            <div class="mt-avatar">
                                                                <img src="theme/assets/pages/media/users/avatar80_2.jpg" />
                                                            </div>
                                                            <div class="mt-author-name">
                                                                <a href="javascript:;" class="font-blue-madison">Andres Iniesta</a>
                                                            </div>
                                                            <div class="mt-author-datetime font-grey-mint">19 January 2015 : 12:20 PM</div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                        <div class="mt-content border-grey-steel">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam euismod eleifend ipsum, at posuere augue. Pellentesque mi felis, aliquam at iaculis eu, finibus eu ex. Integer efficitur leo eget
                                                                dolor tincidunt, et dignissim risus lacinia. Nam in egestas nunc. Suspendisse potenti. Cras ullamcorper tincidunt malesuada. Sed sit amet molestie elit, vel placerat ipsum. Ut consectetur
                                                                odio non est rhoncus volutpat. Nullam interdum, neque quis vehicula ornare, lacus elit dignissim purus, quis ultrices erat tortor eget felis. Cras commodo id massa at condimentum. Praesent
                                                                dignissim luctus risus sed sodales.</p>
                                                            <a href="javascript:;" class="btn btn-circle green-turquoise">Read More</a>
                                                        </div>
                                                    </li>
                                                    <li data-date="03/03/2015">
                                                        <div class="mt-title">
                                                            <h2 class="mt-content-title">Timeline Received</h2>
                                                        </div>
                                                        <div class="mt-author">
                                                            <div class="mt-avatar">
                                                                <img src="theme/assets/pages/media/users/avatar80_2.jpg" />
                                                            </div>
                                                            <div class="mt-author-name">
                                                                <a href="javascript:;" class="font-blue-madison">Andres Iniesta</a>
                                                            </div>
                                                            <div class="mt-author-datetime font-grey-mint">3 March 2015 : 12:20 PM</div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                        <div class="mt-content border-grey-steel">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam euismod eleifend ipsum, at posuere augue. Pellentesque mi felis, aliquam at iaculis eu, finibus eu ex. Integer efficitur leo eget
                                                                dolor tincidunt, et dignissim risus lacinia. Nam in egestas nunc. Suspendisse potenti. Cras ullamcorper tincidunt malesuada. Sed sit amet molestie elit, vel placerat ipsum. Ut consectetur
                                                                odio non est rhoncus volutpat. Nullam interdum, neque quis vehicula ornare, lacus elit dignissim purus, quis ultrices erat tortor eget felis. Cras commodo id massa at condimentum. Praesent
                                                                dignissim luctus risus sed sodales.</p>
                                                            <a href="javascript:;" class="btn btn-circle green-turquoise">Read More</a>
                                                        </div>
                                                    </li>
                                                </ol>
                                            </div>
                                            <!-- .events-content -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-sm-6">
                                <div class="portlet light ">
                                    <div class="portlet-title">
                                        <div class="caption caption-md">
                                            <i class="icon-bar-chart font-dark hide"></i>
                                            <span class="caption-subject font-dark bold uppercase">Member Activity</span>
                                            <span class="caption-helper">weekly stats...</span>
                                        </div>
                                        <div class="actions">
                                            <div class="btn-group btn-group-devided" data-toggle="buttons">
                                                <label class="btn btn-transparent blue-oleo btn-no-border btn-outline btn-circle btn-sm active">
                                                    <input type="radio" name="options" class="toggle" id="option1">Today</label>
                                                <label class="btn btn-transparent blue-oleo btn-no-border btn-outline btn-circle btn-sm">
                                                    <input type="radio" name="options" class="toggle" id="option2">Week</label>
                                                <label class="btn btn-transparent blue-oleo btn-no-border btn-outline btn-circle btn-sm">
                                                    <input type="radio" name="options" class="toggle" id="option2">Month</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="row number-stats margin-bottom-30">
                                            <div class="col-md-6 col-sm-6 col-xs-6">
                                                <div class="stat-left">
                                                    <div class="stat-chart">
                                                        <!-- do not line break "sparkline_bar" div. sparkline chart has an issue when the container div has line break -->
                                                        <div id="sparkline_bar"></div>
                                                    </div>
                                                    <div class="stat-number">
                                                        <div class="title"> Total </div>
                                                        <div class="number"> 2460 </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-sm-6 col-xs-6">
                                                <div class="stat-right">
                                                    <div class="stat-chart">
                                                        <!-- do not line break "sparkline_bar" div. sparkline chart has an issue when the container div has line break -->
                                                        <div id="sparkline_bar2"></div>
                                                    </div>
                                                    <div class="stat-number">
                                                        <div class="title"> New </div>
                                                        <div class="number"> 719 </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="table-scrollable table-scrollable-borderless">
                                            <table class="table table-hover table-light">
                                                <thead>
                                                    <tr class="uppercase">
                                                        <th colspan="2"> MEMBER </th>
                                                        <th> Earnings </th>
                                                        <th> CASES </th>
                                                        <th> CLOSED </th>
                                                        <th> RATE </th>
                                                    </tr>
                                                </thead>
                                                <tr>
                                                    <td class="fit">
                                                        <img class="user-pic rounded" src="theme/assets/pages/media/users/avatar4.jpg"> </td>
                                                    <td>
                                                        <a href="javascript:;" class="primary-link">Brain</a>
                                                    </td>
                                                    <td> $345 </td>
                                                    <td> 45 </td>
                                                    <td> 124 </td>
                                                    <td>
                                                        <span class="bold theme-font">80%</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="fit">
                                                        <img class="user-pic rounded" src="theme/assets/pages/media/users/avatar5.jpg"> </td>
                                                    <td>
                                                        <a href="javascript:;" class="primary-link">Nick</a>
                                                    </td>
                                                    <td> $560 </td>
                                                    <td> 12 </td>
                                                    <td> 24 </td>
                                                    <td>
                                                        <span class="bold theme-font">67%</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="fit">
                                                        <img class="user-pic rounded" src="theme/assets/pages/media/users/avatar6.jpg"> </td>
                                                    <td>
                                                        <a href="javascript:;" class="primary-link">Tim</a>
                                                    </td>
                                                    <td> $1,345 </td>
                                                    <td> 450 </td>
                                                    <td> 46 </td>
                                                    <td>
                                                        <span class="bold theme-font">98%</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="fit">
                                                        <img class="user-pic rounded" src="theme/assets/pages/media/users/avatar7.jpg"> </td>
                                                    <td>
                                                        <a href="javascript:;" class="primary-link">Tom</a>
                                                    </td>
                                                    <td> $645 </td>
                                                    <td> 50 </td>
                                                    <td> 89 </td>
                                                    <td>
                                                        <span class="bold theme-font">58%</span>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="portlet light ">
                                    <div class="portlet-title">
                                        <div class="caption caption-md">
                                            <i class="icon-bar-chart font-dark hide"></i>
                                            <span class="caption-subject font-dark bold uppercase">Customer Support</span>
                                            <span class="caption-helper">45 pending</span>
                                        </div>
                                        <div class="inputs">
                                            <div class="portlet-input input-inline input-small ">
                                                <div class="input-icon right">
                                                    <i class="icon-magnifier"></i>
                                                    <input type="text" class="form-control form-control-solid input-circle" placeholder="search..."> </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="scroller" style="height: 338px;" data-always-visible="1" data-rail-visible1="0" data-handle-color="#D7DCE2">
                                            <div class="general-item-list">
                                                <div class="item">
                                                    <div class="item-head">
                                                        <div class="item-details">
                                                            <img class="item-pic rounded" src="theme/assets/pages/media/users/avatar4.jpg">
                                                            <a href="" class="item-name primary-link">Nick Larson</a>
                                                            <span class="item-label">3 hrs ago</span>
                                                        </div>
                                                        <span class="item-status">
                                                            <span class="badge badge-empty badge-success"></span> Open</span>
                                                    </div>
                                                    <div class="item-body"> Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </div>
                                                </div>
                                                <div class="item">
                                                    <div class="item-head">
                                                        <div class="item-details">
                                                            <img class="item-pic rounded" src="theme/assets/pages/media/users/avatar3.jpg">
                                                            <a href="" class="item-name primary-link">Mark</a>
                                                            <span class="item-label">5 hrs ago</span>
                                                        </div>
                                                        <span class="item-status">
                                                            <span class="badge badge-empty badge-warning"></span> Pending</span>
                                                    </div>
                                                    <div class="item-body"> Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat tincidunt ut laoreet. </div>
                                                </div>
                                                <div class="item">
                                                    <div class="item-head">
                                                        <div class="item-details">
                                                            <img class="item-pic rounded" src="theme/assets/pages/media/users/avatar6.jpg">
                                                            <a href="" class="item-name primary-link">Nick Larson</a>
                                                            <span class="item-label">8 hrs ago</span>
                                                        </div>
                                                        <span class="item-status">
                                                            <span class="badge badge-empty badge-primary"></span> Closed</span>
                                                    </div>
                                                    <div class="item-body"> Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh. </div>
                                                </div>
                                                <div class="item">
                                                    <div class="item-head">
                                                        <div class="item-details">
                                                            <img class="item-pic rounded" src="theme/assets/pages/media/users/avatar7.jpg">
                                                            <a href="" class="item-name primary-link">Nick Larson</a>
                                                            <span class="item-label">12 hrs ago</span>
                                                        </div>
                                                        <span class="item-status">
                                                            <span class="badge badge-empty badge-danger"></span> Pending</span>
                                                    </div>
                                                    <div class="item-body"> Consectetuer adipiscing elit Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </div>
                                                </div>
                                                <div class="item">
                                                    <div class="item-head">
                                                        <div class="item-details">
                                                            <img class="item-pic rounded" src="theme/assets/pages/media/users/avatar9.jpg">
                                                            <a href="" class="item-name primary-link">Richard Stone</a>
                                                            <span class="item-label">2 days ago</span>
                                                        </div>
                                                        <span class="item-status">
                                                            <span class="badge badge-empty badge-danger"></span> Open</span>
                                                    </div>
                                                    <div class="item-body"> Lorem ipsum dolor sit amet, consectetuer adipiscing elit, ut laoreet dolore magna aliquam erat volutpat. </div>
                                                </div>
                                                <div class="item">
                                                    <div class="item-head">
                                                        <div class="item-details">
                                                            <img class="item-pic rounded" src="theme/assets/pages/media/users/avatar8.jpg">
                                                            <a href="" class="item-name primary-link">Dan</a>
                                                            <span class="item-label">3 days ago</span>
                                                        </div>
                                                        <span class="item-status">
                                                            <span class="badge badge-empty badge-warning"></span> Pending</span>
                                                    </div>
                                                    <div class="item-body"> Lorem ipsum dolor sit amet, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </div>
                                                </div>
                                                <div class="item">
                                                    <div class="item-head">
                                                        <div class="item-details">
                                                            <img class="item-pic rounded" src="theme/assets/pages/media/users/avatar2.jpg">
                                                            <a href="" class="item-name primary-link">Larry</a>
                                                            <span class="item-label">4 hrs ago</span>
                                                        </div>
                                                        <span class="item-status">
                                                            <span class="badge badge-empty badge-success"></span> Open</span>
                                                    </div>
                                                    <div class="item-body"> Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-sm-6">
                                <div class="portlet light ">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="icon-cursor font-dark hide"></i>
                                            <span class="caption-subject font-dark bold uppercase">General Stats</span>
                                        </div>
                                        <div class="actions">
                                            <a href="javascript:;" class="btn btn-sm btn-circle red easy-pie-chart-reload">
                                                <i class="fa fa-repeat"></i> Reload </a>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="easy-pie-chart">
                                                    <div class="number transactions" data-percent="55">
                                                        <span>+55</span>% </div>
                                                    <a class="title" href="javascript:;"> Transactions
                                                        <i class="icon-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="margin-bottom-10 visible-sm"> </div>
                                            <div class="col-md-4">
                                                <div class="easy-pie-chart">
                                                    <div class="number visits" data-percent="85">
                                                        <span>+85</span>% </div>
                                                    <a class="title" href="javascript:;"> New Visits
                                                        <i class="icon-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="margin-bottom-10 visible-sm"> </div>
                                            <div class="col-md-4">
                                                <div class="easy-pie-chart">
                                                    <div class="number bounce" data-percent="46">
                                                        <span>-46</span>% </div>
                                                    <a class="title" href="javascript:;"> Bounce
                                                        <i class="icon-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="portlet light ">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="icon-equalizer font-dark hide"></i>
                                            <span class="caption-subject font-dark bold uppercase">Server Stats</span>
                                            <span class="caption-helper">monthly stats...</span>
                                        </div>
                                        <div class="tools">
                                            <a href="" class="collapse"> </a>
                                            <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                                            <a href="" class="reload"> </a>
                                            <a href="" class="remove"> </a>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="sparkline-chart">
                                                    <div class="number" id="sparkline_bar5"></div>
                                                    <a class="title" href="javascript:;"> Network
                                                        <i class="icon-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="margin-bottom-10 visible-sm"> </div>
                                            <div class="col-md-4">
                                                <div class="sparkline-chart">
                                                    <div class="number" id="sparkline_bar6"></div>
                                                    <a class="title" href="javascript:;"> CPU Load
                                                        <i class="icon-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="margin-bottom-10 visible-sm"> </div>
                                            <div class="col-md-4">
                                                <div class="sparkline-chart">
                                                    <div class="number" id="sparkline_line"></div>
                                                    <a class="title" href="javascript:;"> Load Rate
                                                        <i class="icon-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-sm-6">
                                <!-- BEGIN REGIONAL STATS PORTLET-->
                                <div class="portlet light ">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="icon-share font-dark hide"></i>
                                            <span class="caption-subject font-dark bold uppercase">Regional Stats</span>
                                        </div>
                                        <div class="actions">
                                            <a class="btn btn-circle btn-icon-only btn-default" href="javascript:;">
                                                <i class="icon-cloud-upload"></i>
                                            </a>
                                            <a class="btn btn-circle btn-icon-only btn-default" href="javascript:;">
                                                <i class="icon-wrench"></i>
                                            </a>
                                            <a class="btn btn-circle btn-icon-only btn-default fullscreen" data-container="false" data-placement="bottom" href="javascript:;"> </a>
                                            <a class="btn btn-circle btn-icon-only btn-default" href="javascript:;">
                                                <i class="icon-trash"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div id="region_statistics_loading">
                                            <img src="theme/assets/global/img/loading.gif" alt="loading" /> </div>
                                        <div id="region_statistics_content" class="display-none">
                                            <div class="btn-toolbar margin-bottom-10">
                                                <div class="btn-group btn-group-circle" data-toggle="buttons">
                                                    <a href="" class="btn grey-salsa btn-sm active"> Users </a>
                                                    <a href="" class="btn grey-salsa btn-sm"> Orders </a>
                                                </div>
                                                <div class="btn-group pull-right">
                                                    <a href="" class="btn btn-circle grey-salsa btn-sm dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true"> Select Region
                                                        <span class="fa fa-angle-down"> </span>
                                                    </a>
                                                    <ul class="dropdown-menu pull-right">
                                                        <li>
                                                            <a href="javascript:;" id="regional_stat_world"> World </a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" id="regional_stat_usa"> USA </a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" id="regional_stat_europe"> Europe </a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" id="regional_stat_russia"> Russia </a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" id="regional_stat_germany"> Germany </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div id="vmap_world" class="vmaps display-none"> </div>
                                            <div id="vmap_usa" class="vmaps display-none"> </div>
                                            <div id="vmap_europe" class="vmaps display-none"> </div>
                                            <div id="vmap_russia" class="vmaps display-none"> </div>
                                            <div id="vmap_germany" class="vmaps display-none"> </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- END REGIONAL STATS PORTLET-->
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <!-- BEGIN PORTLET-->
                                <div class="portlet light ">
                                    <div class="portlet-title tabbable-line">
                                        <div class="caption">
                                            <i class="icon-globe font-dark hide"></i>
                                            <span class="caption-subject font-dark bold uppercase">Feeds</span>
                                        </div>
                                        <ul class="nav nav-tabs">
                                            <li class="active">
                                                <a href="#tab_1_1" class="active" data-toggle="tab"> System </a>
                                            </li>
                                            <li>
                                                <a href="#tab_1_2" data-toggle="tab"> Activities </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="portlet-body">
                                        <!--BEGIN TABS-->
                                        <div class="tab-content">
                                            <div class="tab-pane active" id="tab_1_1">
                                                <div class="scroller" style="height: 339px;" data-always-visible="1" data-rail-visible="0">
                                                    <ul class="feeds">
                                                        <li>
                                                            <div class="col1">
                                                                <div class="cont">
                                                                    <div class="cont-col1">
                                                                        <div class="label label-sm label-success">
                                                                            <i class="fa fa-bell-o"></i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="cont-col2">
                                                                        <div class="desc"> You have 4 pending tasks.
                                                                            <span class="label label-sm label-info"> Take action
                                                                                <i class="fa fa-share"></i>
                                                                            </span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col2">
                                                                <div class="date"> Just now </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;">
                                                                <div class="col1">
                                                                    <div class="cont">
                                                                        <div class="cont-col1">
                                                                            <div class="label label-sm label-success">
                                                                                <i class="fa fa-bell-o"></i>
                                                                            </div>
                                                                        </div>
                                                                        <div class="cont-col2">
                                                                            <div class="desc"> New version v1.4 just lunched! </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col2">
                                                                    <div class="date"> 20 mins </div>
                                                                </div>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <div class="col1">
                                                                <div class="cont">
                                                                    <div class="cont-col1">
                                                                        <div class="label label-sm label-danger">
                                                                            <i class="fa fa-bolt"></i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="cont-col2">
                                                                        <div class="desc"> Database server #12 overloaded. Please fix the issue. </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col2">
                                                                <div class="date"> 24 mins </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="col1">
                                                                <div class="cont">
                                                                    <div class="cont-col1">
                                                                        <div class="label label-sm label-info">
                                                                            <i class="fa fa-bullhorn"></i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="cont-col2">
                                                                        <div class="desc"> New order received. Please take care of it. </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col2">
                                                                <div class="date"> 30 mins </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="col1">
                                                                <div class="cont">
                                                                    <div class="cont-col1">
                                                                        <div class="label label-sm label-success">
                                                                            <i class="fa fa-bullhorn"></i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="cont-col2">
                                                                        <div class="desc"> New order received. Please take care of it. </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col2">
                                                                <div class="date"> 40 mins </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="col1">
                                                                <div class="cont">
                                                                    <div class="cont-col1">
                                                                        <div class="label label-sm label-warning">
                                                                            <i class="fa fa-plus"></i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="cont-col2">
                                                                        <div class="desc"> New user registered. </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col2">
                                                                <div class="date"> 1.5 hours </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="col1">
                                                                <div class="cont">
                                                                    <div class="cont-col1">
                                                                        <div class="label label-sm label-success">
                                                                            <i class="fa fa-bell-o"></i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="cont-col2">
                                                                        <div class="desc"> Web server hardware needs to be upgraded.
                                                                            <span class="label label-sm label-default "> Overdue </span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col2">
                                                                <div class="date"> 2 hours </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="col1">
                                                                <div class="cont">
                                                                    <div class="cont-col1">
                                                                        <div class="label label-sm label-default">
                                                                            <i class="fa fa-bullhorn"></i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="cont-col2">
                                                                        <div class="desc"> New order received. Please take care of it. </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col2">
                                                                <div class="date"> 3 hours </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="col1">
                                                                <div class="cont">
                                                                    <div class="cont-col1">
                                                                        <div class="label label-sm label-warning">
                                                                            <i class="fa fa-bullhorn"></i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="cont-col2">
                                                                        <div class="desc"> New order received. Please take care of it. </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col2">
                                                                <div class="date"> 5 hours </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="col1">
                                                                <div class="cont">
                                                                    <div class="cont-col1">
                                                                        <div class="label label-sm label-info">
                                                                            <i class="fa fa-bullhorn"></i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="cont-col2">
                                                                        <div class="desc"> New order received. Please take care of it. </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col2">
                                                                <div class="date"> 18 hours </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="col1">
                                                                <div class="cont">
                                                                    <div class="cont-col1">
                                                                        <div class="label label-sm label-default">
                                                                            <i class="fa fa-bullhorn"></i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="cont-col2">
                                                                        <div class="desc"> New order received. Please take care of it. </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col2">
                                                                <div class="date"> 21 hours </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="col1">
                                                                <div class="cont">
                                                                    <div class="cont-col1">
                                                                        <div class="label label-sm label-info">
                                                                            <i class="fa fa-bullhorn"></i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="cont-col2">
                                                                        <div class="desc"> New order received. Please take care of it. </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col2">
                                                                <div class="date"> 22 hours </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="col1">
                                                                <div class="cont">
                                                                    <div class="cont-col1">
                                                                        <div class="label label-sm label-default">
                                                                            <i class="fa fa-bullhorn"></i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="cont-col2">
                                                                        <div class="desc"> New order received. Please take care of it. </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col2">
                                                                <div class="date"> 21 hours </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="col1">
                                                                <div class="cont">
                                                                    <div class="cont-col1">
                                                                        <div class="label label-sm label-info">
                                                                            <i class="fa fa-bullhorn"></i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="cont-col2">
                                                                        <div class="desc"> New order received. Please take care of it. </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col2">
                                                                <div class="date"> 22 hours </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="col1">
                                                                <div class="cont">
                                                                    <div class="cont-col1">
                                                                        <div class="label label-sm label-default">
                                                                            <i class="fa fa-bullhorn"></i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="cont-col2">
                                                                        <div class="desc"> New order received. Please take care of it. </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col2">
                                                                <div class="date"> 21 hours </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="col1">
                                                                <div class="cont">
                                                                    <div class="cont-col1">
                                                                        <div class="label label-sm label-info">
                                                                            <i class="fa fa-bullhorn"></i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="cont-col2">
                                                                        <div class="desc"> New order received. Please take care of it. </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col2">
                                                                <div class="date"> 22 hours </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="col1">
                                                                <div class="cont">
                                                                    <div class="cont-col1">
                                                                        <div class="label label-sm label-default">
                                                                            <i class="fa fa-bullhorn"></i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="cont-col2">
                                                                        <div class="desc"> New order received. Please take care of it. </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col2">
                                                                <div class="date"> 21 hours </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="col1">
                                                                <div class="cont">
                                                                    <div class="cont-col1">
                                                                        <div class="label label-sm label-info">
                                                                            <i class="fa fa-bullhorn"></i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="cont-col2">
                                                                        <div class="desc"> New order received. Please take care of it. </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col2">
                                                                <div class="date"> 22 hours </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="tab-pane" id="tab_1_2">
                                                <div class="scroller" style="height: 290px;" data-always-visible="1" data-rail-visible1="1">
                                                    <ul class="feeds">
                                                        <li>
                                                            <a href="javascript:;">
                                                                <div class="col1">
                                                                    <div class="cont">
                                                                        <div class="cont-col1">
                                                                            <div class="label label-sm label-success">
                                                                                <i class="fa fa-bell-o"></i>
                                                                            </div>
                                                                        </div>
                                                                        <div class="cont-col2">
                                                                            <div class="desc"> New user registered </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col2">
                                                                    <div class="date"> Just now </div>
                                                                </div>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;">
                                                                <div class="col1">
                                                                    <div class="cont">
                                                                        <div class="cont-col1">
                                                                            <div class="label label-sm label-success">
                                                                                <i class="fa fa-bell-o"></i>
                                                                            </div>
                                                                        </div>
                                                                        <div class="cont-col2">
                                                                            <div class="desc"> New order received </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col2">
                                                                    <div class="date"> 10 mins </div>
                                                                </div>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <div class="col1">
                                                                <div class="cont">
                                                                    <div class="cont-col1">
                                                                        <div class="label label-sm label-danger">
                                                                            <i class="fa fa-bolt"></i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="cont-col2">
                                                                        <div class="desc"> Order #24DOP4 has been rejected.
                                                                            <span class="label label-sm label-danger "> Take action
                                                                                <i class="fa fa-share"></i>
                                                                            </span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col2">
                                                                <div class="date"> 24 mins </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;">
                                                                <div class="col1">
                                                                    <div class="cont">
                                                                        <div class="cont-col1">
                                                                            <div class="label label-sm label-success">
                                                                                <i class="fa fa-bell-o"></i>
                                                                            </div>
                                                                        </div>
                                                                        <div class="cont-col2">
                                                                            <div class="desc"> New user registered </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col2">
                                                                    <div class="date"> Just now </div>
                                                                </div>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;">
                                                                <div class="col1">
                                                                    <div class="cont">
                                                                        <div class="cont-col1">
                                                                            <div class="label label-sm label-success">
                                                                                <i class="fa fa-bell-o"></i>
                                                                            </div>
                                                                        </div>
                                                                        <div class="cont-col2">
                                                                            <div class="desc"> New user registered </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col2">
                                                                    <div class="date"> Just now </div>
                                                                </div>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;">
                                                                <div class="col1">
                                                                    <div class="cont">
                                                                        <div class="cont-col1">
                                                                            <div class="label label-sm label-success">
                                                                                <i class="fa fa-bell-o"></i>
                                                                            </div>
                                                                        </div>
                                                                        <div class="cont-col2">
                                                                            <div class="desc"> New user registered </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col2">
                                                                    <div class="date"> Just now </div>
                                                                </div>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;">
                                                                <div class="col1">
                                                                    <div class="cont">
                                                                        <div class="cont-col1">
                                                                            <div class="label label-sm label-success">
                                                                                <i class="fa fa-bell-o"></i>
                                                                            </div>
                                                                        </div>
                                                                        <div class="cont-col2">
                                                                            <div class="desc"> New user registered </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col2">
                                                                    <div class="date"> Just now </div>
                                                                </div>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;">
                                                                <div class="col1">
                                                                    <div class="cont">
                                                                        <div class="cont-col1">
                                                                            <div class="label label-sm label-success">
                                                                                <i class="fa fa-bell-o"></i>
                                                                            </div>
                                                                        </div>
                                                                        <div class="cont-col2">
                                                                            <div class="desc"> New user registered </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col2">
                                                                    <div class="date"> Just now </div>
                                                                </div>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;">
                                                                <div class="col1">
                                                                    <div class="cont">
                                                                        <div class="cont-col1">
                                                                            <div class="label label-sm label-success">
                                                                                <i class="fa fa-bell-o"></i>
                                                                            </div>
                                                                        </div>
                                                                        <div class="cont-col2">
                                                                            <div class="desc"> New user registered </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col2">
                                                                    <div class="date"> Just now </div>
                                                                </div>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;">
                                                                <div class="col1">
                                                                    <div class="cont">
                                                                        <div class="cont-col1">
                                                                            <div class="label label-sm label-success">
                                                                                <i class="fa fa-bell-o"></i>
                                                                            </div>
                                                                        </div>
                                                                        <div class="cont-col2">
                                                                            <div class="desc"> New user registered </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col2">
                                                                    <div class="date"> Just now </div>
                                                                </div>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <!--END TABS-->
                                    </div>
                                </div>
                                <!-- END PORTLET-->
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-sm-6">
                                <div class="portlet light ">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="icon-bubble font-dark hide"></i>
                                            <span class="caption-subject font-hide bold uppercase">Recent Users</span>
                                        </div>
                                        <div class="actions">
                                            <div class="btn-group">
                                                <a class="btn green-haze btn-outline btn-circle btn-sm" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true"> Actions
                                                    <i class="fa fa-angle-down"></i>
                                                </a>
                                                <ul class="dropdown-menu pull-right">
                                                    <li>
                                                        <a href="javascript:;"> Option 1</a>
                                                    </li>
                                                    <li class="divider"> </li>
                                                    <li>
                                                        <a href="javascript:;">Option 2</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">Option 3</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">Option 4</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <!--begin: widget 1-1 -->
                                                <div class="mt-widget-1">
                                                    <div class="mt-icon">
                                                        <a href="#">
                                                            <i class="icon-plus"></i>
                                                        </a>
                                                    </div>
                                                    <div class="mt-img">
                                                        <img src="theme/assets/pages/media/users/avatar80_8.jpg"> </div>
                                                    <div class="mt-body">
                                                        <h3 class="mt-username">Diana Ellison</h3>
                                                        <p class="mt-user-title"> Lorem Ipsum is simply dummy text. </p>
                                                        <div class="mt-stats">
                                                            <div class="btn-group btn-group btn-group-justified">
                                                                <a href="javascript:;" class="btn font-red">
                                                                    <i class="icon-bubbles"></i> 1,7k </a>
                                                                <a href="javascript:;" class="btn font-green">
                                                                    <i class="icon-social-twitter"></i> 2,6k </a>
                                                                <a href="javascript:;" class="btn font-yellow">
                                                                    <i class="icon-emoticon-smile"></i> 3,7k </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--end: widget 1-1 -->
                                            </div>
                                            <div class="col-md-4">
                                                <!--begin: widget 1-2 -->
                                                <div class="mt-widget-1">
                                                    <div class="mt-icon">
                                                        <a href="#">
                                                            <i class="icon-plus"></i>
                                                        </a>
                                                    </div>
                                                    <div class="mt-img">
                                                        <img src="theme/assets/pages/media/users/avatar80_7.jpg"> </div>
                                                    <div class="mt-body">
                                                        <h3 class="mt-username">Jason Baker</h3>
                                                        <p class="mt-user-title"> Lorem Ipsum is simply dummy text. </p>
                                                        <div class="mt-stats">
                                                            <div class="btn-group btn-group btn-group-justified">
                                                                <a href="javascript:;" class="btn font-yellow">
                                                                    <i class="icon-bubbles"></i> 1,7k </a>
                                                                <a href="javascript:;" class="btn font-blue">
                                                                    <i class="icon-social-twitter"></i> 2,6k </a>
                                                                <a href="javascript:;" class="btn font-green">
                                                                    <i class="icon-emoticon-smile"></i> 3,7k </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--end: widget 1-2 -->
                                            </div>
                                            <div class="col-md-4">
                                                <!--begin: widget 1-3 -->
                                                <div class="mt-widget-1">
                                                    <div class="mt-icon">
                                                        <a href="#">
                                                            <i class="icon-plus"></i>
                                                        </a>
                                                    </div>
                                                    <div class="mt-img">
                                                        <img src="theme/assets/pages/media/users/avatar80_6.jpg"> </div>
                                                    <div class="mt-body">
                                                        <h3 class="mt-username">Julia Berry</h3>
                                                        <p class="mt-user-title"> Lorem Ipsum is simply dummy text. </p>
                                                        <div class="mt-stats">
                                                            <div class="btn-group btn-group btn-group-justified">
                                                                <a href="javascript:;" class="btn font-yellow">
                                                                    <i class="icon-bubbles"></i> 1,7k </a>
                                                                <a href="javascript:;" class="btn font-red">
                                                                    <i class="icon-social-twitter"></i> 2,6k </a>
                                                                <a href="javascript:;" class="btn font-green">
                                                                    <i class="icon-emoticon-smile"></i> 3,7k </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--end: widget 1-3 -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="portlet light portlet-fit ">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="icon-microphone font-dark hide"></i>
                                            <span class="caption-subject bold font-dark uppercase"> Recent Works</span>
                                            <span class="caption-helper">default option...</span>
                                        </div>
                                        <div class="actions">
                                            <div class="btn-group btn-group-devided" data-toggle="buttons">
                                                <label class="btn red btn-outline btn-circle btn-sm active">
                                                    <input type="radio" name="options" class="toggle" id="option1">Settings</label>
                                                <label class="btn  red btn-outline btn-circle btn-sm">
                                                    <input type="radio" name="options" class="toggle" id="option2">Tools</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="mt-widget-2">
                                                    <div class="mt-head" style="background-image: url(theme/assets/pages/img/background/32.jpg);">
                                                        <div class="mt-head-label">
                                                            <button type="button" class="btn btn-success">Manhattan</button>
                                                        </div>
                                                        <div class="mt-head-user">
                                                            <div class="mt-head-user-img">
                                                                <img src="theme/assets/pages/img/avatars/team7.jpg"> </div>
                                                            <div class="mt-head-user-info">
                                                                <span class="mt-user-name">Chris Jagers</span>
                                                                <span class="mt-user-time">
                                                                    <i class="icon-emoticon-smile"></i> 3 mins ago </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mt-body">
                                                        <h3 class="mt-body-title"> Thomas Clark </h3>
                                                        <p class="mt-body-description"> It is a long established fact that a reader will be distracted </p>
                                                        <ul class="mt-body-stats">
                                                            <li class="font-green">
                                                                <i class="icon-emoticon-smile"></i> 3,7k</li>
                                                            <li class="font-yellow">
                                                                <i class=" icon-social-twitter"></i> 3,7k</li>
                                                            <li class="font-red">
                                                                <i class="  icon-bubbles"></i> 3,7k</li>
                                                        </ul>
                                                        <div class="mt-body-actions">
                                                            <div class="btn-group btn-group btn-group-justified">
                                                                <a href="javascript:;" class="btn">
                                                                    <i class="icon-bubbles"></i> Bookmark </a>
                                                                <a href="javascript:;" class="btn ">
                                                                    <i class="icon-social-twitter"></i> Share </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="mt-widget-2">
                                                    <div class="mt-head" style="background-image: url(theme/assets/pages/img/background/43.jpg);">
                                                        <div class="mt-head-label">
                                                            <button type="button" class="btn btn-danger">London</button>
                                                        </div>
                                                        <div class="mt-head-user">
                                                            <div class="mt-head-user-img">
                                                                <img src="theme/assets/pages/img/avatars/team3.jpg"> </div>
                                                            <div class="mt-head-user-info">
                                                                <span class="mt-user-name">Harry Harris</span>
                                                                <span class="mt-user-time">
                                                                    <i class="icon-user"></i> 3 mins ago </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mt-body">
                                                        <h3 class="mt-body-title"> Christian Davidson </h3>
                                                        <p class="mt-body-description"> It is a long established fact that a reader will be distracted </p>
                                                        <ul class="mt-body-stats">
                                                            <li class="font-green">
                                                                <i class="icon-emoticon-smile"></i> 3,7k</li>
                                                            <li class="font-yellow">
                                                                <i class=" icon-social-twitter"></i> 3,7k</li>
                                                            <li class="font-red">
                                                                <i class="  icon-bubbles"></i> 3,7k</li>
                                                        </ul>
                                                        <div class="mt-body-actions">
                                                            <div class="btn-group btn-group btn-group-justified">
                                                                <a href="javascript:;" class="btn ">
                                                                    <i class="icon-bubbles"></i> Bookmark </a>
                                                                <a href="javascript:;" class="btn ">
                                                                    <i class="icon-social-twitter"></i> Share </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="portlet light portlet-fit ">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="icon-microphone font-dark hide"></i>
                                            <span class="caption-subject bold font-dark uppercase"> Recent Projects</span>
                                            <span class="caption-helper">default option...</span>
                                        </div>
                                        <div class="actions">
                                            <div class="btn-group btn-group-devided" data-toggle="buttons">
                                                <label class="btn blue btn-outline btn-circle btn-sm active">
                                                    <input type="radio" name="options" class="toggle" id="option1">Actions</label>
                                                <label class="btn  blue btn-outline btn-circle btn-sm">
                                                    <input type="radio" name="options" class="toggle" id="option2">Tools</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="mt-widget-4">
                                                    <div class="mt-img-container">
                                                        <img src="theme/assets/pages/img/background/34.jpg" /> </div>
                                                    <div class="mt-container bg-purple-opacity">
                                                        <div class="mt-head-title"> Website Revamp & Deployment </div>
                                                        <div class="mt-body-icons">
                                                            <a href="#">
                                                                <i class=" icon-pencil"></i>
                                                            </a>
                                                            <a href="#">
                                                                <i class=" icon-map"></i>
                                                            </a>
                                                            <a href="#">
                                                                <i class=" icon-trash"></i>
                                                            </a>
                                                        </div>
                                                        <div class="mt-footer-button">
                                                            <button type="button" class="btn btn-circle btn-danger btn-sm">Dior</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="mt-widget-4">
                                                    <div class="mt-img-container">
                                                        <img src="theme/assets/pages/img/background/46.jpg" /> </div>
                                                    <div class="mt-container bg-green-opacity">
                                                        <div class="mt-head-title"> CRM Development & Deployment </div>
                                                        <div class="mt-body-icons">
                                                            <a href="#">
                                                                <i class=" icon-social-twitter"></i>
                                                            </a>
                                                            <a href="#">
                                                                <i class=" icon-bubbles"></i>
                                                            </a>
                                                            <a href="#">
                                                                <i class=" icon-bell"></i>
                                                            </a>
                                                        </div>
                                                        <div class="mt-footer-button">
                                                            <button type="button" class="btn btn-circle blue-ebonyclay btn-sm">Nike</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="mt-widget-4">
                                                    <div class="mt-img-container">
                                                        <img src="theme/assets/pages/img/background/37.jpg" /> </div>
                                                    <div class="mt-container bg-dark-opacity">
                                                        <div class="mt-head-title"> Marketing Campaigns </div>
                                                        <div class="mt-body-icons">
                                                            <a href="#">
                                                                <i class=" icon-bubbles"></i>
                                                            </a>
                                                            <a href="#">
                                                                <i class=" icon-map"></i>
                                                            </a>
                                                            <a href="#">
                                                                <i class=" icon-cup"></i>
                                                            </a>
                                                        </div>
                                                        <div class="mt-footer-button">
                                                            <button type="button" class="btn btn-circle btn-success btn-sm">Honda</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="portlet light portlet-fit ">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="icon-microphone font-dark hide"></i>
                                            <span class="caption-subject bold font-dark uppercase"> Activities</span>
                                            <span class="caption-helper">default option...</span>
                                        </div>
                                        <div class="actions">
                                            <div class="btn-group">
                                                <a class="btn red btn-outline btn-circle btn-sm" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true"> Actions
                                                    <i class="fa fa-angle-down"></i>
                                                </a>
                                                <ul class="dropdown-menu pull-right">
                                                    <li>
                                                        <a href="javascript:;"> Option 1</a>
                                                    </li>
                                                    <li class="divider"> </li>
                                                    <li>
                                                        <a href="javascript:;">Option 2</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">Option 3</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">Option 4</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="mt-widget-3">
                                                    <div class="mt-head bg-blue-hoki">
                                                        <div class="mt-head-icon">
                                                            <i class=" icon-social-twitter"></i>
                                                        </div>
                                                        <div class="mt-head-desc"> Lorem Ipsum is simply dummy text of the ... </div>
                                                        <span class="mt-head-date"> 25 Jan, 2015 </span>
                                                        <div class="mt-head-button">
                                                            <button type="button" class="btn btn-circle btn-outline white btn-sm">Add</button>
                                                        </div>
                                                    </div>
                                                    <div class="mt-body-actions-icons">
                                                        <div class="btn-group btn-group btn-group-justified">
                                                            <a href="javascript:;" class="btn ">
                                                                <span class="mt-icon">
                                                                    <i class="glyphicon glyphicon-align-justify"></i>
                                                                </span>RECORD </a>
                                                            <a href="javascript:;" class="btn ">
                                                                <span class="mt-icon">
                                                                    <i class="glyphicon glyphicon-camera"></i>
                                                                </span>PHOTO </a>
                                                            <a href="javascript:;" class="btn ">
                                                                <span class="mt-icon">
                                                                    <i class="glyphicon glyphicon-calendar"></i>
                                                                </span>DATE </a>
                                                            <a href="javascript:;" class="btn ">
                                                                <span class="mt-icon">
                                                                    <i class="glyphicon glyphicon-record"></i>
                                                                </span>RANC </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="mt-widget-3">
                                                    <div class="mt-head bg-red">
                                                        <div class="mt-head-icon">
                                                            <i class="icon-user"></i>
                                                        </div>
                                                        <div class="mt-head-desc"> Lorem Ipsum is simply dummy text of the ... </div>
                                                        <span class="mt-head-date"> 12 Feb, 2016 </span>
                                                        <div class="mt-head-button">
                                                            <button type="button" class="btn btn-circle btn-outline white btn-sm">Add</button>
                                                        </div>
                                                    </div>
                                                    <div class="mt-body-actions-icons">
                                                        <div class="btn-group btn-group btn-group-justified">
                                                            <a href="javascript:;" class="btn ">
                                                                <span class="mt-icon">
                                                                    <i class="glyphicon glyphicon-align-justify"></i>
                                                                </span>RECORD </a>
                                                            <a href="javascript:;" class="btn ">
                                                                <span class="mt-icon">
                                                                    <i class="glyphicon glyphicon-camera"></i>
                                                                </span>PHOTO </a>
                                                            <a href="javascript:;" class="btn ">
                                                                <span class="mt-icon">
                                                                    <i class="glyphicon glyphicon-calendar"></i>
                                                                </span>DATE </a>
                                                            <a href="javascript:;" class="btn ">
                                                                <span class="mt-icon">
                                                                    <i class="glyphicon glyphicon-record"></i>
                                                                </span>RANC </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="mt-widget-3">
                                                    <div class="mt-head bg-green">
                                                        <div class="mt-head-icon">
                                                            <i class=" icon-graduation"></i>
                                                        </div>
                                                        <div class="mt-head-desc"> Lorem Ipsum is simply dummy text of the ... </div>
                                                        <span class="mt-head-date"> 3 Mar, 2015 </span>
                                                        <div class="mt-head-button">
                                                            <button type="button" class="btn btn-circle btn-outline white btn-sm">Add</button>
                                                        </div>
                                                    </div>
                                                    <div class="mt-body-actions-icons">
                                                        <div class="btn-group btn-group btn-group-justified">
                                                            <a href="javascript:;" class="btn ">
                                                                <span class="mt-icon">
                                                                    <i class="glyphicon glyphicon-align-justify"></i>
                                                                </span>RECORD </a>
                                                            <a href="javascript:;" class="btn ">
                                                                <span class="mt-icon">
                                                                    <i class="glyphicon glyphicon-camera"></i>
                                                                </span>PHOTO </a>
                                                            <a href="javascript:;" class="btn ">
                                                                <span class="mt-icon">
                                                                    <i class="glyphicon glyphicon-calendar"></i>
                                                                </span>DATE </a>
                                                            <a href="javascript:;" class="btn ">
                                                                <span class="mt-icon">
                                                                    <i class="glyphicon glyphicon-record"></i>
                                                                </span>RANC </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END CONTENT BODY -->
                </div>
                <!-- END CONTENT -->
                <!-- BEGIN QUICK SIDEBAR -->
                <a href="javascript:;" class="page-quick-sidebar-toggler">
                    <i class="icon-login"></i>
                </a>
                <div class="page-quick-sidebar-wrapper" data-close-on-body-click="false">
                    <div class="page-quick-sidebar">
                        <ul class="nav nav-tabs">
                            <li class="active">
                                <a href="javascript:;" data-target="#quick_sidebar_tab_1" data-toggle="tab"> Users
                                    <span class="badge badge-danger">2</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;" data-target="#quick_sidebar_tab_2" data-toggle="tab"> Alerts
                                    <span class="badge badge-success">7</span>
                                </a>
                            </li>
                            <li class="dropdown">
                                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"> More
                                    <i class="fa fa-angle-down"></i>
                                </a>
                                <ul class="dropdown-menu pull-right">
                                    <li>
                                        <a href="javascript:;" data-target="#quick_sidebar_tab_3" data-toggle="tab">
                                            <i class="icon-bell"></i> Alerts </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;" data-target="#quick_sidebar_tab_3" data-toggle="tab">
                                            <i class="icon-info"></i> Notifications </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;" data-target="#quick_sidebar_tab_3" data-toggle="tab">
                                            <i class="icon-speech"></i> Activities </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="javascript:;" data-target="#quick_sidebar_tab_3" data-toggle="tab">
                                            <i class="icon-settings"></i> Settings </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active page-quick-sidebar-chat" id="quick_sidebar_tab_1">
                                <div class="page-quick-sidebar-chat-users" data-rail-color="#ddd" data-wrapper-class="page-quick-sidebar-list">
                                    <h3 class="list-heading">Staff</h3>
                                    <ul class="media-list list-items">
                                        <li class="media">
                                            <div class="media-status">
                                                <span class="badge badge-success">8</span>
                                            </div>
                                            <img class="media-object" src="theme/assets/layouts/layout/img/avatar3.jpg" alt="...">
                                            <div class="media-body">
                                                <h4 class="media-heading">Bob Nilson</h4>
                                                <div class="media-heading-sub"> Project Manager </div>
                                            </div>
                                        </li>
                                        <li class="media">
                                            <img class="media-object" src="theme/assets/layouts/layout/img/avatar1.jpg" alt="...">
                                            <div class="media-body">
                                                <h4 class="media-heading">Nick Larson</h4>
                                                <div class="media-heading-sub"> Art Director </div>
                                            </div>
                                        </li>
                                        <li class="media">
                                            <div class="media-status">
                                                <span class="badge badge-danger">3</span>
                                            </div>
                                            <img class="media-object" src="theme/assets/layouts/layout/img/avatar4.jpg" alt="...">
                                            <div class="media-body">
                                                <h4 class="media-heading">Deon Hubert</h4>
                                                <div class="media-heading-sub"> CTO </div>
                                            </div>
                                        </li>
                                        <li class="media">
                                            <img class="media-object" src="theme/assets/layouts/layout/img/avatar2.jpg" alt="...">
                                            <div class="media-body">
                                                <h4 class="media-heading">Ella Wong</h4>
                                                <div class="media-heading-sub"> CEO </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <h3 class="list-heading">Customers</h3>
                                    <ul class="media-list list-items">
                                        <li class="media">
                                            <div class="media-status">
                                                <span class="badge badge-warning">2</span>
                                            </div>
                                            <img class="media-object" src="theme/assets/layouts/layout/img/avatar6.jpg" alt="...">
                                            <div class="media-body">
                                                <h4 class="media-heading">Lara Kunis</h4>
                                                <div class="media-heading-sub"> CEO, Loop Inc </div>
                                                <div class="media-heading-small"> Last seen 03:10 AM </div>
                                            </div>
                                        </li>
                                        <li class="media">
                                            <div class="media-status">
                                                <span class="label label-sm label-success">new</span>
                                            </div>
                                            <img class="media-object" src="theme/assets/layouts/layout/img/avatar7.jpg" alt="...">
                                            <div class="media-body">
                                                <h4 class="media-heading">Ernie Kyllonen</h4>
                                                <div class="media-heading-sub"> Project Manager,
                                                    <br> SmartBizz PTL </div>
                                            </div>
                                        </li>
                                        <li class="media">
                                            <img class="media-object" src="theme/assets/layouts/layout/img/avatar8.jpg" alt="...">
                                            <div class="media-body">
                                                <h4 class="media-heading">Lisa Stone</h4>
                                                <div class="media-heading-sub"> CTO, Keort Inc </div>
                                                <div class="media-heading-small"> Last seen 13:10 PM </div>
                                            </div>
                                        </li>
                                        <li class="media">
                                            <div class="media-status">
                                                <span class="badge badge-success">7</span>
                                            </div>
                                            <img class="media-object" src="theme/assets/layouts/layout/img/avatar9.jpg" alt="...">
                                            <div class="media-body">
                                                <h4 class="media-heading">Deon Portalatin</h4>
                                                <div class="media-heading-sub"> CFO, H&D LTD </div>
                                            </div>
                                        </li>
                                        <li class="media">
                                            <img class="media-object" src="theme/assets/layouts/layout/img/avatar10.jpg" alt="...">
                                            <div class="media-body">
                                                <h4 class="media-heading">Irina Savikova</h4>
                                                <div class="media-heading-sub"> CEO, Tizda Motors Inc </div>
                                            </div>
                                        </li>
                                        <li class="media">
                                            <div class="media-status">
                                                <span class="badge badge-danger">4</span>
                                            </div>
                                            <img class="media-object" src="theme/assets/layouts/layout/img/avatar11.jpg" alt="...">
                                            <div class="media-body">
                                                <h4 class="media-heading">Maria Gomez</h4>
                                                <div class="media-heading-sub"> Manager, Infomatic Inc </div>
                                                <div class="media-heading-small"> Last seen 03:10 AM </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="page-quick-sidebar-item">
                                    <div class="page-quick-sidebar-chat-user">
                                        <div class="page-quick-sidebar-nav">
                                            <a href="javascript:;" class="page-quick-sidebar-back-to-list">
                                                <i class="icon-arrow-left"></i>Back</a>
                                        </div>
                                        <div class="page-quick-sidebar-chat-user-messages">
                                            <div class="post out">
                                                <img class="avatar" alt="" src="theme/assets/layouts/layout/img/avatar3.jpg" />
                                                <div class="message">
                                                    <span class="arrow"></span>
                                                    <a href="javascript:;" class="name">Bob Nilson</a>
                                                    <span class="datetime">20:15</span>
                                                    <span class="body"> When could you send me the report ? </span>
                                                </div>
                                            </div>
                                            <div class="post in">
                                                <img class="avatar" alt="" src="theme/assets/layouts/layout/img/avatar2.jpg" />
                                                <div class="message">
                                                    <span class="arrow"></span>
                                                    <a href="javascript:;" class="name">Ella Wong</a>
                                                    <span class="datetime">20:15</span>
                                                    <span class="body"> Its almost done. I will be sending it shortly </span>
                                                </div>
                                            </div>
                                            <div class="post out">
                                                <img class="avatar" alt="" src="theme/assets/layouts/layout/img/avatar3.jpg" />
                                                <div class="message">
                                                    <span class="arrow"></span>
                                                    <a href="javascript:;" class="name">Bob Nilson</a>
                                                    <span class="datetime">20:15</span>
                                                    <span class="body"> Alright. Thanks! :) </span>
                                                </div>
                                            </div>
                                            <div class="post in">
                                                <img class="avatar" alt="" src="theme/assets/layouts/layout/img/avatar2.jpg" />
                                                <div class="message">
                                                    <span class="arrow"></span>
                                                    <a href="javascript:;" class="name">Ella Wong</a>
                                                    <span class="datetime">20:16</span>
                                                    <span class="body"> You are most welcome. Sorry for the delay. </span>
                                                </div>
                                            </div>
                                            <div class="post out">
                                                <img class="avatar" alt="" src="theme/assets/layouts/layout/img/avatar3.jpg" />
                                                <div class="message">
                                                    <span class="arrow"></span>
                                                    <a href="javascript:;" class="name">Bob Nilson</a>
                                                    <span class="datetime">20:17</span>
                                                    <span class="body"> No probs. Just take your time :) </span>
                                                </div>
                                            </div>
                                            <div class="post in">
                                                <img class="avatar" alt="" src="theme/assets/layouts/layout/img/avatar2.jpg" />
                                                <div class="message">
                                                    <span class="arrow"></span>
                                                    <a href="javascript:;" class="name">Ella Wong</a>
                                                    <span class="datetime">20:40</span>
                                                    <span class="body"> Alright. I just emailed it to you. </span>
                                                </div>
                                            </div>
                                            <div class="post out">
                                                <img class="avatar" alt="" src="theme/assets/layouts/layout/img/avatar3.jpg" />
                                                <div class="message">
                                                    <span class="arrow"></span>
                                                    <a href="javascript:;" class="name">Bob Nilson</a>
                                                    <span class="datetime">20:17</span>
                                                    <span class="body"> Great! Thanks. Will check it right away. </span>
                                                </div>
                                            </div>
                                            <div class="post in">
                                                <img class="avatar" alt="" src="theme/assets/layouts/layout/img/avatar2.jpg" />
                                                <div class="message">
                                                    <span class="arrow"></span>
                                                    <a href="javascript:;" class="name">Ella Wong</a>
                                                    <span class="datetime">20:40</span>
                                                    <span class="body"> Please let me know if you have any comment. </span>
                                                </div>
                                            </div>
                                            <div class="post out">
                                                <img class="avatar" alt="" src="theme/assets/layouts/layout/img/avatar3.jpg" />
                                                <div class="message">
                                                    <span class="arrow"></span>
                                                    <a href="javascript:;" class="name">Bob Nilson</a>
                                                    <span class="datetime">20:17</span>
                                                    <span class="body"> Sure. I will check and buzz you if anything needs to be corrected. </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="page-quick-sidebar-chat-user-form">
                                            <div class="input-group">
                                                <input type="text" class="form-control" placeholder="Type a message here...">
                                                <div class="input-group-btn">
                                                    <button type="button" class="btn green">
                                                        <i class="icon-paper-clip"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane page-quick-sidebar-alerts" id="quick_sidebar_tab_2">
                                <div class="page-quick-sidebar-alerts-list">
                                    <h3 class="list-heading">General</h3>
                                    <ul class="feeds list-items">
                                        <li>
                                            <div class="col1">
                                                <div class="cont">
                                                    <div class="cont-col1">
                                                        <div class="label label-sm label-info">
                                                            <i class="fa fa-check"></i>
                                                        </div>
                                                    </div>
                                                    <div class="cont-col2">
                                                        <div class="desc"> You have 4 pending tasks.
                                                            <span class="label label-sm label-warning "> Take action
                                                                <i class="fa fa-share"></i>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col2">
                                                <div class="date"> Just now </div>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <div class="col1">
                                                    <div class="cont">
                                                        <div class="cont-col1">
                                                            <div class="label label-sm label-success">
                                                                <i class="fa fa-bar-chart-o"></i>
                                                            </div>
                                                        </div>
                                                        <div class="cont-col2">
                                                            <div class="desc"> Finance Report for year 2013 has been released. </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col2">
                                                    <div class="date"> 20 mins </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <div class="col1">
                                                <div class="cont">
                                                    <div class="cont-col1">
                                                        <div class="label label-sm label-danger">
                                                            <i class="fa fa-user"></i>
                                                        </div>
                                                    </div>
                                                    <div class="cont-col2">
                                                        <div class="desc"> You have 5 pending membership that requires a quick review. </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col2">
                                                <div class="date"> 24 mins </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="col1">
                                                <div class="cont">
                                                    <div class="cont-col1">
                                                        <div class="label label-sm label-info">
                                                            <i class="fa fa-shopping-cart"></i>
                                                        </div>
                                                    </div>
                                                    <div class="cont-col2">
                                                        <div class="desc"> New order received with
                                                            <span class="label label-sm label-success"> Reference Number: DR23923 </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col2">
                                                <div class="date"> 30 mins </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="col1">
                                                <div class="cont">
                                                    <div class="cont-col1">
                                                        <div class="label label-sm label-success">
                                                            <i class="fa fa-user"></i>
                                                        </div>
                                                    </div>
                                                    <div class="cont-col2">
                                                        <div class="desc"> You have 5 pending membership that requires a quick review. </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col2">
                                                <div class="date"> 24 mins </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="col1">
                                                <div class="cont">
                                                    <div class="cont-col1">
                                                        <div class="label label-sm label-info">
                                                            <i class="fa fa-bell-o"></i>
                                                        </div>
                                                    </div>
                                                    <div class="cont-col2">
                                                        <div class="desc"> Web server hardware needs to be upgraded.
                                                            <span class="label label-sm label-warning"> Overdue </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col2">
                                                <div class="date"> 2 hours </div>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <div class="col1">
                                                    <div class="cont">
                                                        <div class="cont-col1">
                                                            <div class="label label-sm label-default">
                                                                <i class="fa fa-briefcase"></i>
                                                            </div>
                                                        </div>
                                                        <div class="cont-col2">
                                                            <div class="desc"> IPO Report for year 2013 has been released. </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col2">
                                                    <div class="date"> 20 mins </div>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                    <h3 class="list-heading">System</h3>
                                    <ul class="feeds list-items">
                                        <li>
                                            <div class="col1">
                                                <div class="cont">
                                                    <div class="cont-col1">
                                                        <div class="label label-sm label-info">
                                                            <i class="fa fa-check"></i>
                                                        </div>
                                                    </div>
                                                    <div class="cont-col2">
                                                        <div class="desc"> You have 4 pending tasks.
                                                            <span class="label label-sm label-warning "> Take action
                                                                <i class="fa fa-share"></i>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col2">
                                                <div class="date"> Just now </div>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <div class="col1">
                                                    <div class="cont">
                                                        <div class="cont-col1">
                                                            <div class="label label-sm label-danger">
                                                                <i class="fa fa-bar-chart-o"></i>
                                                            </div>
                                                        </div>
                                                        <div class="cont-col2">
                                                            <div class="desc"> Finance Report for year 2013 has been released. </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col2">
                                                    <div class="date"> 20 mins </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <div class="col1">
                                                <div class="cont">
                                                    <div class="cont-col1">
                                                        <div class="label label-sm label-default">
                                                            <i class="fa fa-user"></i>
                                                        </div>
                                                    </div>
                                                    <div class="cont-col2">
                                                        <div class="desc"> You have 5 pending membership that requires a quick review. </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col2">
                                                <div class="date"> 24 mins </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="col1">
                                                <div class="cont">
                                                    <div class="cont-col1">
                                                        <div class="label label-sm label-info">
                                                            <i class="fa fa-shopping-cart"></i>
                                                        </div>
                                                    </div>
                                                    <div class="cont-col2">
                                                        <div class="desc"> New order received with
                                                            <span class="label label-sm label-success"> Reference Number: DR23923 </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col2">
                                                <div class="date"> 30 mins </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="col1">
                                                <div class="cont">
                                                    <div class="cont-col1">
                                                        <div class="label label-sm label-success">
                                                            <i class="fa fa-user"></i>
                                                        </div>
                                                    </div>
                                                    <div class="cont-col2">
                                                        <div class="desc"> You have 5 pending membership that requires a quick review. </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col2">
                                                <div class="date"> 24 mins </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="col1">
                                                <div class="cont">
                                                    <div class="cont-col1">
                                                        <div class="label label-sm label-warning">
                                                            <i class="fa fa-bell-o"></i>
                                                        </div>
                                                    </div>
                                                    <div class="cont-col2">
                                                        <div class="desc"> Web server hardware needs to be upgraded.
                                                            <span class="label label-sm label-default "> Overdue </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col2">
                                                <div class="date"> 2 hours </div>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <div class="col1">
                                                    <div class="cont">
                                                        <div class="cont-col1">
                                                            <div class="label label-sm label-info">
                                                                <i class="fa fa-briefcase"></i>
                                                            </div>
                                                        </div>
                                                        <div class="cont-col2">
                                                            <div class="desc"> IPO Report for year 2013 has been released. </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col2">
                                                    <div class="date"> 20 mins </div>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="tab-pane page-quick-sidebar-settings" id="quick_sidebar_tab_3">
                                <div class="page-quick-sidebar-settings-list">
                                    <h3 class="list-heading">General Settings</h3>
                                    <ul class="list-items borderless">
                                        <li> Enable Notifications
                                            <input type="checkbox" class="make-switch" checked data-size="small" data-on-color="success" data-on-text="ON" data-off-color="default" data-off-text="OFF"> </li>
                                        <li> Allow Tracking
                                            <input type="checkbox" class="make-switch" data-size="small" data-on-color="info" data-on-text="ON" data-off-color="default" data-off-text="OFF"> </li>
                                        <li> Log Errors
                                            <input type="checkbox" class="make-switch" checked data-size="small" data-on-color="danger" data-on-text="ON" data-off-color="default" data-off-text="OFF"> </li>
                                        <li> Auto Sumbit Issues
                                            <input type="checkbox" class="make-switch" data-size="small" data-on-color="warning" data-on-text="ON" data-off-color="default" data-off-text="OFF"> </li>
                                        <li> Enable SMS Alerts
                                            <input type="checkbox" class="make-switch" checked data-size="small" data-on-color="success" data-on-text="ON" data-off-color="default" data-off-text="OFF"> </li>
                                    </ul>
                                    <h3 class="list-heading">System Settings</h3>
                                    <ul class="list-items borderless">
                                        <li> Security Level
                                            <select class="form-control input-inline input-sm input-small">
                                                <option value="1">Normal</option>
                                                <option value="2" selected>Medium</option>
                                                <option value="e">High</option>
                                            </select>
                                        </li>
                                        <li> Failed Email Attempts
                                            <input class="form-control input-inline input-sm input-small" value="5" /> </li>
                                        <li> Secondary SMTP Port
                                            <input class="form-control input-inline input-sm input-small" value="3560" /> </li>
                                        <li> Notify On System Error
                                            <input type="checkbox" class="make-switch" checked data-size="small" data-on-color="danger" data-on-text="ON" data-off-color="default" data-off-text="OFF"> </li>
                                        <li> Notify On SMTP Error
                                            <input type="checkbox" class="make-switch" checked data-size="small" data-on-color="warning" data-on-text="ON" data-off-color="default" data-off-text="OFF"> </li>
                                    </ul>
                                    <div class="inner-content">
                                        <button class="btn btn-success">
                                            <i class="icon-settings"></i> Save Changes</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END QUICK SIDEBAR -->
            </div>
            <!-- END CONTAINER -->
            <!-- BEGIN FOOTER -->
            <div class="page-footer">
                <div class="page-footer-inner"> 2016 &copy; Metronic Theme By
                    <a target="_blank" href="http://keenthemes.com">Keenthemes</a> &nbsp;|&nbsp;
                    <a href="http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes" title="Purchase Metronic just for 27$ and get lifetime updates for free" target="_blank">Purchase Metronic!</a>
                </div>
                <div class="scroll-to-top">
                    <i class="icon-arrow-up"></i>
                </div>
            </div>
            <!-- END FOOTER -->
        </div>
        <!--[if lt IE 9]>
<script src="theme/assets/global/plugins/respond.min.js"></script>
<script src="theme/assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
        <!-- BEGIN CORE PLUGINS -->
        <script src="theme/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
        <!-- END CORE PLUGINS -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <script src="theme/assets/global/plugins/moment.min.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/morris/morris.min.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/morris/raphael-min.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/counterup/jquery.waypoints.min.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/counterup/jquery.counterup.min.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/amcharts/amcharts/amcharts.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/amcharts/amcharts/serial.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/amcharts/amcharts/pie.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/amcharts/amcharts/radar.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/amcharts/amcharts/themes/light.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/amcharts/amcharts/themes/patterns.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/amcharts/amcharts/themes/chalk.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/amcharts/ammap/ammap.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/amcharts/ammap/maps/js/worldLow.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/amcharts/amstockcharts/amstock.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/horizontal-timeline/horozontal-timeline.min.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/flot/jquery.flot.min.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/flot/jquery.flot.resize.min.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/flot/jquery.flot.categories.min.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/jquery-easypiechart/jquery.easypiechart.min.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/jquery.sparkline.min.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/jqvmap/jqvmap/jquery.vmap.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.world.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa.js" type="text/javascript"></script>
        <script src="theme/assets/global/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="theme/assets/global/scripts/app.min.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->
        <script src="theme/assets/pages/scripts/dashboard.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL SCRIPTS -->
        <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <script src="theme/assets/layouts/layout/scripts/layout.min.js" type="text/javascript"></script>
        <script src="theme/assets/layouts/layout/scripts/demo.min.js" type="text/javascript"></script>
        <script src="theme/assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
        <!-- END THEME LAYOUT SCRIPTS -->
    </body>