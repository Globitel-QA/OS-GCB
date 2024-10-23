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
<%@ include file="IncludeFile.html"%>
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

								<li id="Auto_Reports_View" style="display: none;"
									class="nav-item  "><a href="#" class="nav-link "
														  onclick="select(this);loadpage('Interfaces/Agent/Agent.jsp','SystemSettings');">
									<span class="title" id="Tree_Agents">Agents</span>
								</a></li>

								<li id="Campaigns_View" style="display: none;"
									class="nav-item  "><a href="#" class="nav-link "
														  onclick="select(this);loadpage('Interfaces/Campaigns/Campaigns.jsp','SystemSettings');">
									<span class="title" id="Tree_Campaigns">Campaigns</span>
								</a></li>



							</ul></li>


						<li id="ZonesManagement" style="display: none;" class="nav-item  "><a
								href="javascript:;" class="nav-link nav-toggle"> <i
								class="fa fa-map-marker"></i> <span class="title">Locations Management
										 </span> <span id="ZonesManagement_span1"></span><span
								id="ZonesManagement_span2" class="arrow"></span>
						</a>
							<ul class="sub-menu">

								<li id="Zones_View" style="display: none;" class="nav-item  "><a
										href="#" class="nav-link "
										onclick="select(this);loadpage('Interfaces/Zones/Zones.jsp','ZonesManagement');">
									<span class="title">Zones</span>
								</a></li>


							</ul></li>


						<li id="ReportsManagment" style="display: none;"
							class="nav-item  "><a href="javascript:;"
												  class="nav-link nav-toggle"> <i
								class="fa fa-file-text fa-fw"></i> <span class="title"
																		 id="Tree_Reports">Reports</span> <span
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
					<!-- </div> -->
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
		var UserID;
		var ModuleID;
		var ListofPrivileges;

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


		$(document).ready(
				function() {

					UserID = $.trim(window.parent.window.parent
							.$("#UserID").val());
					ModuleID = $.trim(window.parent.window.parent.$(
							"#hModuleID").val());

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

			CheckSession();

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

			CheckSession();

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
						+ encodeURIComponent("en"),
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
						ListofPrivileges = $.trim(data);
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
					(",Zones_").toUpperCase()) !== -1) {

				document.getElementById('ZonesManagement').style.display = "block";
				document.getElementById('Zones_View').style.display = "block";
				order = order + "15,";
			}
			if (ListofPrivileges.toUpperCase().indexOf(
					(",Report_ActionLog").toUpperCase()) !== -1) {

				document.getElementById('ReportsManagment').style.display = "block";
				document.getElementById('ActionLog_View').style.display = "block";
				order = order + "20,";
			}
			if (ListofPrivileges.toUpperCase().indexOf(
					(",AboutSystem_").toUpperCase()) !== -1) {

				document.getElementById('AboutSystem_View').style.display = "block";
				document.getElementById('AboutSystem_View').style.display = "block";
				order = order + "21,";
			}

			if (ListofPrivileges.toUpperCase().indexOf(
					(",Campaigns_").toUpperCase()) !== -1) {

				document.getElementById('SystemSettings').style.display = "block";
				document.getElementById('Campaigns_View').style.display = "block";
				order = order + "22,";
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
			if (welcome == 15) {
				loadpage('Interfaces/Zones/Zones.jsp','ZonesManagement');
				Type = "ZonesManagement";
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
				loadpage('Interfaces/Campaigns/Campaigns.jsp',
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

			$("#UpdateCellID").empty().load(
					'Interfaces/CellsIDs/Update.jsp?SelectedID=' + ID
					+ '&TypeView=0');

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