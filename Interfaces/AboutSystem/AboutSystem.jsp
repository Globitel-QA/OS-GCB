<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
</style>
<body>
	<div class="row">
		<div class="col-md-12 ">
			<div class="portlet light bordered">
				<div class="portlet-title">
					<div class="caption">
						<i class="icon-social-dribbble font-green"></i> <span
							class="caption-subject font-green bold" id="AboutSystem_Title">About System</span>
					</div>
				</div>
				<div class="portlet-body form">
					<div class="row">
						<div class="col-lg-12">
							<form role="form">
								<label id="lblErrors" style="color: red"></label>
								<div class="form-group">
									<!--<br> <br>
								 <table cellpadding="0" cellspacing="0">
										<tr> 

									<td>-->
									<Table id="dynamicItemsTable" class="table table-striped">
									</Table>
									<!-- </td>
									</tr>

										<tr>

										</tr>

									</table> 
									<br> <br>-->
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script>
		var BackendServiceIPAddress = GetIPAdress();
	$(document).ajaxStart(function() {
			$("#Load").show();
		});

		$(document).ajaxStop(function() {
			$("#Load").hide();
		});
		 
		let lang = window.parent.$('#SelectedLanguage').val();
		$(document).ready(function() {
			Load();
		});

		
		function Load() {
			CheckSession();
			FillSystemAbout();
		}

		function FillSystemAbout() {
			
			var str = "";
			$.ajax({
				type : 'get',
				url : BackendServiceIPAddress + '/api/about-system', 
				cache : false,
				async : false,
				success : function(data) {
			 
					if (CheckResponse(data)) {


						$.each(data["result"],function(key, value) {
							
							str += "<tr>";	  
							if (lang == "ar_AR") {
								str += "<td width='150px;'><font size=2>" + value.arabicKey + "</font></td>";
								str += "<td> <font size=2>" + value.arabicValue + "</font></td>";
							} else {
								str += "<td width='150px;'><font size=2>" + value.key + "</font></td>";
								str += "<td> <font size=2>" + value.value + "</font></td>";
							}
							str += "</tr>";
							
						});
					} else {
						AlertErrorRespones(data);
					}
				} , error(err){
					AlertErrorRespones(err);
					console.log("Error Status Code: "+err.status + "Message: "+err.message);
				}
			});
			$('#dynamicItemsTable').append(str);
		}
	</script>
</body>
</html>