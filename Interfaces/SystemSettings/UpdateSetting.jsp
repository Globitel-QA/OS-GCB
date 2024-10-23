<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="../../library/Common/Common.jsp"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<input type="hidden" name="SelectedID" id="SelectedID"
		value=<%out.println(htmlspecialchars(request.getParameter("ID")));%>>
	<div class="col-md-12 ">
		<div class="portlet light bordered">
			<div class="portlet-title">
				<div class="caption">
					<i class="icon-social-dribbble font-green"></i> <span
						class="caption-subject font-green bold"
						id="SystemSettings_UpdateSystemSetting">Update System Setting</span>
				</div>
			</div>
			<div class="portlet-body form">
				<div class="row">
					<div class="col-lg-12">
						<form role="form">
							<label id="lblErrors" style="color: red"></label>
							<div class="form-group">
								<label id="SystemSettings_SettingName">Setting Name</label> <input
									class="form-control input-sm" id="txt_Name" maxlength="30"
									disabled="disabled">
							</div>
							<div class="form-group">
								<label id="SystemSettings_FriendlyName">Friendly Name</label> <input
									class="form-control input-sm" id="txtFriendly_name"
									maxlength="30">
							</div>
							<div class="form-group">
								<label id="SystemSettings_SettingValue">Setting Value</label>
								<textarea class="form-control input-sm" rows="5" cols="28"
									id="txt_Value" maxlength="30" style="resize: none;"></textarea>
							</div>
							<div class="form-group">
								<label id="SystemSettings_Description">Description</label>
								<textarea class="form-control input-sm" rows="5" cols="28"
									id="txt_Description" maxlength="120" style="resize: none;"></textarea>
							</div>
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
	<script>
		$(document).ajaxStart(function() {
			$("#Load").show();
		});

		$(document).ajaxStop(function() {
			$("#Load").hide();
		});
		$(document)
				.ready(
						function() {

							$("#txtFriendly_name").focus();
							$('textarea[maxlength]')
									.keyup(
											function() {

												var max = parseInt($(this)
														.attr("maxlength"));

												if ($(this).val().length > max) {
													$(this)
															.val(
																	$(this)
																			.val()
																			.substr(
																					0,
																					$(
																							this)
																							.attr(
																									'maxlength')));
												}

											});
						});

 
		Load();

		function Load() {
			CheckSession();
			FillData(document.getElementById('SelectedID').value);
		}

		function FillData(ID) {

			$.ajax({
						type : 'get',
						url : BackendServiceIPAddress + '/api/systemsettings/GetByID/'+ ID,
						cache : false,
						async : false,
						async : false, 
						success : function(result) {

							if (CheckResponse(result)) {	 
								let data = result.result;
								document.getElementById('txt_Name').value = data["name"];

								try {
									document.getElementById('txtFriendly_name').value = data["friendlyName"];
								} catch (e) {
									// TODO: handle exception
								}

								document.getElementById('txt_Value').value = data["value"];

								var SystemSetting_Desc = "";

								try {
									SystemSetting_Desc = data["description"]; // Commit from Odai becuase replcae each 3 charcter to space in 11172019 .replace(new RegExp(" ... ", "g"),"\n");
									document.getElementById('txt_Description').value = SystemSetting_Desc;
								} catch (e) {
									// TODO: handle exception
								}

							} else {
								AlertErrorRespones(data);
							}
							
						} , error(err){
							AlertErrorRespones(err);
							console.log("Error Status Code: "+err.status + "Message: "+err.message);
						}
					});
		}
 
		function IsFormComplete() {
		
			
			if (isEmptyFiled("txtFriendly_name" , "SystemSettings_AlertFriendlyName")) {
				
			} else if (isEmptyFiled("txt_Value" , "SystemSettings_AlertSettingValue")) {
				
			} else {
				SaveChanges();
			}
			 
		}
		
		function SaveChanges() {
			
			var Name = document.getElementById('txt_Name').value;
			var Value = document.getElementById('txt_Value').value;
			var Desc = document.getElementById('txt_Description').value;
			var FriendlyName = document.getElementById('txtFriendly_name').value;
			
			var body =  JSON.stringify({
				 "id":document.getElementById('SelectedID').value.trim(),
		         "name": Name,
		         "value":Value,
		         "description":Desc,
		         "friendlyName":FriendlyName
	   		});
			
			$ .ajax({
					type : 'put',
					url : BackendServiceIPAddress + '/api/systemsettings',
					async : false, 	
					cache : false,
					processData: false,
				    contentType: 'application/json',
					data : body,
					success : function(data) {

						if (CheckResponse(data)) {
							//Success
							loadpage('Interfaces/SystemSettings/SystemSetting.jsp?UpdatePage=1', 'SystemSettings');
						} else {
							//Failed
							loadpage('Interfaces/SystemSettings/SystemSetting.jsp?UpdatePage=-1', 'SystemSettings');
						}
					} , error(err){
						loadpage('Interfaces/SystemSettings/SystemSetting.jsp?UpdatePage=-1', 'SystemSettings');
						console.log("Error Status Code: "+err.status + "Message: "+err.message);
					}
				});
		}
		
		function Cancel() {
			
			loadpage('Interfaces/SystemSettings/SystemSetting.jsp', 'SystemSettings');
			
		}
	</script>