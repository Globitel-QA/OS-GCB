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
<html lang="ar" dir="rtl">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<%@ include file="IncludeFile-rtl.html"%>
<%@ include file="library/Common/Common.jsp"%>


<head>
<meta charset="utf-8" />
<title>Web Template</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<style>
html {
	overflow-x: hidden;
}
/* Add From ODai to websdk in 2272019 */
.page-header-fixed .page-container {
	margin-top: 0px;
}
/* End Added  */
</style>
</head>
<!-- END HEAD -->
<%
	response.setHeader("X-Frame-Options", "SAMEORIGIN");
%>
<body
	class="page-header-fixed page-sidebar-closed-hide-logo page-content-white">
	<!-- <input type="hidden" name="ModuleID" id="ModuleID"
		value=<%out.println(htmlspecialchars(request.getParameter("ModuleID")));%>>
	<input type="hidden" name="UserID" id="UserID"
		value=<%out.println(htmlspecialchars(request.getParameter("UserID")));%>> -->

	<input type="hidden" name="ModuleID" id="ModuleID">
	<input type="hidden" name="UserID" id="UserID">
	<div class="page-wrapper">
		<!-- BEGIN CONTAINER -->
		<div class="page-container">

			<!-- Added From ODai to websdk in 2272019 -->
			<div class="page-sidebar-wrapper">
				<div class="menu-toggler sidebar-toggler">
					<span></span>
				</div>

				<!-- BEGIN RESPONSIVE MENU TOGGLER -->
				<a href="javascript:;" class="menu-toggler responsive-toggler"
					data-toggle="collapse" data-target=".navbar-collapse"><span></span>
				</a>
				<!-- END RESPONSIVE MENU TOGGLER -->
				<!-- End Added  -->

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
						<ul class="page-sidebar-menu  page-header-fixed "
							data-keep-expanded="false" data-auto-scroll="true"
							data-slide-speed="200" style="padding-top: 20px">
							<!-- DOC: To remove the sidebar toggler from the sidebar you just need to completely remove the below "sidebar-toggler-wrapper" LI element -->
							<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
							<li class="sidebar-toggler-wrapper hide">
								<div class="sidebar-toggler">
									<span></span>
								</div>
							</li>
							<!-- END SIDEBAR TOGGLER BUTTON -->
							<!-- DOC: To remove the search box from the sidebar you just need to completely remove the below "sidebar-search-wrapper" LI element -->
							<li class="sidebar-search-wrapper" style="display: none;">
								<!-- BEGIN RESPONSIVE QUICK SEARCH FORM --> <!-- DOC: Apply "sidebar-search-bordered" class the below search form to have bordered search box -->
								<!-- DOC: Apply "sidebar-search-bordered sidebar-search-solid" class the below search form to have bordered & solid search box -->
								<form class="sidebar-search  "
									action="page_general_search_3.html" method="POST">
									<a href="javascript:;" class="remove"> <i
										class="icon-close"></i>
									</a>
									<div class="input-group">
										<input type="text" class="form-control"
											placeholder="Search..."> <span
											class="input-group-btn"> <a href="javascript:;"
											class="btn submit"> <i class="icon-magnifier"></i>
										</a>
										</span>
									</div>
								</form> <!-- END RESPONSIVE QUICK SEARCH FORM -->
							</li>

							<li id="Dashboard" style="display: none;"
								class="nav-item start active open"><a href="#"
								onclick="select(this);loadpage('Interfaces/Dashboard/Dashboard2.jsp','Dashboard');"
								class="nav-link nav-toggle"> <i class="icon-bar-chart"></i>
									<span class="title" id="Tree_Dashboard">Dashboard</span> <span
									id="Dashboard_span1"></span><span id="Dashboard_span2"></span>
							</a></li>

							<li id="SystemSettings" style="display: none;" class="nav-item  "><a
								href="javascript:;" class="nav-link nav-toggle"> <i
									class="fa fa-wrench fa-fw"></i> <span class="title"
									id="Tree_SystemManagement">System Management</span> <span
									id="SystemSettings_span1"></span><span
									id="SystemSettings_span2" class="arrow"></span>
							</a>
								<ul class="sub-menu">
									<li id="SystemSettings_View" style="display: none;"
										class="nav-item  "><a href="#" class="nav-link "
										onclick="select(this);loadpage('Interfaces/SystemSettings/SystemSetting.jsp','SystemSettings');">
											<span class="title" id="Tree_SystemSetting">System
												Settings</span>
									</a></li>
									
									<li id="Campaigns_View" style="display: none;"
										class="nav-item  "><a href="#" class="nav-link "
										onclick="select(this);loadpage('Interfaces/Campaigns/Campaigns.jsp','SystemSettings');">
											<span class="title" id="Tree_Campaigns">Campaigns</span>
									</a></li>
									
									<li id="Auto_Reports_View" style="display: none;" class="nav-item  "><a
										href="#" class="nav-link "
										onclick="select(this);loadpage('Interfaces/Agent/Agent.jsp','SystemSettings');">
											<span class="title" id="Tree_Agents">Agents</span>
									</a></li>

									<li id="SecurityWatchAgents_View" style="display: none;"
										class="nav-item "><a href="#"
										class="nav-link Tree_SystemSettingsAgents"
										onclick="select(this);loadpage('Interfaces/SecurityWatchAgents/SecurityWatchAgents.jsp','SystemSettings');">
											<span class="title" id="Tree_SystemSettingsAgents">Security
												Watch Agents</span>
									</a></li>

									<li id="NotificationsTemplates_View" style="display: none;"
										class="nav-item  "><a href="#"
										class="nav-link Tree_NotificationsTemplate"
										onclick="select(this);loadpage('Interfaces/NotificationsTemplate/NotificationsTemplate.jsp','SystemSettings');">
											<span id="Tree_NotificationsTemplate" class="title">Notifications
												Template</span>
									</a></li>

									<li id="Zones_View" style="display: none;"><a
										href="#" class="nav-link Tree_Zones"
										onclick="select(this);loadpage('Interfaces/Zones/Zones.jsp','SystemSettings');">
											<span id="Tree_Zones" class="title">Zones</span>
									</a></li>

									<li id="CellIDs_View" style="display: none;"
										class="nav-item  "><a href="#"
										class="nav-link Tree_CellsIDs"
										onclick="select(this);loadpage('Interfaces/CellsIDs/CellsIDs.jsp?SourceView=0','SystemSettings');">
											<span id="Tree_CellsIDs" class="title">Cells IDs</span>
									</a></li>


								</ul></li>
								
								<li id="CustomerSearchManagment" style="display: none;" class="nav-item  "><a
								href="javascript:;" class="nav-link nav-toggle"> <i class="fa fa-search" aria-hidden="true"></i> <span class="title"
									id="Tree_CustomerSearchManagment">Customer Search</span> <span
									id="CustomerSearchManagment_span1"></span><span
									id="CustomerSearchManagment_span2" class="arrow"></span>
								</a>
								<ul class="sub-menu">
								
								<li id="CustomerSearch_View" style="display: none;"
										class="nav-item  "><a href="#" class="nav-link "
										onclick="select(this);loadpage('Interfaces/CustomerSearch/CustomerSearch.jsp','CustomerSearchManagment');">
											<span class="title" id="Tree_CustomerSearch">Customer
												Search</span>
									</a></li>


									<li id="VoucherHistory_view" style="display: none;"
										class="nav-item  "><a href="#" class="nav-link "
										onclick="select(this);loadpage('Interfaces/VoucherHistory/VoucherHistory.jsp','CustomerSearchManagment');">
											<span class="title" id="CustomerSearch_VoucherHistory">Voucher
												History</span>
									</a></li>

									<li id="IMEIHistory_View" style="display: none;"
										class="nav-item  "><a href="#" class="nav-link "
										onclick="select(this);loadpage('Interfaces/IMEIInformationHistory/IMEIHistory.jsp','CustomerSearchManagment');">
											<span class="title" id="CustomerSearch_IMEIHistory">IMEI
												Information History</span>
									</a></li>

									<li id="SIMInformationHistory_View" style="display: none;"
										class="nav-item  "><a href="#" class="nav-link "
										onclick="select(this);loadpage('Interfaces/SIMInformationHistory/SIMHistory.jsp','CustomerSearchManagment');">
											<span class="title" id="CustomerSearch_SIMInformationHistory">SIM
												Information History</span>
									</a></li>

									<li id="MSISDNInformationHistory_View" style="display: none;"
										class="nav-item  "><a href="#" class="nav-link "
										onclick="select(this);loadpage('Interfaces/MSISDNnformationHistory/MSISDNHistory.jsp','CustomerSearchManagment');">
											<span class="title"
											id="CustomerSearch_MSISDNInformationHistory">MSISDN Information History</span>
									</a></li>
									
									<li id="SubscriberLineInformation_View" style="display: none;"
										class="nav-item  "><a href="#" class="nav-link "
										onclick="select(this);loadpage('Interfaces/SubscriberLineInfo/SubscriberLineInfo.jsp','CustomerSearchManagment');">
											<span class="title" id="Tree_SubscriberLineInfo">Subscriber Line Information</span>
									</a></li>
									
								</ul>
								</li>
								
								
								<li id="LocationManagement" style="display: none;" class="nav-item  "><a
								href="javascript:;" class="nav-link nav-toggle"> <i
									class="fa fa-map-marker fa-fw"></i> <span class="title"
									id="Tree_LocationManagement">Location Management</span> <span
									id="LocationManagement_span1"></span><span
									id="LocationManagement_span2" class="arrow"></span>
								</a>
								<ul class="sub-menu">
								
								
									<li id="CurrentLocation_View" style="display: none;"
										class="nav-item  "><a href="#" class="nav-link "
										onclick="select(this);loadpage('Interfaces/CurrentLocation/CurrentLocation.jsp','LocationManagement');">
											<span class="title" id="Tree_CurrentLocation">Current
												Location</span>
									</a></li>

									<li id="FutureTracking_view" style="display: none;"
										class="nav-item  "><a href="#" class="nav-link "
										onclick="select(this);loadpage('Interfaces/FutureTracking/FutureTracking.jsp','LocationManagement');">
											<span class="title" id="Tree_FutureTracking">Future
												Tracking</span>
									</a></li>

									<li id="ImmediateTracking_View" style="display: none;"
										class="nav-item  "><a href="#" class="nav-link "
										onclick="select(this);loadpage('Interfaces/ImmediateTracking/Add.jsp','LocationManagement');">
											<span class="title" id="Tree_ImmediateTracking">Immediate Tracking</span>
									</a></li>

									<li id="BulkUpload_View" style="display: none;"
										class="nav-item  "><a href="#" class="nav-link "
										onclick="select(this);loadpage('Interfaces/BulkUpload/BulkUpload.jsp','LocationManagement');">
											<span class="title" id= "Tree_BulkUpload">Bulk Upload</span>
									</a></li>

									<li id="HistoricalLocation_View" style="display: none;"
										class="nav-item  "><a href="#" class="nav-link "
										onclick="select(this);loadpage('Interfaces/HistoricalLocation/HistoricalLocation.jsp','LocationManagement');">
											<span class="title" id="Tree_HistoricalLocation">Historical
												Location</span>
									</a></li>
									
									
								</ul>
								</li>
								
								
									<li id="SecurityManagement" style="display: none;" class="nav-item  "><a
								href="javascript:;" class="nav-link nav-toggle"> <i
									class="fa fa-lock fa-fw"></i> <span class="title"
									id="Tree_SecurityManagement">Security Management</span> <span
									id="SecurityManagement_span1"></span><span
									id="SecurityManagement_span2" class="arrow"></span>
								</a>
								<ul class="sub-menu">
								
								
								<li id="EventMonitoring_View" style="display: none;"
										class="nav-item  "><a href="#"
										class="nav-link Tree_EventMonitoring"
										onclick="select(this);loadpage('Interfaces/EventMonitoring/EventMonitoring.jsp','SecurityManagement');">
											<span class="title" id="Tree_EventMonitoring">Event
												Monitoring</span>
									</a></li>
									
								<li id="ZonesProtection_View" style="display: none;"
										class="nav-item  "><a href="#"
										class="nav-link Tree_ZonesProtection"
										onclick="select(this);loadpage('Interfaces/ZonesProtection/ZonesProtection.jsp','SecurityManagement');">
											<span class="title" id="Tree_ZonesProtection">Zones
												Protection</span>
									</a></li>

									
									
									<li id="GroupsTracking_View" style="display: none;"
										class="nav-item  "><a href="#"
										class="nav-link Tree_GroupsTracking"
										onclick="select(this);loadpage('Interfaces/GroupsTracking/GroupsTracking.jsp','SecurityManagement');">
											<span class="title" id="Tree_GroupsTracking">Groups Tracking</span>
									</a></li>
									
									<li id="VIPsProtection_View" style="display: none;"
										class="nav-item  "><a href="#"
										class="nav-link Tree_VIPsProtection"
										onclick="select(this);loadpage('Interfaces/VIPsProtection/VIPsProtection.jsp','SecurityManagement');">
											<span class="title" id="Tree_VIPsProtection">VIPs Protection</span>
									</a></li>
									
								</ul>
								</li>
								
								<li id="SpatialDensity" style="display: none;" class="nav-item  "><a
								href="javascript:;" class="nav-link nav-toggle"> <i
									class="fa fa-globe fa-fw"></i> <span class="title"
									id="Tree_SpatialDensityManagement">Spatial Density</span> <span
									id="SpatialDensity_span1"></span><span
									id="SpatialDensity_span2" class="arrow"></span>
								</a>
								<ul class="sub-menu">
								
								
								<li id="CurrentlySpatialDensity_View" style="display: none;"
										class="nav-item  "><a href="#"
										class="nav-link Tree_SpatialDensity"
										onclick="select(this);loadpage('Interfaces/CurrentHeatMap/SubsHeatMap.jsp','SpatialDensity');">
											<span class="title" id="Tree_CurrentSpatialDensity"> Currently Heat Map</span>
									</a></li>
									
									<li id="HourlySpatialDensity_View" style="display: none;"
										class="nav-item  "><a href="#"
										class="nav-link Tree_SpatialDensity"
										onclick="select(this);loadpage('Interfaces/HourlyHeatMap/HourlyHeatMap.jsp','SpatialDensity');">
											<span class="title" id="Tree_HourlySpatialDensity">Hourly Heat Map</span>
									</a></li>
									
									<li id="WeeklySpatialDensity_View" style="display: none;"
										class="nav-item  "><a href="#"
										class="nav-link Tree_SpatialDensity"
										onclick="select(this);loadpage('Interfaces/WeeklySpatialDensity/SpatialDensity.jsp','SpatialDensity');">
											<span class="title" id="Tree_WeeklySpatialDensity">Weekly Table</span>
									</a></li>
								
								
								
								</ul>
								</li>
								
								
								<li id="PublicSafetyManagment" style="display: none;" class="nav-item  "><a
								href="javascript:;" class="nav-link nav-toggle"> <i
									class="fa fa-shield fa-fw"></i> <span class="title"
									id="Tree_PublicSafetyManagment">Public Safety</span> <span
									id="PublicSafetyManagment_span1"></span><span
									id="PublicSafetyManagment_span2" class="arrow"></span>
								</a>
								<ul class="sub-menu">
								
								<li id="PublicSafety_View" style="display: none;"
										class="nav-item  "><a href="#"
										class="nav-link Tree_PublicSafety"
										onclick="select(this);loadpage('Interfaces/PublicSafety/PublicSafety.jsp','PublicSafetyManagment');">
											<span class="title" id="Tree_PublicSafety">Public Safety</span>
									</a></li>
									
								</ul>
								</li>
								
								
							<li id="ReportsManagment" style="display: none;"
								class="nav-item  "><a href="javascript:;"
								class="nav-link nav-toggle"> <i
									class="fa fa-file-text fa-fw"></i> <span class="title"
									id="Tree_Reports">>Reports</span> <span
									id="ReportsManagment_span1"></span><span
									id="ReportsManagment_span2" class="arrow"></span>
							</a>
								<ul class="sub-menu">
									<li id="ActionLog_View" style="display: none;"
										class="nav-item  "><a href="#" class="nav-link "
										onclick="select(this);CheckAutoReport(1);"> <span
											class="title" id="Tree_ActionLogReport">Action Log
												Report</span>
									</a></li>

								</ul></li>
							<li id="AboutSystem_View" style="display: none;"
								class="nav-item  "><a href="#" class="nav-link "
								onclick="select(this);loadpage('Interfaces/AboutSystem/AboutSystem.jsp','AboutSystem_View');">
									<i class="	fa fa-info-circle fa-fw"></i> <span class="title"
									id="Tree_AboutSystem">About System</span> <span
									id="AboutSystem_span1"></span><span id="AboutSystem_span2"></span>
							</a></li>
						</ul>
						<!-- END SIDEBAR MENU -->
						<!-- END SIDEBAR MENU -->
					</div>
					<!-- END SIDEBAR -->
				</div>
				<div class="page-content-wrapper">
					<div class="row" style="display: none;">

						<div class="theme-panel hidden-xs hidden-sm">
							<div class="toggler"></div>
							<div class="toggler-close"></div>
							<div class="theme-options">
								<div class="theme-option theme-colors clearfix">
									<span> THEME COLOR </span>
									<ul>
										<li class="color-default current tooltips"
											data-style="default" data-container="body"
											data-original-title="Default"></li>
										<li class="color-darkblue tooltips" data-style="darkblue"
											data-container="body" data-original-title="Dark Blue"></li>
										<li class="color-blue tooltips" data-style="blue"
											data-container="body" data-original-title="Blue"></li>
										<li class="color-grey tooltips" data-style="grey"
											data-container="body" data-original-title="Grey"></li>
										<li class="color-light tooltips" data-style="light"
											data-container="body" data-original-title="Light"></li>
										<li class="color-light2 tooltips" data-style="light2"
											data-container="body" data-html="true"
											data-original-title="Light 2"></li>
									</ul>
								</div>
								<div class="theme-option">
									<span> Theme Style </span> <select
										class="layout-style-option form-control input-sm">
										<option value="square" selected="selected">Square
											corners</option>
										<option value="rounded">Rounded corners</option>
									</select>
								</div>
								<div class="theme-option">
									<span> Header </span> <select
										class="page-header-option form-control input-sm">
										<option value="fixed" selected="selected">Fixed</option>
										<option value="default">Default</option>
									</select>
								</div>
								<div class="theme-option">
									<span> Top Menu Dropdown</span> <select
										class="page-header-top-dropdown-style-option form-control input-sm">
										<option value="light" selected="selected">Light</option>
										<option value="dark">Dark</option>
									</select>
								</div>
								<div class="theme-option">
									<span> Sidebar Style </span> <select
										class="sidebar-style-option form-control input-sm">
										<option value="default" selected="selected">Default</option>
										<option value="light">Light</option>
									</select>
								</div>
								<div class="theme-option">
									<span> Footer </span> <select
										class="page-footer-option form-control input-sm">
										<option value="fixed">Fixed</option>
										<option value="default" selected="selected">Default</option>
									</select>
								</div>
							</div>
						</div>
					</div>

					<div class="page-content">
						<!-- <div class="col-md-12"> -->
						<div class="row">
							<div class="col-md-10">
								<div align="left">
									<span> <img alt="" id=Loadw src="images/7.gif"
										border="0" style="display: none;">
									</span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div id="divContent"></div>
								<iframe id="FrameContent" src="#"
									style="display: block; width: 100%; min-height: 673px; height: 750px; margin-top: -5px;"
									frameBorder="0"></iframe>
							</div>
						</div> 
					</div>

				</div>
			</div>
			<!-- END CONTENT -->
			<!-- END CONTAINER -->
		</div>

		<!--[if lt IE 9]>
<script src="theme/assets/global/plugins/respond.min.js"></script>
<script src="theme/assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->

		<!-- END THEME LAYOUT SCRIPTS -->
	<link href="library/custombox-4.0.3/dist/custombox.min.css"
			rel="stylesheet">


		<script type="text/javascript">
		
		
			var BackendServiceIPAddress = GetIPAdress() ;
		
			var UserID ; 
			var ModuleID ;
			var ListofPrivileges ;

			body = {"username":"admin" , "userid":$.trim(window.parent.window.parent
						.$("#UserID").val())};

			$.ajax({
				type : 'post',
				url : BackendServiceIPAddress + '/api/access/login',
				cache : false,
				async : false,
				contentType: 'application/json',
				processData: false,
				data : JSON.stringify(body),
				headers: {
					'Skip': true
				},
				success : function(data) {
					if (CheckResponse(data)) {
						sessionStorage.setItem("e99a18c428cb38d5f260853678922e03",data.result.jwt);
					} else {
						AlertErrorRespones(err);
					}
				} , error : function(err) {
					AlertErrorRespones(err);
				}
			});

			$(document).ready(function() {			 
	 
			UserID = $.trim(window.parent.window.parent.$("#UserID").val());
	        ModuleID = $.trim(window.parent.window.parent.$("#hModuleID").val());
	
	        $("#UserID").val(UserID);
	        $("#ModuleID").val(ModuleID);
	    
	        CreateUserSession();
	        
			}); 
			
			function CreateUserSession() {
				$.ajax({
					type : 'post',
					url : 'UsersControlPath_GCB',
					data : 'MethodName=CreateUserSession&ModuleID='
							+ $.trim($('#ModuleID').val()) + '&UserID='
							+ $.trim($('#UserID').val()),
					cache : false,
					async : false,
					success : function(data) {
						CheckSession();
						GetPrivileges();
					}
				});
			}
			
			function loadpage2(page, Type) {

				$(document).ajaxStart(function() {
					window.parent.$("#Load").show();
				});

				$(document).ajaxStop(function() {
					window.parent.$("#Load").hide();
				})

				if (lastType != Type) {
					$('#' + lastType + ' ul').css("display", "none");
					lastType = Type
				}

				$("#divContent").hide();
				$("#FrameContent").show();
				$('#FrameContent').attr('src', page);

				$('li').removeClass("start active open");
				$('#' + Type).addClass("start active open");
				$('span').removeClass("open");
				$('#' + Type + '_span2').addClass("open");
				$('#' + Type + '_span1').addClass("selected");
			}

			function CheckSession() {

				$.ajax({
					type : 'post',
					url : 'UsersControlPath_GCB',
					data : 'MethodName=MethodName',
					cache : false,
					async : false,
					success : function(data) {
						if (data == 3) {// session is time out, or try to access from different IP
							window.parent.LogOFF();
						} else {
							window.parent.CheckSession();
							Common(); // To prevent tags < > , this to prevent cross site scripting
						}
					}
				});

			}
			function select(element) { // changing the background color of sub menues 

				$(".menu_item_bcolorX").css("background-color", "");
				$(".menu_item_bcolorX").find("a").find("span").css("color", "");
				$('.menu_item_bcolorX').removeClass('menu_item_bcolorX');

				$(element).parent().addClass('menu_item_bcolorX');

				$(".menu_item_bcolorX").css("background-color",
						"rgb(247, 187, 126);");
				$(element).find("span").css("color", "#FFFFFF");
			}

			var lastType;

			function loadpage(page, Type) {

				if (Type == 'Dashboard') {
					$(document).off('ajaxStart');
					$(document).off('ajaxStop');
				} else {
					/* Added from ODat to websdk in 2272019   */
					$(document).ajaxStart(function() {
						window.parent.$("#Load").show();
					});

					$(document).ajaxStop(function() {

						setTimeout(function() {
							window.parent.$("#Load").hide();
						}, 1000);

					});
					/* End Added   */
				}

				Interval = 0;

				if (lastType != Type) {
					$('#' + lastType + ' ul').css("display", "none");
					lastType = Type
				}

				$("#FrameContent").hide();
				$("#divContent").show();
				console.log(page);
				$("#divContent").empty();
				$("#divContent").load(page);

				$('li').removeClass("start active open");
				$('#' + Type).addClass("start active open");
				$('span').removeClass("open");
				$('#' + Type + '_span2').addClass("open");
				$('#' + Type + '_span1').addClass("selected");

			}
			function GetPrivileges() {

				//PageLang
				$.ajax({
					type : 'post',
					url : 'UsersControlPath_GCB',
					data : 'MethodName=SetLang&Language='
							+ encodeURIComponent("ar_AR"),
					cache : false,
					async : false,
					success : function(data) {
					}
				});

				//Below to get list of previlges :
				$.ajax({
					type : 'post',
					url : 'Privileges_GroupControlPath_GCB',
					data : 'methodtype=GetData',
					cache : false,
					async : false,
					success : function(data) {
						if (data != 0) {
							ListofPrivileges = data;
						}

					}
				});
				
				var order = "";//used for calling welcome page 
				if (ListofPrivileges.toUpperCase().indexOf(
						(",Dashboard").toUpperCase()) !== -1) {

					document.getElementById('Dashboard').style.display = "block";
					order = order + "1,";

				}
				if (ListofPrivileges.toUpperCase().indexOf(
						(",SystemSettings_").toUpperCase()) !== -1) {

					document.getElementById('SystemSettings').style.display = "block";
					document.getElementById('SystemSettings_View').style.display = "block";
					order = order + "2,";
				}
				if (ListofPrivileges.toUpperCase().indexOf(
						(",Auto_Reports_").toUpperCase()) !== -1) {

					document.getElementById('SystemSettings').style.display = "block";
					document.getElementById('Auto_Reports_View').style.display = "block";
					order = order + "3,";
				}
				if (ListofPrivileges.toUpperCase().indexOf(
						(",CustomerSearch_").toUpperCase()) !== -1) {

					document.getElementById('CustomerSearchManagment').style.display = "block";
					document.getElementById('CustomerSearch_View').style.display = "block";
					order = order + "4,";
				}
				if (ListofPrivileges.toUpperCase().indexOf(
						(",CurrentLocation_").toUpperCase()) !== -1) {
					document.getElementById('LocationManagement').style.display = "block";
					document.getElementById('CurrentLocation_View').style.display = "block";
					order = order + "5,";
				}
				if (ListofPrivileges.toUpperCase().indexOf(
						(",FutureTracking_").toUpperCase()) !== -1) {
					document.getElementById('LocationManagement').style.display = "block";
					document.getElementById('FutureTracking_view').style.display = "block";
					order = order + "6,";
				}
				if (ListofPrivileges.toUpperCase().indexOf(
						(",ImmediateTracking_").toUpperCase()) !== -1) {
					document.getElementById('LocationManagement').style.display = "block";
					document.getElementById('ImmediateTracking_View').style.display = "block";
					order = order + "7,";
				}
				if (ListofPrivileges.toUpperCase().indexOf(
						(",BulkUpload_").toUpperCase()) !== -1) {
					document.getElementById('LocationManagement').style.display = "block";
					document.getElementById('BulkUpload_View').style.display = "block";
					order = order + "8,";
				}
				if (ListofPrivileges.toUpperCase().indexOf(
						(",HistoricalLocation_").toUpperCase()) !== -1) {
					document.getElementById('LocationManagement').style.display = "block";
					document.getElementById('HistoricalLocation_View').style.display = "block";
					order = order + "9,";
				}
				if (ListofPrivileges.toUpperCase().indexOf(
						(",VoucherHistory_").toUpperCase()) !== -1) {
					document.getElementById('SystemSettings').style.display = "block";
					document.getElementById('VoucherHistory_view').style.display = "block";
					order = order + "10,";
				}
				if (ListofPrivileges.toUpperCase().indexOf(
						(",IMEIHistory_").toUpperCase()) !== -1) {
					document.getElementById('SystemSettings').style.display = "block";
					document.getElementById('IMEIHistory_View').style.display = "block";
					order = order + "11,";
				}
				if (ListofPrivileges.toUpperCase().indexOf(
						(",SIMInformationHistory_").toUpperCase()) !== -1) {
					document.getElementById('SystemSettings').style.display = "block";
					document.getElementById('SIMInformationHistory_View').style.display = "block";
					order = order + "12,";
				}
				if (ListofPrivileges.toUpperCase().indexOf(
						(",MSISDNInformationHistory_").toUpperCase()) !== -1) {
					document.getElementById('SystemSettings').style.display = "block";
					document.getElementById('MSISDNInformationHistory_View').style.display = "block";
					order = order + "13,";
				}
				if (ListofPrivileges.toUpperCase().indexOf(
						(",SecurityWatchAgents_").toUpperCase()) !== -1) {
					document.getElementById('SystemSettings').style.display = "block";
					document.getElementById('SecurityWatchAgents_View').style.display = "block";
					order = order + "14,";
				}
				if (ListofPrivileges.toUpperCase().indexOf(
						(",NotificationsTemplates_").toUpperCase()) !== -1) {
					document.getElementById('SystemSettings').style.display = "block";
					document.getElementById('NotificationsTemplates_View').style.display = "block";
					order = order + "15,";
				}
				if (ListofPrivileges.toUpperCase().indexOf(
						(",ZonesProtection_").toUpperCase()) !== -1) {
					document.getElementById('SecurityManagement').style.display = "block";
					document.getElementById('ZonesProtection_View').style.display = "block";
					order = order + "16,";
				}
				if (ListofPrivileges.toUpperCase().indexOf(
						(",EventMonitoring_").toUpperCase()) !== -1) {
					document.getElementById('SecurityManagement').style.display = "block";
					document.getElementById('EventMonitoring_View').style.display = "block";
					order = order + "17,";
				}
				if (ListofPrivileges.toUpperCase().indexOf(
						(",Zones_").toUpperCase()) !== -1) {
					document.getElementById('SystemSettings').style.display = "block";
					document.getElementById('Zones_View').style.display = "block";
					order = order + "18,";
				}
				if (ListofPrivileges.toUpperCase().indexOf(
						(",CellIDs_").toUpperCase()) !== -1) {
					document.getElementById('SystemSettings').style.display = "block";
					document.getElementById('CellIDs_View').style.display = "block";
					order = order + "19,";
				}
				if (ListofPrivileges.toUpperCase().indexOf(
						(",Campaigns_").toUpperCase()) !== -1) {
					document.getElementById('SystemSettings').style.display = "block";
					document.getElementById('Campaigns_View').style.display = "block";
					order = order + "20,";
				}
				if (ListofPrivileges.toUpperCase().indexOf(
						(",Report_ActionLog").toUpperCase()) !== -1) {

					document.getElementById('ReportsManagment').style.display = "block";
					document.getElementById('ActionLog_View').style.display = "block";
					order = order + "21,";
				}
				if (ListofPrivileges.toUpperCase().indexOf(
						(",AboutSystem_").toUpperCase()) !== -1) {

					document.getElementById('AboutSystem_View').style.display = "block";
					document.getElementById('AboutSystem_View').style.display = "block";
					order = order + "22,";
				}
				if (ListofPrivileges.toUpperCase().indexOf(
						(",GroupsTracking_").toUpperCase()) !== -1) {
					document.getElementById('SecurityManagement').style.display = "block";
					document.getElementById('GroupsTracking_View').style.display = "block";
					order = order + "23,";
				}
				if (ListofPrivileges.toUpperCase().indexOf(
						(",VIPsProtection_").toUpperCase()) !== -1) {
					document.getElementById('SecurityManagement').style.display = "block";
					document.getElementById('VIPsProtection_View').style.display = "block";
					order = order + "24,";
				}
				if (ListofPrivileges.toUpperCase().indexOf(
						(",PublicSafety_").toUpperCase()) !== -1) {
					document.getElementById('PublicSafetyManagment').style.display = "block";
					document.getElementById('PublicSafety_View').style.display = "block";
					order = order + "25,";
				}
				if (ListofPrivileges.toUpperCase().indexOf(
						(",SpatialDensity_").toUpperCase()) !== -1) {
					document.getElementById('SpatialDensity').style.display = "block";
					document.getElementById('CurrentlySpatialDensity_View').style.display = "block";
					order = order + "26,";
				}
				if (ListofPrivileges.toUpperCase().indexOf(
						(",SpatialDensity_").toUpperCase()) !== -1) {
					document.getElementById('SpatialDensity').style.display = "block";
					document.getElementById('HourlySpatialDensity_View').style.display = "block";
					order = order + "27,";
				}
				if (ListofPrivileges.toUpperCase().indexOf(
						(",SpatialDensity_").toUpperCase()) !== -1) {
					document.getElementById('SpatialDensity').style.display = "block";
					document.getElementById('WeeklySpatialDensity_View').style.display = "block";
					order = order + "28,";
				}				
				if (ListofPrivileges.toUpperCase().indexOf(
						(",SubscriberLineInformation_").toUpperCase()) !== -1) {
					document.getElementById('SystemSettings').style.display = "block";
					document.getElementById('SubscriberLineInformation_View').style.display = "block";
					order = order + "29,";
				}

				CallWelcomePage(order);
			}

			function CallWelcomePage(order) {

				var arr = order.split(",");
				var welcome = arr[0];

				if (welcome == 1) {
					loadpage('Interfaces/Dashboard/Dashboard2.jsp', 'Dashboard');
					//alert(Type);
					Type = "Dashboard";
					$('li').removeClass("start active open");
					//$('ul').css("display", "none");
					$('#' + Type).addClass("start active open");
					$('span').removeClass("open");
					$('#' + Type + '_span2').addClass("open");
					$('#' + Type + '_span1').addClass("selected");
				}

				if (welcome == 2) {
					loadpage('Interfaces/SystemSettings/SystemSetting.jsp',
							'SystemSettings');
					Type = "SystemSettings";
					$('li').removeClass("start active open");
					$('#' + Type).addClass("start active open");
					$('span').removeClass("open");
					$('#' + Type + '_span2').addClass("open");
					$('#' + Type + '_span1').addClass("selected");
				}
				if (welcome == 3) {
					loadpage('Interfaces/Agent/Agent.jsp', 'SystemSettings');
					Type = "SystemSettings";
					$('li').removeClass("start active open");
					$('#' + Type).addClass("start active open");
					$('span').removeClass("open");
					$('#' + Type + '_span2').addClass("open");
					$('#' + Type + '_span1').addClass("selected");
				}
				if (welcome == 4) {
					loadpage('Interfaces/CustomerSearch/CustomerSearch.jsp',
							'SystemSettings');
					Type = "SystemSettings";
					$('li').removeClass("start active open");
					$('#' + Type).addClass("start active open");
					$('span').removeClass("open");
					$('#' + Type + '_span2').addClass("open");
					$('#' + Type + '_span1').addClass("selected");
				}
				if (welcome == 5) {
					loadpage('Interfaces/CurrentLocation/CurrentLocation.jsp',
							'LocationManagement');
					Type = "LocationManagement";
					$('li').removeClass("start active open");
					$('#' + Type).addClass("start active open");
					$('span').removeClass("open");
					$('#' + Type + '_span2').addClass("open");
					$('#' + Type + '_span1').addClass("selected");
				}
				if (welcome == 6) {
					loadpage('Interfaces/FutureTracking/FutureTracking.jsp',
							'LocationManagement');
					Type = "LocationManagement";
					$('li').removeClass("start active open");
					$('#' + Type).addClass("start active open");
					$('span').removeClass("open");
					$('#' + Type + '_span2').addClass("open");
					$('#' + Type + '_span1').addClass("selected");
				}
				if (welcome == 7) {
					loadpage('Interfaces/ImmediateTracking/Add.jsp',
							'LocationManagement');
					Type = "LocationManagement";
					$('li').removeClass("start active open");
					$('#' + Type).addClass("start active open");
					$('span').removeClass("open");
					$('#' + Type + '_span2').addClass("open");
					$('#' + Type + '_span1').addClass("selected");
				}
				if (welcome == 8) {
					loadpage('Interfaces/BulkUpload/BulkUpload.jsp',
							'LocationManagement');
					Type = "LocationManagement";
					$('li').removeClass("start active open");
					$('#' + Type).addClass("start active open");
					$('span').removeClass("open");
					$('#' + Type + '_span2').addClass("open");
					$('#' + Type + '_span1').addClass("selected");
				}
				if (welcome == 9) {
					loadpage(
							'Interfaces/HistoricalLocation/HistoricalLocation.jsp',
							'LocationManagement');
					Type = "LocationManagement";
					$('li').removeClass("start active open");
					$('#' + Type).addClass("start active open");
					$('span').removeClass("open");
					$('#' + Type + '_span2').addClass("open");
					$('#' + Type + '_span1').addClass("selected");
				}
				if (welcome == 10) {
					loadpage('Interfaces/VoucherHistory/VoucherHistory.jsp',
							'SystemSettings');
					Type = "SystemSettings";
					$('li').removeClass("start active open");
					$('#' + Type).addClass("start active open");
					$('span').removeClass("open");
					$('#' + Type + '_span2').addClass("open");
					$('#' + Type + '_span1').addClass("selected");
				}
				if (welcome == 11) {
					loadpage(
							'Interfaces/IMEIInformationHistory/IMEIHistory.jsp',
							'SystemSettings');
					Type = "SystemSettings";
					$('li').removeClass("start active open");
					$('#' + Type).addClass("start active open");
					$('span').removeClass("open");
					$('#' + Type + '_span2').addClass("open");
					$('#' + Type + '_span1').addClass("selected");
				}
				if (welcome == 12) {
					loadpage('Interfaces/SIMInformationHistory/SIMHistory.jsp',
							'SystemSettings');
					Type = "SystemSettings";
					$('li').removeClass("start active open");
					$('#' + Type).addClass("start active open");
					$('span').removeClass("open");
					$('#' + Type + '_span2').addClass("open");
					$('#' + Type + '_span1').addClass("selected");
				}
				if (welcome == 13) {
					loadpage(
							'Interfaces/MSISDNnformationHistory/MSISDNHistory.jsp',
							'SystemSettings');
					Type = "SystemSettings";
					$('li').removeClass("start active open");
					$('#' + Type).addClass("start active open");
					$('span').removeClass("open");
					$('#' + Type + '_span2').addClass("open");
					$('#' + Type + '_span1').addClass("selected");
				}
				if (welcome == 14) {
					loadpage(
							'Interfaces/SecurityWatchAgents/SecurityWatchAgents.jsp',
							'SystemSettings');
					Type = "SystemSettings";
					$('li').removeClass("start active open");
					$('#' + Type).addClass("start active open");
					$('span').removeClass("open");
					$('#' + Type + '_span2').addClass("open");
					$('#' + Type + '_span1').addClass("selected");
				}
				if (welcome == 15) {
					loadpage(
							'Interfaces/NotificationsTemplate/NotificationsTemplate.jsp',
							'SystemSettings');
					Type = "SystemSettings";
					$('li').removeClass("start active open");
					$('#' + Type).addClass("start active open");
					$('span').removeClass("open");
					$('#' + Type + '_span2').addClass("open");
					$('#' + Type + '_span1').addClass("selected");
				}
				if (welcome == 16) {
					loadpage('Interfaces/ZonesProtection/ZonesProtection.jsp',
							'SecurityManagement');
					Type = "SecurityManagement";
					$('li').removeClass("start active open");
					$('#' + Type).addClass("start active open");
					$('span').removeClass("open");
					$('#' + Type + '_span2').addClass("open");
					$('#' + Type + '_span1').addClass("selected");
				}
				if (welcome == 17) {
					loadpage('Interfaces/EventMonitoring/EventMonitoring.jsp',
							'SecurityManagement');
					Type = "SecurityManagement";
					$('li').removeClass("start active open");
					$('#' + Type).addClass("start active open");
					$('span').removeClass("open");
					$('#' + Type + '_span2').addClass("open");
					$('#' + Type + '_span1').addClass("selected");
				}
				if (welcome == 18) {
					loadpage('Interfaces/Zones/Zones.jsp', 'SystemSettings');
					Type = "SystemSettings";
					$('li').removeClass("start active open");
					$('#' + Type).addClass("start active open");
					$('span').removeClass("open");
					$('#' + Type + '_span2').addClass("open");
					$('#' + Type + '_span1').addClass("selected");
				}
				if (welcome == 19) {
					loadpage('Interfaces/CellsIDs/CellsIDs.jsp?SourceView=0',
							'SystemSettings');
					Type = "SystemSettings";
					$('li').removeClass("start active open");
					$('#' + Type).addClass("start active open");
					$('span').removeClass("open");
					$('#' + Type + '_span2').addClass("open");
					$('#' + Type + '_span1').addClass("selected");
				}
				if (welcome == 20) {
					Type = "ReportsManagment";
					$('li').removeClass("start active open");
					$('#' + Type).addClass("start active open");
					$('span').removeClass("open");
					$('#' + Type + '_span2').addClass("open");
					$('#' + Type + '_span1').addClass("selected");
					CheckAutoReport(1);
				}
				if (welcome == 21) {
					loadpage('Interfaces/AboutSystem/AboutSystem.jsp',
							'AboutSystem_View');
					Type = "AboutSystem_View";
					$('li').removeClass("start active open");
					$('#' + Type).addClass("start active open");
					$('span').removeClass("open");
					$('#' + Type + '_span2').addClass("open");
					$('#' + Type + '_span1').addClass("selected");
				}
				if (welcome == 22) {
					loadpage('Interfaces/GroupsTracking/GroupsTracking.jsp',
							'SecurityManagement');
					Type = "SecurityManagement";
					$('li').removeClass("start active open");
					$('#' + Type).addClass("start active open");
					$('span').removeClass("open");
					$('#' + Type + '_span2').addClass("open");
					$('#' + Type + '_span1').addClass("selected");
				}
				if (welcome == 23) {
					loadpage('Interfaces/VIPsProtection/VIPsProtection.jsp',
							'SecurityManagement');
					Type = "SecurityManagement";
					$('li').removeClass("start active open");
					$('#' + Type).addClass("start active open");
					$('span').removeClass("open");
					$('#' + Type + '_span2').addClass("open");
					$('#' + Type + '_span1').addClass("selected");
				}
				if (welcome == 24) {
					loadpage('Interfaces/PublicSafety/PublicSafety.jsp',
							'PublicSafetyManagment');
					Type = "PublicSafetyManagment";
					$('li').removeClass("start active open");
					$('#' + Type).addClass("start active open");
					$('span').removeClass("open");
					$('#' + Type + '_span2').addClass("open");
					$('#' + Type + '_span1').addClass("selected");
				}
				
				if (welcome == 25) {
					
					loadpage('Interfaces/CurrentHeatMap/SubsHeatMap.jsp',
					'SystemSettings');
					Type = "SystemSettings";
					$('li').removeClass("start active open");
					$('#' + Type).addClass("start active open");
					$('span').removeClass("open");
					$('#' + Type + '_span2').addClass("open");
					$('#' + Type + '_span1').addClass("selected");
				}
				if (welcome == 26) {
					
					loadpage('Interfaces/HourlyHeatMap/HourlyHeatMap.jsp',
					'SystemSettings');
					Type = "SystemSettings";
					$('li').removeClass("start active open");
					$('#' + Type).addClass("start active open");
					$('span').removeClass("open");
					$('#' + Type + '_span2').addClass("open");
					$('#' + Type + '_span1').addClass("selected");
				}
				if (welcome == 27) {
					
					loadpage('Interfaces/WeeklySpatialDensity/SpatialDensity.jsp',
					'SystemSettings');
					Type = "SystemSettings";
					$('li').removeClass("start active open");
					$('#' + Type).addClass("start active open");
					$('span').removeClass("open");
					$('#' + Type + '_span2').addClass("open");
					$('#' + Type + '_span1').addClass("selected");
				}
				
				
				if (welcome == 28) {
					
					loadpage('Interfaces/SubscriberLineInfo/SubscriberLineInfo.jsp',
					'SystemSettings');
					Type = "SystemSettings";
					$('li').removeClass("start active open");
					$('#' + Type).addClass("start active open");
					$('span').removeClass("open");
					$('#' + Type + '_span2').addClass("open");
					$('#' + Type + '_span1').addClass("selected");
				}

			}

			function GetUsername() {
				var LastLoginDate = "";
				var dateStr = "";
				$.ajax({
					type : 'post',
					url : 'UsersControlPath_GCB',
					data : 'MethodName=getLastLoginDate',
					cache : false,
					async : false,
					success : function(data) {
						dateStr = data;
					}
				});

			}

			/* Added from ODat to websdk in 2272019   */
			$(document).ajaxStart(function() {
				window.parent.$("#Load").show(); //$("#Load").show();
			});

			$(document).ajaxStop(function() {

				setTimeout(function() {
					window.parent.$("#Load").hide();
				}, 1000);

			});
			/* End Added   */

			function CheckAutoReport(report_id) {
				//alert("report_id : " + report_id)
				var EnableAutoReports;

				$.ajax({
					type : 'post',
					url : 'UsersControlPath_GCB',
					data : 'MethodName=EnableAutoReports',
					cache : false,
					async : false,
					success : function(data) {
						EnableAutoReports = data;
					}
				});

				if (EnableAutoReports == 1) {
					if (report_id == 1) {
						loadpage(
								'Interfaces/Reports/ActionLogReportTab.jsp?Report_ID='
										+ report_id, 'ReportsManagment');
					}
				} else {
					if (report_id == 1) {
						loadpage('Interfaces/Reports/ActionLogReport.jsp',
								'ReportsManagment');
					}
				}

			}
			
			function CellIDsUpdate(ID) {
				
				// if TypeView:0 we update cell from map view , else we update cell from update page side
				
			    $("#UpdateCellID").empty().load('Interfaces/CellsIDs/Update.jsp?SelectedID=' +ID + '&TypeView=0' );    

			    var modal = new Custombox.modal({
			        content : {
			            effect : 'fadein',
			            target : '#UpdateCellID',
			            esckey : false,
			            close : false
			        },
			        loader : {
			            active : false,
			            color : '#fff',
			            speed : 1000,
			        },
			        overlay : {
			            close : false
			        },
			        close : false
			    });

			    modal.open();
			}
		</script>
	<script src="library/custombox-4.0.3/dist/custombox.min.js"></script>
		<script src="library/custombox-4.0.3/dist/custombox.legacy.min.js"></script>
</body>