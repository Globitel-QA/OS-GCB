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
	<input type="hidden" name="OldName" id="OldName">
	<input type="hidden" name="OldPhone" id="OldPhone">
	<input type="hidden" name="OldEmail" id="OldEmail">
	<input type="hidden" name="SelectedID" id="SelectedID"
		value=<%out.println(htmlspecialchars(request.getParameter("ID")));%>>
	<div class="row">
		<div class="col-md-12 ">
			<div class="portlet light bordered">
				<div class="portlet-title">
					<div class="caption">
						<i class="icon-social-dribbble font-green"></i> <span
							class="caption-subject font-green bold"
							id="Agent_UpdateAgent">Update Agent</span>
					</div>
				</div>
				<div class="portlet-body form">
					<div class="row">
						<div class="col-lg-12">
							<form role="form">
								<label id="lblErrors" style="color: red"></label>
								<div class="form-group">
									<label id="Agent_AgentName">Agent Name</label> <input
										class="form-control input-sm" id="txtName" maxlength="50">

								</div>
								<div class="form-group">
									<label id="Users_PhoneNumber">Phone Number</label> <input
										class="form-control input-sm number" id="txtPhone" maxlength="20">

								</div>
								<div class="form-group">
									<label id="Users_EmailAddress">Email Address</label> <input
										class="form-control input-sm" id="txtEmail" maxlength="50">
									<p class="form-control-static pull-left" id="result"></p>
									<p id="Users_EmailExample"
										class="help-block Translate pull-left"
										style="color: #737373 !important;">Example : user@globitel.com</p>

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

		
		 function isEmail() {
			  var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
			  return regex.test($('#txtEmail').val());
			}
		 
			$('#result').removeClass()
			$('#result').addClass('strong')
			$("#result").css("color", "green");
			$('#result').html(jQuery.i18n.prop('Users_EmailAddressCorrectFormat_1'));
			
		 $('#txtEmail').keyup(function() {
				
				if (isEmail() == 0) {
	
					$('#result').removeClass()
					$('#result').addClass('short')
					$("#result").css("color", "red");
					
					$('#result').html(jQuery.i18n.prop('Users_EmailAddressCorrectFormat_2'));
				}else{
					$('#result').removeClass()
					$('#result').addClass('strong')
					$("#result").css("color", "green");
					
					
					$('#result').html(jQuery.i18n.prop('Users_EmailAddressCorrectFormat_1'));

				}			
			})
		 
		 
		Load();
		function Load() {
			CheckSession();
			FillData($.trim($('#SelectedID').val()));
		}
		
		 

		function FillData(ID) {

			$.ajax({
				type : 'GET',
				url :  BackendServiceIPAddress+'/api/agent/' + ID  ,
				cache : false,
				async : false, 
				success : function(data) {

					if(CheckResponse(data)){

						var Obj = data.result;
						$('#OldName').val(Obj["name"]);
						$('#OldPhone').val(Obj["phone"]);
						$('#OldEmail').val(Obj["email"]);
						$('#txtName').val(Obj["name"]);
						$('#txtPhone').val(Obj["phone"]);
						$('#txtEmail').val(Obj["email"]);

					} else {
						AlertErrorRespones(data);
					} 
				}, error : function(err) {					 
					AlertErrorRespones(err);
				}
			});
		}

		function IsFormComplete() {
			
			$("div.form-group").removeClass("has-error");
			
			if (isEmptyFiled("txtName" , "Agent_AlertAgentName")) {
				
			} else if (Module_CheckExistance_OldwithNew_WithOutParameters('txtName' , 'OldName' , BackendServiceIPAddress+'/api/agent/GetByName/' + encodeURIComponent($("#txtName").val().trim()) 
					, false , "Agent_AlertAgentNameExist" ,  "GET" )){
	 
			} else if (isEmptyFiled("txtPhone" , "Users_AlertPhoneNumber")) {
				
			}  else if (Module_CheckExistance_OldwithNew_WithOutParameters('txtPhone' , 'OldPhone' , BackendServiceIPAddress+'/api/agent/CheckByPhone/' +  encodeURIComponent($("#txtPhone").val().trim()) 
					, false , "Users_AlertPhoneNumberExist" ,  "GET" )){
	 
			} else if (MSISDN_IsValid('txtPhone' , BackendServiceIPAddress+'/api/msisdnformat/CheckMSISDNFormat/'+encodeURIComponent($.trim($('#txtPhone').val()))
					, false , "Users_AlertValidPhoneNumber" , "GET"  )){
	 
			} else if (isEmptyFiled("txtEmail" , "Users_AlertEmailAddress")) {
				
			} else if (Email_ValidFormat("txtEmail" , "result" , "Users_EmailAddressCorrectFormat_1" , "Users_AlertCorrectEmailAddress")) {
				
			} else if (Module_CheckExistance_OldwithNew_WithOutParameters('txtEmail' , 'OldEmail' , BackendServiceIPAddress+'/api/agent/CheckByEmail/' +  encodeURIComponent($("#txtEmail").val().trim()) 
					, false , "Users_AlertEmailAddressExist" ,  "GET"  )){
	 
			} else {				
				SaveChanges();				
			}
			 
		}		
		
		function SaveChanges() {
			
			
			var ID = $('#SelectedID').val();
			var Name = $('#txtName').val();
			var Phone = $('#txtPhone').val();
			var Email = $('#txtEmail').val();
			
			var OldName = $.trim($('#OldName').val());
			var OldPhone = $.trim($('#OldPhone').val());

			
			var body =  JSON.stringify({		
				 "id":ID,
		         "name": Name,
		         "oldName": OldName,
		         "phone": Phone,
		         "email": Email
		   });
			
			
			$.ajax({
				type : 'PUT',
				url : BackendServiceIPAddress+'/api/agent/',
				cache : false,
				async : false,
				contentType: 'application/json',
	            processData: false,
	        	data : body,
				success : function(data) {
					if (CheckResponse(data)) {	
						loadpage('Interfaces/Agent/Agent.jsp?UpdatePage=1',
								'SystemSettings');
					} else {
						loadpage('Interfaces/Agent/Agent.jsp?UpdatePage=-1',
								'SystemSettings');
					}
				}, error : function(err) {					 
					AlertErrorRespones(err);
					loadpage('Interfaces/Agent/Agent.jsp?UpdatePage=-1',
					'SystemSettings');
				}
			});
		}
		
		function Cancel() {
			
			loadpage('Interfaces/Agent/Agent.jsp', 'SystemSettings');

		}
	</script>
</body>
</html>