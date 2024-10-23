<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="../../DataTable.html"%>
<%@ include file="../../library/Common/Common.jsp"%>

<%
	if (htmlspecialchars(request.getParameter("lang")).equals("en")) {
%>

 <link rel="stylesheet" type="text/css" href="CSS/datatabledetailed.css">

<%
	} else {
%>

 <link rel="stylesheet" type="text/css" href="CSS/datatabledetailed-rtl.css">

<%
	}
%>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<body>

	<input type="hidden" name="Report_ID" id="Report_ID"
		value=<%out.println(htmlspecialchars(request.getParameter("Report_ID")));%>>
	<input type="hidden" name="UserID" id="UserID">
	<input type="hidden" name="AddNewPage" id="AddNewPage"
		value=<%out.println(htmlspecialchars(request.getParameter("AddNewPage")));%>>
	<input type="hidden" name="DeletePage" id="DeletePage"
		value=<%out.println(htmlspecialchars(request.getParameter("DeletePage")));%>>
		
	<div class="alert alert-success" id="AutoReports_MessagesAdd"
		style="display: none">New auto report has been added successfully</div>
	<div class="alert alert-success" id="AutoReports_MessagesUpdate"
		style="display: none">Auto report information has been updated successfully</div>
	<div class="alert alert-success" id="AutoReports_MessagesDelete"
		style="display: none">Selected auto report(s) has been deleted successfully</div>

	<div class="alert alert-danger" id="AutoReports_ErrorMessagesDelete"
		style="display: none">Failed to delete some of the selected auto report(s)</div>
	<div class="alert alert-danger" id="AutoReports_ErrorMessagesAdd"
		style="display: none">Failed to add new auto report</div>
	<div class="alert alert-danger" id="AutoReports_ErrorMessagesUpdate"
		style="display: none">Failed to update selected auto report</div>
		
 

	<div class="row">
		<div class="col-md-12">
			<div class="portlet light bordered">
				<div class="portlet-title">
					<div class="caption">
						<i class=" icon-layers font-green"></i> <span
							class="caption-subject font-green sbold" id="AutoReports_Title">Auto
							Reports</span>
					</div>
				</div>
				<div class="portlet-title">
					<div class="portlet-body">
						<table
							class="exampleDataTable  table-striped table-bordered table-hover  "
							width="100%" cellspacing="0" id="MasterTable">
							<thead>
								<tr>
									<th>ID</th>
									<th>Report ID</th>
									<th id="AutoReports_AutoReportName">Auto Report Name</th>
									<th id="AutoReports_ScheduleType">Schedule Type</th>
									<!-- <th>Status</th> -->
									<th id="AutoReports_Link">Link</th> 

								</tr>
							</thead>
							<tfoot>
								<TR>
								</TR>
							</tfoot>
							<tbody>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<title>Insert title here</title>
<script>

	function format(Data) {

		console.log(Data)
		// `d` is the original data object for the row
		return '<table class="exampleDataTable  table-striped table-bordered table-hover" width="100%" cellspacing="0" '
				+ ' style = "font-size:13px" id="DetailedTable" >'
				+ '<tr>'
				+ '<td class = "th2" style= "border:0px"><span style = "font-weight:600">'
				+ ""
				+ '</span> '
				+ Data.Details
				+ '</td>'
				+ '</tr>'
				+ '</table>';
	}

	var datatable = $('.exampleDataTable').DataTable({});
	FillGrid();
	function FillGrid() {

		datatable.destroy();
		var listVal = $("#listCols").find('option:selected').attr('id');
		$(document)
				.ready(
						function() {

							CheckSession();
							FillGrid();
 

							function FillGrid() {

								var btnAdd = "none"; 
								var btnDelete = "none";

								$.ajax({
									type : 'post',
									url : 'Privileges_GroupControlPath_GCB',
									data : 'methodtype=GetData',
									cache : false,
									async : false,
									success : function(data) {
										//alert(data)
										if (data != 0) {
											ListofPrivileges = data;

										}
									}
								});

								var lang = window.parent.$('#SelectedLanguage')
										.val();
								var language = {};
								if (lang == "ar_AR") {

									language = {
											"sProcessing" : "جارٍ التحميل...",
											"sLengthMenu" : " عرض _MENU_ سجلات",
											"sZeroRecords" : "لم يتم العثور على أية سجلات",
											"sInfo" : "عرض _START_ - _END_ من أصل _TOTAL_ سجلات",
											"sInfoEmpty" : "عرض  0 - 0 من أصل 0 سجل",
											"sInfoFiltered" : "(منتقاة من مجموع _MAX_ مُدخل)",
											"sInfoPostFix" : "",
											"sSearch" : "بحث:",
											"sUrl" : "",
											"oPaginate" : {
												"sFirst" : "الأول",
												"sPrevious" : "السابق",
												"sNext" : "التالي",
												"sLast" : "الأخير"
											}
									};
								}

								var pageTitle = $("#ahrefRegulars")
										.text()
										.trim()
										.substring(
												0,
												$("#ahrefRegulars").text().length - 6)
										+ jQuery.i18n.prop('AutoReports_Title');

								var selected = [];
								datatable = $('.exampleDataTable')
										.DataTable(
												{
													"scrollX" : true,
													"bServerSide" : true,
													"bProcessing" : false,
													//"buttons" : true,

													"select" : {
														style : 'multi'
													},
													"aaSorting" : [ [ 0, 'desc' ] ],
													"ajax" : {
														type : 'post',
														cache : false,
														async : false,
														url : 'Auto_ReportsControlPath_GCB?MethodName=FillGrid&SearchList=-1'
																+ '&Report_ID='
																+ $(
																		"#Report_ID")
																		.val()
													},
													"rowCallback" : function(
															row, data) {
														if ($.inArray(
																data.DT_RowId,
																selected) !== -1) {
															$(row).addClass(
																	'selected');
														}
													},

													//"dom" : '<"toolbar"><"top"Bf>rt<"bottom"><"col-lg-12" <"New-grid-filter"li>  <"New-grid-paging"p>  ><"clear">',
													"buttons" : [
															{
																extend : 'csv',
																title : pageTitle,
																orientation : 'landscape',
																pageSize : 'LEGAL',
																exportOptions : {
																	columns : [
																			2,
																			3 ]
																}
															},
															{
																extend : 'excel',
																title : pageTitle,
																orientation : 'landscape',
																pageSize : 'LEGAL',
																exportOptions : {
																	columns : [
																			2,
																			3 ]
																}
															},
															{
																extend : 'pdf',
																title : pageTitle,
																orientation : 'landscape',
																pageSize : 'LEGAL',
																exportOptions : {
																	columns : [
																			2,
																			3 ]
																}
															},
															{
																extend : 'print',
																title : pageTitle,
																orientation : 'landscape',
																pageSize : 'LEGAL',
																exportOptions : {
																	columns : [
																			2,
																			3 ]
																},
																text : jQuery.i18n
																		.prop('print')
															} ],

													"dom" : '<"col-lg-12" B><"toolbar"><"top"f>rt<"bottom">pli<"col-lg-12" <"New-grid-filter">   <"clear"> >',

													"columns" : [
															{
																"data" : "ID",
																"bSearchable" : true,
																"bSortable" : true,
																"visible" : false,
															},
															{
																"data" : "Report_ID",
																"bSearchable" : true,
																"bSortable" : true,
																"visible" : false,
															},
															{
																"data" : "ReportNAME",
																//"className" : 'details-control',
																"bSearchable" : true,
																"bSortable" : true,
																"render": function ( data, type, row  ) {
																	 
																	 
														            return  '<span class="details-control">&nbsp;</span>'+data ;
																      
																}, 
																"width": "322",
															},
															{
																"data" : "AUTODATE",
																"bSearchable" : true,
																"bSortable" : true
															},
															{
																"data" : "Link",
																"bSearchable" : true,
																"bSortable" : true,
																"visible" : false
															} ],
													"language" : language

												});

								//append search filter to toolbar

								$("div.toolbar")
										.append(
												'<table><TR><TD><select class="form-control input-sm" size="1" name="listCols" id="listCols" style="height : 30px;"><option id="AUTO_REPORTS.NAME" class="reportName" selected>Auto Report Name</option><option id="AUTO_DATES.NAME" class="ScheduleType">Schedule Type</option></select></TD></TR></table>');

								$('.ScheduleType')
										.html(
												jQuery.i18n
														.prop('AutoReports_ScheduleType'));

								$('.reportName')
										.html(
												jQuery.i18n
														.prop('AutoReports_AutoReportName'));

								if (lang == "ar_AR") {
									$('.dataTables_filter')
											.css('float', 'left');
									$('.toolbar').css('float', 'left');
								}

								//append buttons
								$("div.toolbar").append('<b>&nbsp;<br></b> ');

								if (ListofPrivileges.toUpperCase().indexOf((",Auto_Reports_Add,").toUpperCase()) !== -1) {

									$('<button type="button" class="btn  green btn-sm" id="Add" title="'+jQuery.i18n.prop('btnAdd')+'"><i class="fa fa-plus"><i></button>')
											.appendTo('div.top');								
									$('<b>&nbsp;</b>').appendTo('div.top');
								}
								 
								if (ListofPrivileges.toUpperCase().indexOf((",Auto_Reports_Delete,").toUpperCase()) !== -1) {

									$('<button type="button" class="btn  red btn-sm" id="Delete" title="'+jQuery.i18n.prop('btnDelete')+'"><i class="fa fa-times"></i></button>&nbsp;')
											.appendTo('div.top');
									
								}

								$('#listCols').change(
										function(e) {
											var listVal = $("#listCols").find(
													'option:selected').attr(
													'id');
											datatable.ajax.url(
													'Auto_ReportsControlPath_GCB?MethodName=FillGrid&SearchList='
															+ listVal
															+ '&Report_ID='
															+ $("#Report_ID")
																	.val())
													.load();
										});
								var listVal = $("#listCols").find(
										'option:selected').attr('id');
								datatable.ajax.url(
										'Auto_ReportsControlPath_GCB?MethodName=FillGrid&SearchList='
												+ listVal + '&Report_ID='
												+ $("#Report_ID").val()).load();

								$('#Delete')
										.click(
												function() {
													var stop = 0;
													var dataArr = [];
													var rows = $('tr.selected');
													var rowData = datatable
															.rows(rows).data();
													$
															.each(
																	$(rowData),
																	function(
																			key,
																			value) {
																		var C = value["ReportID"];
																		var Name = value["ReportNAME"];
																		if (($
																				.trim(
																						Name)
																				.toString()
																				.toLowerCase()) == "default") {

																			AlertFunction("You can not delete default auto report");
																			stop = 1;
																			return;
																		}
																		dataArr
																				.push(value["ID"]);
																	});
													//console.log(dataArr);

													if (stop == 1) {

														return;
													}
													if (datatable.rows(
															'.selected').data().length > 0) {

														$
																.confirm({
																	title : jQuery.i18n
																			.prop('Confirm'),
																	cancelButton : jQuery.i18n
																			.prop('btnCancel'),
																	confirmButton : jQuery.i18n
																			.prop('btnOk'),
																	onOpen : function() {
																		// after the modal is displayed.
																		if (lang == "ar_AR") {
																			$(
																					'.buttons')
																					.css(
																							'float',
																							'left');
																			$(
																					'.btn-success')
																					.css(
																							'margin-left',
																							'5px');
																		}
																	},
																	content : jQuery.i18n
																			.prop('DeleteConfirmation_1')
																			+ " " + datatable
																					.rows(
																							'.selected')
																					.data().length
																			+ jQuery.i18n
																					.prop('DeleteConfirmation_2'),
																	confirm : function() {
																		$
																		$
																				.ajax({
																					type : 'post',
																					url : "Auto_ReportsControlPath_GCB",
																					data : 'MethodName=Delete&ID='
																							+ dataArr,
																					success : function(
																							data) {
																						//AlertFunction(data)
																						if (data != 0) {

																							if (data == -1) {
																								var len = datatable
																										.rows(
																												'.selected')
																										.data().length;
																								if (len > 1) {
																									AlertFunction("One or more auto reports is connected with other module and can't be deleted.")
																								} else {
																									AlertFunction("The selected auto reports is connected with other module and can't be deleted.")
																								}

																								datatable.ajax
																										.url(
																												'Auto_ReportsControlPath_GCB?MethodName=FillGrid&SearchList='
																														+ listVal
																														+ '&Report_ID='
																														+ $(
																																"#Report_ID")
																																.val())
																										.load();

																							} else {

																								PopupMsgWithoutValue("AutoReports_ErrorMessagesDelete");

																							}

																						} else {

																							PopupMsgWithoutValue("AutoReports_MessagesDelete");

																							datatable.ajax
																									.url(
																											'Auto_ReportsControlPath_GCB?MethodName=FillGrid&SearchList='
																													+ listVal
																													+ '&Report_ID='
																													+ $(
																															"#Report_ID")
																															.val())
																									.load();

																						}

																					}

																				});

																	},
																	cancel : function() {

																	}
																});
													}

													else {
														AlertFunction(jQuery.i18n
																.prop('SelectRecordtoDelete'));
													}

												});

								$('#Add')
										.click(
												function() {
													//alert($("#Report_ID").val())
													if ($("#Report_ID").val() == 1) {
														loadpage(
																'Interfaces/Reports/AddAutoActionLogReport.jsp?Report_ID='
																		+ $(
																				"#Report_ID")
																				.val(),
																'ReportsManagment');
													} else if ($("#Report_ID")
															.val() == 2) {
														loadpage(
																'Interfaces/Reports/AddAutoCallsDetailedReport.jsp?Report_ID='
																		+ $(
																				"#Report_ID")
																				.val(),
																'ReportsManagment');
													} else if ($("#Report_ID")
															.val() == 3) {
														loadpage(
																'Interfaces/Reports/AddAutoCallsStatisticalReport.jsp?Report_ID='
																		+ $(
																				"#Report_ID")
																				.val(),
																'ReportsManagment');
													}

												});
								
								$('#MasterTable tbody').on('click','td > span.details-control,i.details-control',function() {

									var tr = $(this).closest('tr');
									var row = datatable.row(tr);

									if (row.child.isShown()) {
										// This row is already open - close it
										row.child.hide();
										tr.removeClass('shown');
									} else {
										// Open this row
										row.child(format(row.data())).show();
										tr.addClass('shown');

										$('td > #DetailedTable').parent().css("padding","0px");
										
										var count = 1
										$('thead > tr:nth-child(2) > th').each(function() {
											
											tdWidth = $(this).width();
											if (count == 1) {
												tdWidth = parseInt(tdWidth + 14);
											} else if (count == 2) {
												tdWidth = parseInt(tdWidth + 15);
											}
											
											$(".th"+ count).css("width",tdWidth);
											count++;
										});
										}
									});
								
							 

							}

							PopupMsg('AddNewPage', 'AutoReports_MessagesAdd', '1',
									'AutoReports_ErrorMessagesAdd', '-1');

							PopupMsg('DeletePage', 'AutoReports_MessagesDelete', '1',
									'AutoReports_ErrorMessagesDelete', '-1');

						})

	}
</script>
</head>
</html>