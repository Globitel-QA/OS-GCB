<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="../../../DataTable.html"%>
<%@ include file="../../../library/Common/Common.jsp"%>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
.borderTable {
	border-left: 1px solid #e7ecf1 !important;
	border-right: 1px solid #e7ecf1 !important;
	border-bottom: 1px solid #e7ecf1 !important;
}

.portlet.light .dataTables_wrapper .dt-buttons {
	margin-top: -62px;
	margin-right: -13px;
}

.dataTables_wrapper .dataTables_info {
	clear: initial !important;
	float: left !important;
	padding-top: 0.75em !important;
}

.dataTables_wrapper .dataTables_length {
	float: left;
	padding-top: 0.4em !important;
}

.nav-tabs .nav-item.show .nav-item, .nav-tabs .nav-item.active {
	color: #495057 !important;
	background-color: #fff !important;
	background: 0 0 !important;
	border-top: 4px solid #36c6d3 !important;
	border-color: #36c6d3 #dee2e6 #fff #dee2e6 !important;
}

.nav-tabs .nav-item.active:hover {
	background: 0 0;
	border-top: 4px solid #9fe4ea !important;
	border-color: #9fe4ea #dee2e6 #fff #dee2e6 !important;
	margin-bottom: -1px;
}

.nav-tabs .nav-item:hover {
	background: 0 0;
	border-top: 4px solid #9fe4ea !important;
	border-color: #9fe4ea #dee2e6 #fff #dee2e6 !important;
	margin-bottom: -2px;
}

.nav>li>a:hover {
	text-decoration: none;
	background-color: #eee !important;
}

.tabbable-custom>.nav-tabs>li {
	margin-right: 0px;
	border-top: 2px solid transparent;
}
</style>

 <link rel="stylesheet" type="text/css" href="CSS/datatabledetailed.css">
 
<body>
	<input type="hidden" name="UserID" id="UserID">
	<input type="hidden" name="AddNewPage" id="AddNewPage"
		value=<%out.println(htmlspecialchars(request.getParameter("AddNewPage")));%>>
	<input type="hidden" name="UpdatePage" id="UpdatePage"
		value=<%out.println(htmlspecialchars(request.getParameter("UpdatePage")));%>>


	<div class="alert alert-success" id="Campaigns_MessagesAdd"
		style="display: none">New campaign has been added
		successfully</div>

	<div class="alert alert-success" id="Campaigns_MessagesUpdate"
		style="display: none">Campaign information has been
		updated successfully</div>

	<div class="alert alert-success" id="Campaigns_MessagesCancel"
		style="display: none">Selected campaign has been canceled
		successfully</div>


	<div class="alert alert-danger" id="Campaigns_ErrorMessagesCancel"
		style="display: none">Failed to cancel the selected
		campaign</div>

	<div class="alert alert-danger" id="Campaigns_ErrorMessagesAdd"
		style="display: none">Failed to add new campaign</div>


	<div class="alert alert-danger" id="Campaigns_ErrorMessagesUpdate"
		style="display: none">Failed to update selected campaign</div>



	<div class="row">
		<div class="col-md-12">
			<div class="portlet light borderTable">
			<div class="portlet-title">
			<div class="caption">
						<i class=" icon-layers font-green"></i> <span
							class="caption-subject font-green sbold" id="Campaigns_Title">Campaigns</span>
					</div>
				</div>
				<div class="portlet-title">
					<div class="portlet-body">
						<table
							class="TableinputParameter  table-striped table-bordered table-hover  "
							width="100%" cellspacing="0" id="TableCampaigns">
							<thead>
								<tr>
									<th id="Campaigns_ID">ID</th> 
									<th id="Campaigns_CampaignName">Name</th>
									<th id="Campaigns_CodingScheme">Coding Scheme</th>
									<th id="Campaigns_RepetitionPeriod">Repetition Period</th>
									<th id="Campaigns_BroadcastNumber">Broadcast Number</th>
									<th id="Campaigns_StartDateTime">Start Date Time</th>
									<th id="Zones_ZoneName">Zone Name</th>
									<th id="Campaigns_MessageText">Message Text</th>
									<th id="Campaigns_SenderID">SenderID</th>
									<th id="Campaigns_LanguageID">LanguageID</th>
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
	let listValOutputParameter = "id";
	var lang;
	var BackendServiceIPAddress = GetIPAdress();
	$(document).ready(function() {
		CheckSession();
		FillGrid();
		listValOutputParameter = $("#listColsCampaigns").find('option:selected').attr('id');

			function FillGrid() {
				var btnAdd = "none";
				var btnUpdate = "none";
				var btnCancel = "none";

				
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
				

					    var pageTitle = jQuery.i18n.prop('Campaigns_Title');
					    var selected = [];
						var datatable = $('#TableCampaigns').DataTable(
											{
							"scrollX" : true,
							"bServerSide" : true,
							"bProcessing" : false,

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
									enctype: 'multipart/form-data',
									cache : false,
									async : false,
									url : BackendServiceIPAddress + '/api/campaign/FillGrid?SearchList=-1'
											},
									  "rowCallback" : function(row,data) {
										if ($.inArray(
												data.DT_RowId,selected) !== -1)
										           {$(row).addClass('selected');
													}
												},

												"buttons" : [ {
													extend : 'csv',
													title : pageTitle,
													orientation : 'landscape',
													pageSize : 'LEGAL',
													exportOptions : {
														columns : [ 1, 2, 3 , 4 , 5 , 6 , 7 ]
													}
												}, {
													extend : 'excel',
													title : pageTitle,
													orientation : 'landscape',
													pageSize : 'LEGAL',
													exportOptions : {
														columns : [ 1, 2, 3 , 4 , 5 , 6 , 7 ]
													}
												}, {
													extend : 'pdf',
													title : pageTitle,
													orientation : 'landscape',
													pageSize : 'LEGAL',
													exportOptions : {
														columns : [ 1, 2, 3 , 4 , 5 , 6 , 7 ]
													}
												}, {
													extend : 'print',
													title : pageTitle,
													orientation : 'landscape',
													pageSize : 'LEGAL',
													exportOptions : {
														columns : [ 1, 2, 3 , 4 , 5 , 6 , 7 ]
													},
													text : jQuery.i18n
													.prop('print')
												} ],

												"dom" : '<"col-lg-12" B><"toolbar toolbarPayment"><"top topPayment"f>rt<"bottom">pli<"col-lg-12" <"New-grid-filter">   <"clear"> >',
												"columns" : [ {
													"data" : "id",
													"bSearchable" : true,
													"bSortable" : true,
													"visible" : false,
												} , {
													"data" : "name",
													"bSearchable" : true,
													"bSortable" : true,
													"visible" : true,
													"render": function ( data, type, row  ) {
														 
														 
											            return  '<span class="details-control">&nbsp;</span>'+data ;
													      
													}, 
												} , {
													"data" : "codingScheme",
													"bSearchable" : true,
													"bSortable" : true,
													"visible" : true,
												} , {
												    "data": "repetitionPeriod",
												    "bSearchable": true,
												    "bSortable": true,
												    "visible": true,
												    "render": function (data, type, row) {
												        return data + " (s)";
												    }
												}
												, {
													"data" : "broadCastNumber",
													"bSearchable" : true,
													"bSortable" : true,
													"visible" : true,
												} , {
													"data" : "scheduleDate",
													"bSearchable" : true,
													"bSortable" : true,
													"visible" : true,
												}, {
													"data" : "zone.name",
													"bSearchable" : true,
													"bSortable" : true,
													"visible" : true,
												}, {
													"data" : "messageContent",
													"bSearchable" : true,
													"bSortable" : true,
													"visible" : true,
												}, {
													"data" : "senderID",
													"bSearchable" : true,
													"bSortable" : true,
													"visible" : false,
												}, {
													"data" : "languageID",
													"bSearchable" : true,
													"bSortable" : true,
													"visible" : false,
												}
												
												],
												"language" : language

											});

							//append search filter to toolbar
							$("div.toolbar").append('<table><TR><TD><select class="form-control input-sm" size="1" name="listColsCampaigns" id="listColsCampaigns" style="height : 30px;">'
													+ '<option id="name" selected>'+jQuery.i18n.prop('Campaigns_Name')+'</option>'
													+ '<option id="codingScheme" >'+jQuery.i18n.prop('Campaigns_CodingScheme')+'</option>'
													+ '<option id="repetitionPeriod" >'+jQuery.i18n.prop('Campaigns_RepetitionPeriod')+'</option>'
													+ '<option id="broadCastNumber" >'+jQuery.i18n.prop('Campaigns_BroadcastNumber')+'</option>'
													+ '<option id="zone.name" >'+jQuery.i18n.prop('Zones_ZoneName')+'</option>'
													+ '<option id="messageContent" >'+jQuery.i18n.prop('Campaigns_MessageText')+'</option>'
													+'</select></TD></TR></table>');
							 

							//append buttons
							$("div.toolbar").append('<b>&nbsp;<br></b> ');
							if (ListofPrivileges.toUpperCase()
									.indexOf((",Campaigns_Add,").toUpperCase()) !== -1) {

								$(
										'<button type="button" class="btn  green btn-sm" id="Add" title="'
												+ jQuery.i18n.prop('btnAdd')
												+ '"><i class="fa fa-plus"><i></button>')
										.appendTo('div.top');
								$('<b>&nbsp;</b>').appendTo('div.top');
							}
							if (ListofPrivileges.toUpperCase().indexOf(
									(",Campaigns_Update,").toUpperCase()) !== -1) {
								$(
										'<button type="button" class="btn blue btn-sm" id="Update" title="'
												+ jQuery.i18n.prop('btnUpdate')
												+ '"><i class="fa fa-edit"></i>  </button>&nbsp;')
										.appendTo('div.top');
								$('<b>&nbsp;</b>').appendTo('div.top');
							}
							if (ListofPrivileges.toUpperCase().indexOf(
									(",Campaigns_Cancel,").toUpperCase()) !== -1) {

								$('<button type="button" class="btn red btn-sm" id="Cancel" title="' +
									    jQuery.i18n.prop('btnCancel') +
									    '"><i class="fa fa-times"></i></button>&nbsp;')
									    .appendTo('div.top');


							}
							
							let listValCampaignsSelected = $("#listColsCampaigns").find(
									'option:selected').attr('ID');
							
							datatable.ajax.url(
									BackendServiceIPAddress +'/api/campaign/FillGrid?SearchList='
									+ listValCampaignsSelected).load();
							
							$('#listColsCampaigns').change(function(e) {
								 listValCampaignsSelected = $("#listColsCampaigns").find(
								'option:selected').attr('id');

								
								datatable.ajax.url(
										BackendServiceIPAddress +'/api/campaign/FillGrid?SearchList='
										+ listValCampaignsSelected).load();
									});

							$('#Cancel').click(function() {
							    var IsProtected = 0;
							    var dataArr = [];
							    var rows = $('tr.selected');
							    var rowData = datatable.rows(rows).data();
								let zoneCoordinates = null;

								$.ajax({
									type: 'GET',
									url: BackendServiceIPAddress + '/api/zones/' + rowData[0].zoneID,
									cache: false,
									async: false,
									success: function(data) {
										console.log("Received data:", data); // Check the actual content of 'data'

										try {
											var locationData;

											if (data.result && data.result.location) {
												locationData = JSON.parse(data.result.location);
												Coordinates = locationData.location.coordinates;
												zoneCoordinates = JSON.stringify(Coordinates);
												console.log(zoneCoordinates)
												$("#txtName").val(data.result.name);
											} else {
												console.error("Location data is missing or invalid.");
												// Handle missing or invalid location data
											}
										} catch (error) {
											console.error("Error in processing data:", error);
											// Handle the error accordingly
										}
									},
									error: function(xhr, status, error) {
										console.error("Error in AJAX request:", error);
										// Handle the AJAX error accordingly
									}
								});

							    $.each($(rowData), function(key, value) {
							        dataArr.push(value["id"]);
							        dataArr.push(value["name"]);
							    });

							    if (datatable.rows('.selected').data().length > 0) {
							        $.confirm({
							            title:  jQuery.i18n
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
							            content: jQuery.i18n
										.prop('Campaigns_CancelConfirmation'),
							            confirm: function() {
							                $.ajax({
							                    type: 'PUT',
							                    url: BackendServiceIPAddress + "/api/campaign/cancel/" + dataArr[0] + "/" + encodeURIComponent(dataArr[1]) ,
												data : zoneCoordinates,
												contentType: "application/json",
												success: function(data) {
							                    	
							                        if (CheckResponse(data)) {
							                        	PopupMsgWithoutValue("Campaigns_MessagesCancel");
							                            datatable.ajax.url(BackendServiceIPAddress + '/api/campaign/FillGrid?SearchList=' + listValCampaignsSelected  ).load();
							                        } else {
							                        	PopupMsgWithoutValue("Campaigns_ErrorMessagesCancel");
							                        }
							                    },
							                    error: function(xhr) {
							                        var response = JSON.parse(xhr.responseText);
							                        if (response.statusCode === -17) {
							                            $("#Campaigns_ErrorMessagesCancel").slideDown(2000, function() {
							                                $("#Campaigns_ErrorMessagesCancel").slideUp(2000);
							                            }).delay(3000);
							                        }else if(response.statusCode === -20){
														AlertFunction(response.statusDescription);
													} else {
							                            AlertFunction("An error occurred: " + xhr.statusText);
							                        }
							                    }
							                });
							            },
							            cancel: function() {
							            }
							        });
							    } else {
							    	AlertFunction(jQuery.i18n
											.prop('SelectRecordtoCancel'));
							    }
							});

							$('#Update').click(function() {
												var IsProtected = 0;
												var dataArr = [];
												var rows = $('tr.selected');
												var rowData = datatable.rows(
														rows).data();
												 $.each($(rowData), function(key, value) {
												        dataArr.push(value["id"]);
												        dataArr.push(value["name"]);
												    });
												if (datatable.rows('.selected').data().length == 1) {

													loadpage('Interfaces/Campaigns/Update.jsp?ID='+dataArr[0]+ '&Name='
															+ encodeURIComponent(dataArr[1]),'SystemSettings');

												} else {
													AlertFunction(jQuery.i18n
															.prop('SelectRecordtoUpdate'));
												}

											});
							$('#Add').click(function() {
										loadpage(
												'Interfaces/Campaigns/Add.jsp',
														'SystemSettings');
								});
							CheckMsg();
							
							
							$('#TableCampaigns tbody').on('click','td > span.details-control,i.details-control',function() {

								var tr = $(this).closest('tr');
								var row = datatable.row(tr);

								if (row.child.isShown()) {
									// This row is already open - close it
									row.child.hide();
									tr.removeClass('shown');
								} else {
									// Open this row
									row.child(DetailedTable(row.data())).show();
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
			
			function CheckMsg() {
				let MessageDialog = $.trim($("#CheckMsg").val());
				
				if (MessageDialog.trim() === 'false') {}
				
				else {
				if (document.getElementById('AddNewPage').value == "1") {
					$("#Campaigns_MessagesAdd").slideDown(2000,
							function() {
								$("#Campaigns_MessagesAdd").slideUp(2000);
							}).delay(3000);

				} else if (document.getElementById('AddNewPage').value == "-1") {
					$("#Campaigns_ErrorMessagesAdd").slideDown(
							2000,
							function() {
								$("#Campaigns_ErrorMessagesAdd").slideUp(
										2000);
							}).delay(3000);
				}
				if (document.getElementById('UpdatePage').value == "1") {
					$("#Campaigns_MessagesUpdate").slideDown(
							2000,
							function() {
								$("#Campaigns_MessagesUpdate").slideUp(
										2000);
							}).delay(3000);

				} else if (document.getElementById('UpdatePage').value == "-1") {
					$("#Campaigns_ErrorMessagesUpdate").slideDown(
							2000,
							function() {
								$("#Campaigns_ErrorMessagesUpdate").slideUp(
										2000);
							}).delay(3000);
				}
				}
			}
						

			})
			
			
			if ($.fn.DataTable.isDataTable('#TableCampaigns')) {
				setTimeout(ResortTable, 700)
			}
			function ResortTable() {  
				$('#TableCampaigns').DataTable() .order([ 0, 'desc' ]).draw();
			}
					
			function DetailedTable(Data) {
			    let tableHTML = '<div style="overflow-y:auto; max-height:250px;">'; // Add scroll to the sub table
			    tableHTML += '<table class="exampleDataTable table-striped table-bordered table-hover" width="100%" cellspacing="0" style="font-size:13px" id="DetailedTable">';
			    let hasData = false;

			    tableHTML += '<thead>';
			    tableHTML += '<tr><th>Action Date</th><th>Operator Name</th><th>Network(s)</th><th>Message Type</th><th>Message Number</th><th>Message ID</th></tr>';
			    tableHTML += '</thead>';

			    tableHTML += '<tbody>';

			    if (Data.hasOwnProperty('campaignOperators') && Array.isArray(Data.campaignOperators) && Data.campaignOperators.length > 0) {
			        Data.campaignOperators.forEach(operator => {
			            hasData = true;
			            tableHTML += '<tr>';
			            tableHTML += '<td>' + formatDate(operator.actionDate) + '</td>';
			            tableHTML += '<td>' + operator.operator.operatorName + '</td>';
			            tableHTML += '<td>' + operator.network + '</td>';

			            let messageType = operator.requestMessageType || 'N/A';
			            tableHTML += '<td>' + messageType + '</td>';
			            tableHTML += '<td>' + operator.messageNumber + '</td>';
			            tableHTML += '<td>' + operator.messageID + '</td>';
			            tableHTML += '</tr>';
			        });
			    }

			    tableHTML += '</tbody>';

			    if (!hasData) {
			        tableHTML += '<tfoot><tr><td colspan="6">No data for this record</td></tr></tfoot>';
			    }

			    tableHTML += '</table>';
			    tableHTML += '</div>';

			    return tableHTML;
			}


			function formatDate(epochTime) {
			    const date = new Date(epochTime);
			    return date.toLocaleString('en-US', { year: 'numeric', month: '2-digit', day: '2-digit', hour: '2-digit', minute: '2-digit', second: '2-digit', hour12: true });
			}
</script>
</head>
</html>