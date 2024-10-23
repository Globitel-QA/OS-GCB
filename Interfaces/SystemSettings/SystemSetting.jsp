<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="../../DataTable.html"%>
<%@ include file="../../library/Common/Common.jsp"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<body>
	<input type="hidden" name="AddNewPage" id="AddNewPage"
		value=<%out.println(htmlspecialchars(request.getParameter("AddNewPage")));%>>
	<input type="hidden" name="UpdatePage" id="UpdatePage"
		value=<%out.println(htmlspecialchars(request.getParameter("UpdatePage")));%>>


	<div class="alert alert-success" id="SystemSettings_MessagesAdd"
		style="display: none">New system setting has been added
		successfully</div>
	<div class="alert alert-success" id="SystemSettings_MessagesUpdate"
		style="display: none">System setting information has been
		updated successfully</div>
	<div class="alert alert-success" id="SystemSettings_MessagesDelete"
		style="display: none">Selected system setting(s) has been
		deleted successfully</div>

	<div class="alert alert-danger" id="SystemSettings_ErrorMessagesDelete"
		style="display: none">Failed to delete the selected
		setting(s),you can not delete setting(s) used by the system</div>
	<div class="alert alert-danger" id="SystemSettings_ErrorMessagesAdd"
		style="display: none">Failed to add new system setting</div>
	<div class="alert alert-danger" id="SystemSettings_ErrorMessagesUpdate"
		style="display: none">Failed to update selected system setting</div>

	<div class="row">
		<div class="col-md-12">
			<div class="portlet light bordered">
				<div class="portlet-title">
					<div class="caption">
						<i class=" icon-layers font-green"></i> <span
							class="caption-subject font-green sbold"
							id="SystemSettings_Title">System Settings</span>
					</div>

				</div>
				<div class="portlet-title">
					<div class="portlet-body">
						<table
							class="exampleDataTable  table-striped table-bordered table-hover "
							width="100%">
							<thead>
								<!-- Below are display names -->
								<tr>
									<th id="SystemSettings_ID">ID</th>
									<th id="SystemSettings_SettingName">Setting Name</th>
									<th id="SystemSettings_FriendlyName">Friendly Name</th>
									<th id="SystemSettings_SettingValue">Setting Value</th>
									<th id="SystemSettings_Editable">Editable</th>
									<th id="SystemSettings_Description">Description</th>
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
	var listVal = $("#listCols").find('option:selected').attr('id');
	$(document).ready(function() {
 

						CheckSession();
						FillGrid();
					
 
						function FillGrid() {
							var btnUpdate = "none";
							var lang = window.parent.$('#SelectedLanguage').val();
							 
							var language = {};
							if (lang == "ar_AR") {

								language = {
									"sProcessing" : "جارٍ التحميل...",
									"sLengthMenu" : " عرض _MENU_ سجلات",
									"sZeroRecords" : "لم يعثر على أية سجلات",
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

							var pageTitle = jQuery.i18n
									.prop('SystemSettings_Title');
 
							var selected = [];
							var datatable = $('.exampleDataTable')
									.DataTable(
											{
												"scrollX" : true,
												"bServerSide" : true,
												"bProcessing" : false,
												//"buttons" : true,

												"select" : {
													style : 'single'
												},
												"aaSorting" : [ [ 0, 'desc' ] ],
												"ajax" : {
													type : 'post',
													cache : false,
													 enctype: 'multipart/form-data',
													async : false, 
													url : BackendServiceIPAddress + '/api/systemsettings/FillGrid?SearchList=-1'
														  +'&language='+encodeURIComponent(lang)
												}, error: function (xhr, error, code) {								             
									            	AlertErrorRespones(xhr);
									            },
												"rowCallback" : function(row,
														data) {
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
														    charset: 'utf-8',
                                                            bom: true,
															orientation : 'landscape',
															pageSize : 'LEGAL',
															exportOptions : {
																columns : [ 1,
																		2, 3,
																		4, 5 ]
															}
														},
														{
															extend : 'excel',
															title : pageTitle,
															orientation : 'landscape',
															pageSize : 'LEGAL',
															exportOptions : {
																columns : [ 1,
																		2, 3,
																		4, 5 ]
															}
														},
														{
															extend : 'pdf',
															title : pageTitle,
															orientation : 'landscape',
															pageSize : 'LEGAL',
															exportOptions : {
																columns : [ 1,
																		2, 3,
																		4, 5 ]
															}
														},
														{
															extend : 'print',
															title : pageTitle,
															orientation : 'landscape',
															pageSize : 'LEGAL',
															exportOptions : {
																columns : [ 1,
																		2, 3,
																		4, 5 ]
															},
															text : jQuery.i18n
																	.prop('print')
														} ],

												"dom" : '<"col-lg-12" B><"toolbar"><"top"f>rt<"bottom">pli<"col-lg-12" <"New-grid-filter">   <"clear"> >',

												"columns" : [ {
													"data" : "id",
													"bSearchable" : true,
													"bSortable" : true,
													"visible" : false,
												}, {
													"data" : "name",
													"bSearchable" : true,
													"bSortable" : true
												}, {
													"data" : "friendlyName",
													"bSearchable" : true,
													"bSortable" : true
												}, {
													"data" : "value",
													"bSearchable" : true,
													"bSortable" : true
												}, {
													"data" : "isEditable",
													"bSearchable" : true,
													"bSortable" : true
												}, {
													"data" : "description",
													"bSearchable" : true,
													"bSortable" : true
												}

												],
												"language" : language

											});

							//append search filter to toolbar
							$("div.toolbar").append('<table><TR><TD><select class="form-control input-sm" size="1" '
									+ ' name="listCols" id="listCols" style="height : 30px;">'
									+ '<option id="name" selected>Setting Name</option></select></TD></TR></table>');

							$('#Name').html(jQuery.i18n.prop('SystemSettings_SettingName'));

							if (lang == "ar_AR") {
								$('.dataTables_filter').css('float', 'left');
								$('.toolbar').css('float', 'left');
							}

							//append buttons
							
							 
					 		
							if (ListofPrivileges.toUpperCase().indexOf(
									(",SystemSettings_Update,").toUpperCase()) !== -1) {

								$('<button type="button" class="btn   blue btn-sm" id="Update" title="'+jQuery.i18n.prop('btnUpdate')+'"><i class="fa fa-edit"></i>  </button>&nbsp;')
										.appendTo('div.top');
								$('<b>&nbsp;</b>').appendTo('div.top');
							}

							$('#listCols').change(function(e) {
								var listVal = $("#listCols").find('option:selected').attr('id');
								datatable.ajax.url(BackendServiceIPAddress + '/api/systemsettings/FillGrid?SearchList='
												+ listVal +'&language='+encodeURIComponent(lang)).load();
							});
							
							var listVal = $("#listCols").find('option:selected').attr('id');
							
							datatable.ajax.url(BackendServiceIPAddress + '/api/systemsettings/FillGrid?SearchList='
											+ listVal +'&language='+encodeURIComponent(lang)).load();

							$('#Update').click(function() {
								
								var dataArr = [];
								var rows = $('tr.selected');
								var rowData = datatable.rows(rows).data();
								$.each($(rowData), function(key, value) {
									dataArr.push(value["id"]);
									dataArr.push(value["isEditable"]);
								});

								if (datatable.rows('.selected').data().length == 1) {

							 
									if (dataArr[1] == 'Editable') {

										loadpage('Interfaces/SystemSettings/UpdateSetting.jsp?ID='
														+ dataArr[0], 'SystemSettings');

									} else {
										AlertFunction(jQuery.i18n.prop('SystemSettings_AlertCantUpdateThis'));
									}

													

								} else {
									AlertFunction(jQuery.i18n.prop('SelectRecordtoUpdate'));
								}

							});
							 

						}
						if (!$.fn.DataTable.isDataTable('#exampleDataTable')) {
							setTimeout(ResortTable, 300)
						}
						function ResortTable() {
							$('.exampleDataTable').DataTable().order([ 0, 'desc' ]).draw();
						}
						
						 
						PopupMsg('AddNewPage' , 'SystemSettings_MessagesAdd'  , '1' , 'SystemSettings_ErrorMessagesAdd' , '-1' );
						
						PopupMsg('UpdatePage' , 'SystemSettings_MessagesUpdate'  , '1' , 'SystemSettings_ErrorMessagesUpdate' , '-1' );

					})
</script>
</head>
</html>