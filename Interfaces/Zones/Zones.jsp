<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="../../DataTable.html"%>
<%@ include file="../../library/Common/Common.jsp"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="library/Leaflet/docs/examples/libs/leaflet-src.js"></script>
<link rel="stylesheet"
	href="library/Leaflet/docs/examples/libs/leaflet.css" />
<script type="text/javascript" src="library/jquery/leaflet/tokml.js"></script>

<style>
.portlet.light .dataTables_wrapper .dt-buttons {
	margin-top: -64px;
	margin-right: -15px;
}

.dataTables_wrapper .dataTables_paginate {
	float: right;
	text-align: right;
	padding-top: 1.25em;
	position: absolute;
	margin: -19px;
	margin-left: 171px;
	font-size: 12px;
}

.dataTables_wrapper .dataTables_length, .dataTables_wrapper .dataTables_filter,
	.dataTables_wrapper .dataTables_info, .dataTables_wrapper .dataTables_processing,
	.dataTables_wrapper .dataTables_paginate {
	color: #333;
	font-size: 12px;
}

.pagination>li>a, .pagination>li>span {
	position: relative;
	float: left;
	padding: 7px 7.5px;
	line-height: 1.42857;
	text-decoration: none;
	color: #337ab7;
	background-color: #fff;
	border: 1px solid #ddd;
	margin-left: -1px;
	/* padding: 7px; */
}

.form-inline .form-control {
	display: inline-block;
	width: auto;
	vertical-align: middle;
	padding: 0px;
	height: 30px;
}

.dataTables_wrapper .dataTables_paginate {
	float: right;
	text-align: right;
	padding-top: 1.25em;
	position: relative;
	margin: -2px;
	margin-left: 0;
}

div.dataTables_paginate ul.pagination {
	margin: -20px 0 !important;
}

#Zones_MaingPageHint {
	position: absolute;
	margin-top: 8px;
	margin-left: 4px;
	font-size: 12px;
	font-weight: 600;
	color: #ae0404;
	font-family: inherit;
}
</style>
<body>
	<input type="hidden" name="UserID" id="UserID">
	<input type="hidden" name="AddNewPage" id="AddNewPage"
		value=<%out.println(htmlspecialchars(request.getParameter("AddNewPage")));%>>
	<input type="hidden" name="UpdatePage" id="UpdatePage"
		value=<%out.println(htmlspecialchars(request.getParameter("UpdatePage")));%>>

	<div class="alert alert-success" id="Zones_MessagesAdd"
		style="display: none">New zone has been added successfully</div>

	<div class="alert alert-success" id="Zones_MessagesUpdate"
		style="display: none">Zone information has been updated
		successfully</div>

	<div class="alert alert-success" id="Zones_MessagesDelete"
		style="display: none">Selected zone(s) has been deleted
		successfully</div>

	<div class="alert alert-danger" id="Zones_ErrorMessagesDelete"
		style="display: none">Failed to delete some of the selected
		zone(s)</div>

	<div class="alert alert-danger" id="Zones_ErrorMessagesAdd"
		style="display: none">Failed to add new zone</div>

	<div class="alert alert-danger" id="Zones_ErrorMessagesUpdate"
		style="display: none">Failed to update selected zone</div>

	<div class="row">
		<div class="col-md-12">
			<div class="portlet light bordered">
				<div class="portlet-title">
					<div class="caption">
						<i class=" icon-layers font-green"></i> <span
							class="caption-subject font-green sbold" id="Zones_Title">Zones</span>
					</div>
				</div>

				<div class="portlet-title">
					<div class="portlet-body col-lg-6" style="padding-left: 0px;">
						<table
							class="exampleDataTable  table-striped table-bordered table-hover  "
							width="100%" cellspacing="0" id="MasterTable">
							<thead>
								<tr>
									<th id="Zones_ID">ID</th>
									<th id="Zones_ZoneName">Zone Name</th>
									<th id="CreationDate">Created Date</th>
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
					<br />
					<div class="portlet-body MapZoneFrame col-lg-6"
						style="padding: 0px">
						<iframe id="MapZoneFrame" src="Interfaces/Zones/MapSection.jsp"
							style="display: block; width: 100%; min-height: 480px; height: 480px; margin-top: -16px;"
							frameborder="0"> </iframe>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>


<!-- Start Zone Table Grid when change select search  to other attribute -->
<div id="SearchZone"
	style="width: 35%; height: 70%; display: block; border-radius: 48px !important;">

</div>
<!-- End Zone Table Grid when change select search  to other attribute  -->
<script>
	var datatable;
	var lang;
	var listVal = $("#listCols").find('option:selected').attr('id');
	var space = " ";

	var BackendServiceIPAddress = GetIPAdress();

	$(document)
			.ready(
					function() {

						CheckSession();

						FillGrid();

						function FillGrid() {

							var btnAdd = "none";
							var btnUpdate = "none";
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
										console.log(ListofPrivileges);
									}
								}
							});

							lang = window.parent.$('#SelectedLanguage').val();
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
									"select" : {
										"rows" : {
											_ : " %d السجلات المحددة",
											1 : " %d السجل المحدد"
										}
									}
								};
							}

							var pageTitle = jQuery.i18n.prop('Zones_Title');

							var selected = [];
							datatable = $('.exampleDataTable')
									.DataTable(
											{
												"scrollX" : true,
												"bServerSide" : true,
												"bProcessing" : false,
												//"buttons" : true,
												"searching" : true,
												"select" : {
													style : 'single'
												},
												"language" : {
													"search" : '',
													"searchPlaceholder" : "Search..."
												},
												"aaSorting" : [ [ 0, 'desc' ] ],
												"ajax" : {
													type : 'post',
													cache : false,
													async : false,
													url : BackendServiceIPAddress
															+ '/api/zones/FillGrid?SearchList=-1'
												},
												error : function(xhr, error,
														code) {
													//AlertFunction(xhr);
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
												"buttons" : [ {
													extend : 'csv',
													charset : 'utf-8',
													bom : true,
													title : pageTitle,
													orientation : 'landscape',
													pageSize : 'LEGAL',
													exportOptions : {
														columns : [ 1, 2 ]
													}
												}, {
													extend : 'excel',
													title : pageTitle,
													orientation : 'landscape',
													pageSize : 'LEGAL',
													exportOptions : {
														columns : [ 1, 2 ]
													}
												}, {
													extend : 'pdf',
													title : pageTitle,
													orientation : 'landscape',
													pageSize : 'LEGAL',
													exportOptions : {
														columns : [ 1, 2 ]
													}
												}, {
													extend : 'print',
													title : pageTitle,
													orientation : 'landscape',
													pageSize : 'LEGAL',
													exportOptions : {
														columns : [ 1, 2 ]
													},
													text :jQuery.i18n
													.prop('print')
												} ],

												"dom" : '<"col-lg-12" B><"toolbar"><"top"f>rt<"bottom">pl<"col-lg-12" <"New-grid-filter">   <"clear"> >',

												"columns" : [
														{
															"data" : "id",
															"bSearchable" : true,
															"bSortable" : true,
															"visible" : false,
														},
														{
															"data" : "name",
															"bSearchable" : true,
															"bSortable" : true
														},
														{
															"data" : "creationDate",
															"bSearchable" : true,
															"bSortable" : true,
															"render" : function(
																	data) {
																// Assuming 'data' is in milliseconds, convert it to a Date object
																var date = new Date(
																		data);

																// Format the date as needed (e.g., 'MM/DD/YYYY HH:mm:ss')
																var formattedDate = date
																		.toLocaleString(); // Adjust this formatting

																return formattedDate;
															}
														} ],
												"language" : language

											});

							//append search filter to toolbar
							$("div.toolbar")
									.append(
											'<table><TR><TD><select class="form-control input-sm" size="1" name="listCols" id="listCols" style="height : 30px;">'
													+ '<option id="name" selected>' 
													+ jQuery.i18n.prop('Zones_ZoneName')
													+ '</option>'
													+ '</select></TD></TR></table>');

							if (lang == "ar_AR") {
								$('.dataTables_filter').css('float', 'left');
								$('.toolbar').css('float', 'left');
							}

							$(
									'<button type="button" class="btn blue btn-sm" id="SearchOtherAttribute" onClick="ZoneSearch();" title="'
											+ jQuery.i18n
													.prop('btnAdvancedSearch')
											+ '"><i class="fa fa-search"><i></button>')
									.appendTo('div.top');

							$('<b>&nbsp;</b>').appendTo('div.top');

							/* $("div.toolbar").append('<b>&nbsp;<br></b> '); */

							if (ListofPrivileges.toUpperCase().indexOf(
									(",Zones_Add,").toUpperCase()) !== -1) {

								$(
										'<button type="button" class="btn  green btn-sm" id="Add" title="'
												+ jQuery.i18n.prop('btnAdd')
												+ '"><i class="fa fa-plus"><i></button>')
										.appendTo('div.top');
								$('<b>&nbsp;</b>').appendTo('div.top');
							}
							if (ListofPrivileges.toUpperCase().indexOf(
									(",Zones_Update,").toUpperCase()) !== -1) {

								$(
										'<button type="button" class="btn blue btn-sm" id="Update" title="'
												+ jQuery.i18n.prop('btnUpdate')
												+ '"><i class="fa fa-edit"></i>  </button>&nbsp;')
										.appendTo('div.top');
								$('<b>&nbsp;</b>').appendTo('div.top');
							}

							if (ListofPrivileges.toUpperCase().indexOf(
									(",Zones_Delete,").toUpperCase()) !== -1) {

								$(
										'<button type="button" class="btn  red btn-sm" id="Delete" title="'
												+ jQuery.i18n.prop('btnDelete')
												+ '"><i class="fa fa-times"></i></button>&nbsp;')
										.appendTo('div.top');
								$('<b>&nbsp;</b>').appendTo('div.top');
							}
							$(
									'<button type="button" class="btn green btn-sm" id="ClearFilter" onClick = "$(\'#ClearFilter\').hide();ClearSearch();" title="'
											+ jQuery.i18n.prop('btnClearSearch')
											+ '" style="display:none;" >'
											+ jQuery.i18n.prop('btnClearSearch')
											+ '</button>&nbsp;').appendTo(
									'div.top');

							$("div.top").append(
									'<b>&nbsp;<br></b><span id="Zones_MaingPageHint" class="Translate">'
											+ jQuery.i18n.prop("Zones_MaingPageHint") + '</span>&nbsp; ');

							$('#listCols').change(
									function(e) {

										listVal = $("#listCols").find(
												'option:selected').attr('id');

										datatable.ajax.url(
												BackendServiceIPAddress
														+ '/api/zones').load();
									});

							listVal = $("#listCols").find('option:selected')
									.attr('id');

							$('#Delete')
									.click(
											function() {

												var stop = 0;
												var dataArr = [];
												var rows = $('tr.selected');
												var name = "";
												var rowData = datatable.rows(
														rows).data();
												$
														.each(
																$(rowData),
																function(key,
																		value) {

																	name = value["name"];
																	if (($
																			.trim(
																					name)
																			.toString()
																			.toLowerCase()) == "default") {
																		AlertFunction(jQuery.i18n
																				.prop('Zones_AlertDefualt'));
																		stop = 1;
																		return;
																	}
																	dataArr
																			.push(value["id"]);
																});

												//console.log(dataArr);
												
												if (stop == 1) {

													return;
												}
												if (datatable.rows('.selected')
														.data().length > 0) {

													$
															.confirm({
																title :  jQuery.i18n
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
																content :jQuery.i18n
																.prop('Zones_DeleteConfirmation'),
																confirm : function() {
																	$
																			.ajax({
																				type : 'DELETE',
																				url : BackendServiceIPAddress
																						+ '/api/zones/'
																						+ dataArr,
																				success : function(
																						data) {

																					if (data.statusCode === 200) {
																						$(
																								"#Zones_MessagesDelete")
																								.slideDown(
																										2000,
																										function() {
																											$(
																													"#Zones_MessagesDelete")
																													.slideUp(
																															2000);
																										})
																								.delay(
																										3000);
																						
																						datatable.ajax
																								.url(
																										BackendServiceIPAddress
																												+ '/api/zones/FillGrid?SearchList='
																												+ listVal)
																								.load();

																					} else if (data.statusCode === -7){
																						AlertFunction(jQuery.i18n.prop('ZonesProtection_AlertZoneInUse'));
																					}

																					else{
																						$(
																								"#errDivMessagesDelete")
																								.slideDown(
																										2000,
																										function() {
																											$(
																													"#errDivMessagesDelete")
																													.slideUp(
																															2000);
																										})
																								.delay(
																										3000);
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

							$('#Add').click(
									function() {

										loadpage2(
												'Interfaces/Zones/Add.jsp?lang='
														+ lang.trim()
														+ '&whichManagement=0',
												'ZonesManagement');

									});

							$('#Update')
									.click(
											function() {

												var dataArr = [];
												var rows = $('tr.selected');
												var rowData = datatable.rows(
														rows).data();
												$
														.each(
																$(rowData),
																function(key,
																		value) {
																	dataArr
																			.push(value["id"]);
																	dataArr
																			.push(value["name"]);
																});

												if (datatable.rows('.selected')
														.data().length == 1) {

													loadpage2(
															'Interfaces/Zones/Update.jsp?ID='
																	+ dataArr[0]
																	+ '&Name='
																	+ encodeURIComponent(dataArr[1])
																	+ '&lang='
																	+ lang
																			.trim(),
															'ZonesManagement');
												} else {
													AlertFunction(jQuery.i18n
															.prop('SelectRecordtoUpdate'));
												}

											});
							//enable select
							$('.exampleDataTable tbody')
									.on(
											'click',
											'tr',
											function() {

												$('.MapZoneFrame').show();

												var id = this.id;
												var index = $.inArray(id,
														selected);

												var rows = $('tr.selected');
												var rowData = datatable.rows(
														rows).data();

												var name;
												var location;

												$
														.each(
																$(rowData),
																function(key,
																		value) {
																	name = value["name"];
																	location = value["location"];
																});

												var LocationObj = JSON
														.parse(location);

												var coordinatesObj = LocationObj.location.coordinates;
												var typeObj = LocationObj.location.type;

												if (!(typeof rowData[0] === "undefined")) {

													document
															.getElementById('MapZoneFrame').contentWindow
															.DrawShape(
																	coordinatesObj,
																	typeObj,
																	name);

												}

												$('.MapZoneFrame').show();
											});

						}

						//Call function when press on pagination control 
						$('#MasterTable')
								.on(
										'page.dt , search.dt , sort.dt',
										function() {
											try {
												document
														.getElementById('MapZoneFrame').contentWindow
														.onDelete();
											} catch (e) {
												// 
											}

										});

						PopupMsg('AddNewPage', 'Zones_MessagesAdd', '1',
								'Zones_ErrorMessagesAdd', '-1');

						PopupMsg('UpdatePage', 'Zones_MessagesUpdate', '1',
								'Zones_ErrorMessagesUpdate', '-1');

					})

	if (!$.fn.DataTable.isDataTable('#exampleDataTable')) {
		setTimeout(ResortTable, 1)
	}

	function ResortTable() {
		$('.exampleDataTable').DataTable().order([ 0, 'desc' ]).draw();
	}

	function ClosePopup() {

		Custombox.modal.close();
	}

	function ZoneSearch() {
		$("#SearchZone").empty().load('Interfaces/Zones/Search.jsp');
		var modal = new Custombox.modal({
			content : {
				effect : 'fadein',
				target : '#SearchZone',
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

	function ClearSearch() {

		datatable.ajax.url(BackendServiceIPAddress + '/api/zones').load();

	}

	if (!$.fn.DataTable.isDataTable('#exampleDataTable')) {
		setTimeout(ResortTable, 300)
	}

	function ResortTable() {
		$('#exampleDataTable').DataTable().order([ 0, 'desc' ]).draw();
	}
</script>
</head>
</html>