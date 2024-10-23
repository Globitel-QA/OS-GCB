<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="../../DataTable.html"%>
<%@ include file="../../library/Common/Common.jsp"%>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
</style>
<body>
	<input type="hidden" name="UserID" id="UserID">
	<input type="hidden" name="AddNewPage" id="AddNewPage"
		value=<%out.println(htmlspecialchars(request.getParameter("AddNewPage")));%>>
	<input type="hidden" name="UpdatePage" id="UpdatePage"
		value=<%out.println(htmlspecialchars(request.getParameter("UpdatePage")));%>>


	<div class="alert alert-success" id="Agent_MessagesAdd"
		style="display: none">New agent has been added successfully</div>

	<div class="alert alert-success" id="Agent_MessagesUpdate"
		style="display: none">Agent information has been updated
		successfully</div>

	<div class="alert alert-success" id="Agent_MessagesDelete"
		style="display: none">Selected agent has been deleted
		successfully</div>

	<div class="alert alert-danger" id="Agent_ErrorMessagesDelete"
		style="display: none">Failed to delete some of the selected
		agent(s)</div>

	<div class="alert alert-danger" id="Agent_ErrorMessagesAdd"
		style="display: none">Failed to add new agent</div>

	<div class="alert alert-danger" id="Agent_ErrorMessagesUpdate"
		style="display: none">Failed to update selected agent</div>

	<div class="row">
		<div class="col-md-12">
			<div class="portlet light bordered">
				<div class="portlet-title">
					<div class="caption">
						<i class=" icon-layers font-green"></i> <span
							class="caption-subject font-green sbold" id="Agent_Title">Security
							Watch Agents</span>
					</div>

				</div>
				<div class="portlet-title">
					<div class="portlet-body">
						<table
							class="exampleDataTable  table-striped table-bordered table-hover  "
							width="100%" cellspacing="0">
							<thead>
								<tr>
									<th id="Agent_ID">ID</th>
									<th id="Agent_AgentName">Agent Name</th>
									<th id="Users_PhoneNumber">Phone Number</th>
									<th id="Users_EmailAddress">Email Address</th>

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
	$(document)
			.ready(
					function() {

						CheckSession();
						FillGrid();

					
						function FillGrid() {

							var btnAdd = "none";
							var btnUpdate = "none";
							var btnDelete = "none";

							 

							var lang = window.parent.$('#SelectedLanguage').val();
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
									},
									"select": { 
										"rows": {
											_: " %d السجلات المحددة",
											1: " %d السجل المحدد"
										}
									}
								};
							}

							var pageTitle = jQuery.i18n.prop('Agent_Title');
							var selected = [];
							var datatable = $('.exampleDataTable')
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
													enctype: 'multipart/form-data',
													cache : false,
													async : false,
													url : BackendServiceIPAddress + '/api/agent/FillGrid?SearchList=-1'
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
																		2, 3 ]
															}
														},
														{
															extend : 'excel',
															title : pageTitle,
															orientation : 'landscape',
															pageSize : 'LEGAL',
															exportOptions : {
																columns : [ 1,
																		2, 3 ]
															}
														},
														{
															extend : 'pdf',
															title : pageTitle,
															orientation : 'landscape',
															pageSize : 'LEGAL',
															exportOptions : {
																columns : [ 1,
																		2, 3 ]
															}
														},
														{
															extend : 'print',
															title : pageTitle,
															orientation : 'landscape',
															pageSize : 'LEGAL',
															exportOptions : {
																columns : [ 1,
																		2, 3 ]
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
													"data" : "phone",
													"bSearchable" : true,
													"bSortable" : true
												}, {
													"data" : "email",
													"bSearchable" : true,
													"bSortable" : true
												} ],
												"language" : language

											});

							//append search filter to toolbar

							$("div.toolbar")
									.append(
											'<table><TR><TD><select class="form-control input-sm" size="1" name="listCols" id="listCols" style="height : 30px;">'
													+ '<option id="name" selected>'+jQuery.i18n.prop('Agent_AgentName')+'</option>'
													+ '<option id="phone" >'+jQuery.i18n.prop('Users_PhoneNumber')+'</option>'
													+ '<option id="email" >'+jQuery.i18n.prop('Users_EmailAddress')+'</option></select></TD></TR></table>');

							 
							 
					 

							if (lang == "ar_AR") {
								$('.dataTables_filter').css('float', 'left');
								$('.toolbar').css('float', 'left');
							}

							//append buttons

							/* Created By: Odai, the below script use to select all, deselect all on rows */ 
							$('<button type="button" class="btn green-jungle btn-sm" id="SelectAll" title="'+jQuery.i18n.prop('btnSelectAll')+'"><i class="fa fa-square"><i></button>')
							.appendTo('div.top');
					 		$('<b>&nbsp;</b>').appendTo('div.top');
					 		 					 		
					 		SelectAllRows('#SelectAll' , datatable);
					 		/* End Script */
					 		
							$("div.toolbar").append('<b>&nbsp;<br></b> ');

							if (ListofPrivileges.toUpperCase().indexOf(
									(",Agent_Add,").toUpperCase()) !== -1) {

								$(
										'<button type="button" class="btn  green btn-sm" id="Add" title="'+jQuery.i18n.prop('btnAdd')+'"><i class="fa fa-plus"><i></button>')
										.appendTo('div.top');
								//	$('<button type="button" class="btn btn-primary fa fa-plus" id="Add">&nbsp; Add </button>').appendTo('div.top');
								$('<b>&nbsp;</b>').appendTo('div.top');
							}
							if (ListofPrivileges.toUpperCase().indexOf(
									(",Agent_Update,").toUpperCase()) !== -1) {
								$(
										'<button type="button" class="btn blue btn-sm" id="Update" title="'+jQuery.i18n.prop('btnUpdate')+'"><i class="fa fa-edit"></i>  </button>&nbsp;')
										.appendTo('div.top');
								//$('<button type="button" class="btn btn-primary fa fa-edit" id="Update">&nbsp;Update</button>&nbsp;').appendTo('div.top');
								$('<b>&nbsp;</b>').appendTo('div.top');
							}
							if (ListofPrivileges.toUpperCase().indexOf(
									(",Agent_Delete,").toUpperCase()) !== -1) {

								$(
										'<button type="button" class="btn  red btn-sm" id="Delete" title="'+jQuery.i18n.prop('btnDelete')+'"><i class="fa fa-times"></i></button>&nbsp;')
										.appendTo('div.top');
								//$('<button type="button" class="btn btn-primary fa fa-times" id="Delete" >&nbsp; Delete</button>&nbsp;').appendTo('div.top');
							}

							$('#listCols').change(
									function(e) {
										var listVal = $("#listCols").find(
												'option:selected').attr('id');
										datatable.ajax.url(
												BackendServiceIPAddress + '/api/agent/FillGrid?SearchList='
														+ listVal).load();
									});
							var listVal = $("#listCols")
									.find('option:selected').attr('id');
							datatable.ajax.url(
									BackendServiceIPAddress + '/api/agent/FillGrid?SearchList='
											+ listVal).load();
							$('#Delete')
									.click(
											function() {

					var dataArr = [];
					var rows = $('tr.selected');
					var rowData = datatable.rows(rows).data();
					$.each($(rowData),function(key,value) {													 
						dataArr.push(value["id"]);
					});												

					if (datatable.rows('.selected').data().length > 0) {

						$.confirm({
									title : jQuery.i18n.prop('Confirm'),
									cancelButton : jQuery.i18n.prop('btnCancel'),
									confirmButton : jQuery.i18n.prop('btnOk'),
									onOpen : function() {
										// after the modal is displayed.
										if (lang == "ar_AR") {
											$('.buttons').css('float','left');
											$('.btn-success').css('margin-left','5px');
										}
									},
									content : jQuery.i18n
											.prop('DeleteConfirmation_1')
											+ " " + datatable.rows('.selected').data().length
											+ jQuery.i18n.prop('DeleteConfirmation_2'),
									confirm : function() {
										
										$
										$.ajax({
											type : 'DELETE',
											url : BackendServiceIPAddress + '/api/agent/deleteByIds/'+ dataArr,
											success : function(data) {
										
											 if (CheckResponse(data)) {

												 	PopupMsgWithoutValue("Agent_MessagesDelete");																

													datatable.ajax.url(BackendServiceIPAddress + '/api/agent/FillGrid?SearchList='
																			+ listVal).load();

											 } else {
															
												 if (data == -1) {
													 
													var len = datatable.rows('.selected').data().length;
													if (len > 1) {
														AlertFunction(jQuery.i18n
																.prop('Agent_AlertDeleteConnected_1'))
													} else {
														AlertFunction(jQuery.i18n
																.prop('Agent_AlertDeleteConnected_2'))
													}

													datatable.ajax.url(BackendServiceIPAddress + '/api/agent/FillGrid?SearchList='
																			+ listVal).load();

												} else {
													
													PopupMsg2("Agent_ErrorMessagesDelete");
													 
												}
															 
															 
											 }
															 

											}, error : function(err) {					 
												AlertErrorRespones(err);
											}

										});

									},
									cancel : function() {

									}
								});
						
					} else {
						AlertFunction(jQuery.i18n.prop('SelectRecordtoDelete'));
					}

				});

		$('#Add').click(function() {
			loadpage('Interfaces/Agent/Add.jsp','SystemSettings');
		});

	$('#Update')
			.click(
					function() {
						var dataArr = [];
						var rows = $('tr.selected');
						var rowData = datatable.rows(
								rows).data();
						$.each($(rowData), function(
								key, value) {
							dataArr.push(value["id"]);
						});

						if (datatable.rows('.selected')
								.data().length == 1) {
							loadpage(
									'Interfaces/Agent/Update.jsp?ID='
											+ dataArr[0],
									'SystemSettings');
						}

						else {
							AlertFunction(jQuery.i18n
									.prop('SelectRecordtoUpdate'));
						}

					});
 

					}
						
						
		PopupMsg('AddNewPage' , 'Agent_MessagesAdd'  , '1' , 'Agent_ErrorMessagesAdd' , '-1' );
		
		PopupMsg('UpdatePage' , 'Agent_MessagesUpdate'  , '1' , 'Agent_ErrorMessagesUpdate' , '-1' );

	})

	

	if (!$.fn.DataTable.isDataTable('#exampleDataTable')) {
		setTimeout(ResortTable, 1)
	}

	function ResortTable() {
		$('.exampleDataTable').DataTable().order([ 0, 'desc' ]).draw();
	}
	
</script>
</head>
</html>