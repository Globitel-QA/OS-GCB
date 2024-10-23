<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="../../library/Common/Common.jsp"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
</style>
<body>
	<input type="hidden" name="Report_ID" id="Report_ID"
		value=<%out.println(htmlspecialchars(request.getParameter("Report_ID")));%>>
	<div class="row">
		<div class="col-md-12 ">
			<div class="portlet light bordered">
				<div class="portlet-title">
					<div class="caption">
						<i class="icon-social-dribbble font-green"></i> <span
							class="caption-subject font-green bold "
							id="AutoReports_AddTitle">Add Auto Action Log Report</span>
					</div>
				</div>
				<div class="portlet-body form">
					<div class="row">
						<div class="col-lg-12">
							<form role="form">
								<label id="lblErrors" style="color: red"></label>
								<div class="form-group">
									<label id="AutoReports_AutoReportName">Auto Report Name</label>
									<input class="form-control input-sm" id="txtName"
										maxlength="50">

								</div>

								<div class="form-group">
									<label id="AutoReports_ScheduleType">Schedule Type</label> <select
										style="width: 100%" class="form-control input-sm"
										id="ddlSchedule">
									</select>
								</div>
								
								<div class="form-group" id="AccountHolderDiv"
									style="display: block">
									<label id="AccountsHolders_AccountHolder">Account
										Holder</label> <select style="width: 100%"
										class="form-control input-sm" id="listAccountHolder">
									</select>
								</div>

								<div class="form-group">
									<table width="100%">
										<tr valign="center">
											<td align="center"><label id="Agent_Title" class="Translate">Agents</label></td>
											<td align="center" width="20%"><label></label></td>
											<td align="center"><label id="Agent_SelectedAgents" class="Translate">Selected
													Agents</label></td>
										</tr>
									</table>
								</div>
								<div class="form-group">
									<select class="form-control input-sm" id="Agents"
										data-search="Search Agents"></select> <select
										id="SelectedAgents" class="form-control input-sm"
										data-search="Search Selected Agents"></select>
								</div>

								<!-- <div class="form-group">
									<label>Status</label>
									<div class="mt-checkbox-list">
										<label class="mt-checkbox"> Enabled <input
											type="checkbox" id="chkEnabled"> <span></span>
										</label>
									</div>
								</div>	 -->


								<br> <br>
								<div class="span4">
									<div class='pull-right'>
										<button id="btnSave" class="btn btn-success "
											onclick="IsFormComplete();return false;">Save</button>
										<button id="btnCancel" class="btn btn-danger "
											onclick="Cancel();return false;">Cancel</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(document).ajaxStart(function() {
			$("#Load").show();
		});

		$(document).ajaxStop(function() {
			$("#Load").hide();
		});

		$(document).ready(function() {

			$("#txtName").focus();

		});

		Load();
		
		var AccountHolderType = 0;
		function Load() {
			CheckSession();
			FillSingleSelect('Auto_DatesControlPath_GCB', 'MethodName=GetAll',
					false, 'ddlSchedule', 'AutoReports_SelectScheduleType',
					'-1');
			
			$.ajax({
				type : 'post',
				url : 'UsersControlPath_GCB',
				data : 'MethodName=GetAccountHolderType',
				cache : false,
				async : false,
				success : function(data) {
					if (data.trim() == 0) {
						AccountHolderType = data.trim();
						FillSingleSelectTwoValue(
								'AccountHolderControlPath_GCB',
								'MethodName=GetAll', false,
								'listAccountHolder',
								'AccountsHolders_SelectAccountHolder', '-1',
								'ActtionLogReport_AllAccountsHolders', '-2');
						$('#AccountHolderDiv').show();
					} else {

						AccountHolderType = data.trim();
						$('#AccountHolderDiv').hide();
					}
				}
			});
			
			FillMultiSelect_2( BackendServiceIPAddress+'/api/agent', "GET", true,
					'Agents', 'SelectedAgents' , 'SearchAgents');
		}

		function IsFormComplete() {

			if (isEmptyFiled("txtName", "AutoReport_AlertEnterAutoReport")) {

			} else if (isCheckExistance('txtName',
					'Auto_ReportsControlPath_GCB', false,
					"AutoReport_AlertAutoReportExist",
					'MethodName=CheckName&Name=' + encodeURIComponent($("#txtName").val().trim())
							+ '&Report_ID=' + $("#Report_ID").val())) {

			} else if (isSelectFiled("ddlSchedule",
					"AutoReport_AlertScheduleType", -1)) {

			} else if (isSelectFiled("listAccountHolder",
					"AccountsHolders_AlertSelectAccountHolder", -1)) {

			} else if (isMultiSelectFiled("SelectedAgents",
					"listbox_Agents_wrapper",
					"Agent_AlertSelectAtLeastOne", 0)) {

			} else {
				SaveChanges();
			}

		}

		function SaveChanges() {

			var Name = document.getElementById('txtName').value;
			var Enabled = 1;

			var Report_ID = $.trim($("#Report_ID").val());
			//alert("Report_ID :" +Report_ID)
			var Schedule = document.getElementById('ddlSchedule').value;

			var fulladdress = document.URL;
			address = fulladdress.substring(0, fulladdress.lastIndexOf("/"));
			var Language = window.parent.$('#SelectedLanguage').val();
			
			var AccountHolderType;
			$.ajax({
				type : 'post',
				url : 'UsersControlPath_GCB',
				data : 'MethodName=GetAccountHolderType',
				cache : false,
				async : false,
				success : function(data) {
					AccountHolderType = data.trim();
				}
			});

			if (AccountHolderType == 0) {
				AccountHolderIDFinal = $.trim($('#listAccountHolder option:selected').val());
				var reportlink = "ReportsControlPath_GCB?ReportName=ActionLog&FromDate=#d1#&ToDate=#d2#&Account_HolderID="
						+ AccountHolderIDFinal
						+ '&Language='+ encodeURIComponent(Language) +"&Function=Export";
			} else {

				var Account_HolderID;
				$.ajax({
					type : 'post',
					url : 'UsersControlPath_GCB',
					data : 'MethodName=GetAccountHolderID',
					cache : false,
					async : false,
					success : function(data) {
						Account_HolderID = data.trim();

					}
				});
				var reportlink = "ReportsControlPath_GCB?ReportName=ActionLog&FromDate=#d1#&ToDate=#d2#&Account_HolderID="
						+ Account_HolderID 
						+ '&Language='+ encodeURIComponent(Language) + "&Function=Export";

			}

			var Link = address + '/' + reportlink;

			//alert(Link)

			var AgentsNames = "";
			for (var i = 0; i < document.getElementById('SelectedAgents').options.length; i++) {
				AgentsNames = new String(document.getElementById('SelectedAgents').options[i].text) + "," + AgentsNames;
			}
			AgentsNames = AgentsNames.substring(0, AgentsNames.length - 1);
			
			var Details;
			var Details_Arabic;
		
			Details = "ِAccount Holder Type :"
					+ $.trim($('#listAccountHolder option:selected').text())
					+ "<br><br>" + "List Of Agents : " + AgentsNames;

			Details_Arabic = "نوع مالك الحساب :"
					+ $.trim($('#listAccountHolder option:selected').text())
					+ "<br><br>" + "العملاء  : " + AgentsNames;
					
					
			$.ajax({
				type : 'post',
				url : 'Auto_ReportsControlPath_GCB',
				cache : false,
				async : false,
				data : 'MethodName=Add&Name=' + encodeURIComponent(Name)
						+ '&Report_ID=' + encodeURIComponent(Report_ID)
						+ '&Auto_Date_ID=' + encodeURIComponent($.trim(Schedule)) 
						+ '&Link=' + encodeURIComponent($.trim(Link))
						+ '&Details=' + encodeURIComponent($.trim(Details))
						+ '&Details_Arabic=' + encodeURIComponent($.trim(Details_Arabic)),
				success : function(data) {
					if (data > 0) {
						//alert(data);
						AddAgents(data);

					} else {
						loadpage('Interfaces/Reports/ActionLogReportTab.jsp?AddNewPage=-1&Report_ID='
										+ $("#Report_ID").val() + '&Source=1', 'ReportsManagment');
					}
				}
			});
		}

		function AddAgents(AgentID) {
			//alert(AgentID)
			var IDs = "";

			for (var i = 0; i < document.getElementById('SelectedAgents').options.length; i++) {
				IDs = new String(
						document.getElementById('SelectedAgents').options[i].value)
						+ "," + IDs;
			}
			IDs = IDs.substring(0, IDs.length - 1);
			$.ajax({
				type : 'post',
				url : 'Auto_Reports_TellersControlPath_GCB',
				cache : false,
				async : false,
				data : 'methodtype=Add&Auto_ReportID=' + AgentID
						+ '&Auto_TellerID=' + IDs,
				success : function(data) {
					//alert(data)
				}
			});
			loadpage('Interfaces/Reports/ActionLogReportTab.jsp?Report_ID='
					+ $("#Report_ID").val() + '&Source=2', 'ReportsManagment');
		}

		function Cancel() {

			loadpage('Interfaces/Reports/ActionLogReportTab.jsp?Report_ID='
					+ $("#Report_ID").val() + '&Source=1', 'ReportsManagment');

		}
	</script>
</body>
</html>