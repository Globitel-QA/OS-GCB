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
	<div class="row">
		<div class="col-md-12 ">
			<div class="portlet light bordered"
				style="border-radius: 4px !important;">

				<div class="portlet-title">
					<div class="caption">
						<i class="fa fa-search font-green"></i> <span
							class="caption-subject font-green sbold" id="Zones_SearchZone">Search Zone</span>
					</div>
				</div>

				<div class="portlet-body form">
					<div class="row">
						<div class="col-lg-12">
							<form role="form">
								<label id="lblErrors" style="color: red"></label>
								<div class="row">

									<div class="form-group col-lg-6">
										<label id="CellsIDs_Latitude">Latitude</label> <input class="form-control input-sm"
											id="txtLatitude" maxlength="20">
									</div>
									<div class="form-group col-lg-6">
										<label id="CellsIDs_Longitude">Longitude</label> <input class="form-control input-sm"
											id="txtLongitude" maxlength="20">
									</div>

								</div>

								<hr>
								<div class="span4">
									<div class='pull-right'>
										<button id="CellsIDs_btnSearch" class="btn btn-success"
											onclick="IsFormComplete();return false;">Search</button>
										<button id="CellsIDs_btnClose" class="btn btn-danger"
											onclick="Cancel();return false;">Close</button>
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

		 
		$("#CellsIDs_btnSearch").text(jQuery.i18n.prop('btnSearch'));
		$("#CellsIDs_btnClose").text(jQuery.i18n.prop('btnClose'));
 

		
		//Just allow integers  
        $('#txtLatitude , #txtLongitude').keypress(function (event) {
           var $this = $(this);  
           if ((event.which != 46) &&
                   ((event.which < 48 || event.which > 57) &&
                           (event.which != 0 && event.which != 8))) {
               event.preventDefault();
           }
       }).bind("paste", function(e) {
			const data = e.originalEvent.clipboardData.getData('Text');
			 if(!(!isNaN(parseFloat(data)) && isFinite(data)) || data.indexOf(' ') >= 0){
		    	 e.preventDefault();  
		     } 				 
	 });	  
	
	
		
		Load();
		function Load() {
			CheckSession();
		}
		
		
		

		function IsFormComplete() {

			FormOk = true;
			
			if (FormOk == true
					&& $.trim(document.getElementById('txtLatitude').value) == "") {
				var div = $("#txtLatitude").parent("div.form-group");
				$("#txtLatitude").focus();
				div.addClass("has-error");
				AlertFunction(jQuery.i18n.prop('CellsIDs_AlertLatitude'));
				FormOk = false;

			} else {
				var div = $("#txtLatitude").parent("div.form-group");
				div.removeClass("has-error");
			}

			if (FormOk == true
					&& $.trim(document.getElementById('txtLongitude').value) == "") {
				var div = $("#txtLongitude").parent("div.form-group");
				var div2 = $("#txtCELLID").parent("div.form-group");
				div2.removeClass("has-error");
				$("#txtLongitude").focus();
				div.addClass("has-error");
				AlertFunction(jQuery.i18n.prop('CellsIDs_AlertLongitude'));
				FormOk = false;

			} else {
				var div = $("#txtLongitude").parent("div.form-group");
				div.removeClass("has-error");
			}

			if (FormOk == true) {
				FormOK = SaveChanges();
			}

		}

		function SaveChanges() {

			var Latitude = $.trim($('#txtLatitude').val());
			var Longitude = $.trim($('#txtLongitude').val());

			var Account_HolderID;
			$.ajax({
				type : 'post',
				url : 'ModulesControlPath_GLG',
				data : 'MethodName=GetAccountHolderID',
				cache : false,
				async : false,
				success : function(data) {
					Account_HolderID = data.trim();
				}
			});

			datatable.ajax.url(
					'ZonesControlPath_GLG?MethodName=Search&Latitude='
							+ Latitude + '&Longitude=' + Longitude
							+ '&Account_HolderID=' + Account_HolderID).load();

			$("#SearchZone").empty();
			Custombox.modal.close();
			$('#ClearFilter').show();
		}

		function Cancel() {
			$("#SearchZone").empty();
			Custombox.modal.close();
			
		}
		
	</script>
</body>
</html>