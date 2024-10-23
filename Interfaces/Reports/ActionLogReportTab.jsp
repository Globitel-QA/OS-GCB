<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../../DataTable.html"%>
<%@ include file="../../library/Common/Common.jsp"%>
<title>Insert title here</title>
</head>
<body>
	<input type="hidden" name="Source" id="Source"
		value=<%out.println(htmlspecialchars(request.getParameter("Source")));%>>
	<input type="hidden" name="Report_ID" id="Report_ID"
		value=<%out.println(htmlspecialchars(request.getParameter("Report_ID")));%>>
	<div class="row">
		<div class="col-md-12 ">
			<div class="portlet light bordered">

				<div class="portlet-body form">
					<div class="row">

						<div class="col-lg-12">
							<form role="form">
								<label id="lblErrors" style="color: red"></label>
								<div id="DivTabs" class="tabbable-custom ">
									<ul class="nav nav-tabs">
										<li id="liRegulars" class="active"><a id="ahrefRegulars"
											data-toggle="tab" href="#DivRegulars">Action Log Report</a></li>
										<li id="liAuto"><a id="ahrefAuto" data-toggle="tab"
											href="#DivAuto">Auto Reports</a></li>
									</ul>

									<div id="tab1" class="tab-content"></div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
	
		var lang = window.parent.$("#SelectedLanguage").val();
	
	
		$('#ahrefRegulars').text(jQuery.i18n.prop('ActionLogReport_Title'));
		$('#ahrefAuto').text(jQuery.i18n.prop('AutoReports_Title'));
		$(document).ajaxStart(function() {

			$("#Load").show();
		});

		$(document).ajaxStop(function() {
			$("#Load").hide();
		});

		$("#tab1").load("Interfaces/Reports/ActionLogReport.jsp?Report_ID="
						+ $("#Report_ID").val());
		
		$("#ahrefRegulars").click(function() {

			$("#tab1").load("Interfaces/Reports/ActionLogReport.jsp?Report_ID="
							+ $("#Report_ID").val());
		});
		
		$("#ahrefAuto").click(function() {

			$("#tab1").load("Interfaces/Reports/AllAutoReportsView.jsp?Report_ID="
							+ $("#Report_ID").val() + "&lang=" + encodeURIComponent(lang));
		});

		$(document).ready(function() {
			$(window).scrollTop(0);
		});

		if ($("#Source").val() == 'null') {
			$("#tab1").load("Interfaces/Reports/ActionLogReport.jsp?Report_ID="
							+ $("#Report_ID").val());
		}
		if ($("#Source").val() == 1 || $("#Source").val() == 2) {
			$("#liRegulars").removeClass("active");
			$("#liAuto").addClass("active");
			if ($("#Source").val() == 2) {
				
				$("#tab1").load("Interfaces/Reports/AllAutoReportsView.jsp?AddNewPage=1&Report_ID="
								+ $("#Report_ID").val() + "&lang=" + encodeURIComponent(lang));
				
			} else {
				
				$("#tab1").load("Interfaces/Reports/AllAutoReportsView.jsp?Report_ID="
								+ $("#Report_ID").val() + "&lang=" + encodeURIComponent(lang));
				
			}

		}
	</script>