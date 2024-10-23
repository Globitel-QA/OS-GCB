<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="../../DataTable.html"%>
<title>Insert title here</title>
</head>
<body>
	<div class="row">
		<div class="col-md-12 ">
			<div class="portlet light bordered">
				<div class="portlet-title">
					<div class="caption">
						<i class="icon-social-dribbble font-green"></i> <span
							class="caption-subject font-green bold " id="ActionLogReport_Title">Action Log Report</span>
					</div>
				</div>
				<div class="portlet-body form">
					<div class="row">

						<div class="col-lg-12">
							<form role="form">
								<label id="lblErrors" style="color: red"></label>

								<!-- <div class="row">
									<div class="form-group">
										<label class="control-label col-md-1">Date Ranges</label>
										<div class="col-md-11">
											<div class="input-group" id="defaultrange">
												<input type="text" class="form-control" id="Datetxt" /> <span
													class="input-group-btn">
													<button class="btn default date-range-toggle" type="button">
														<i class="fa fa-calendar"></i>
													</button>
												</span>
											</div>
										</div>
									</div>

								</div> -->

								<div class="form-group" id="AccountHolderDiv"
									style="display: block">
									<label id="AccountsHolders_AccountHolder">Account
										Holder</label> <select style="width: 100%"
										class="form-control input-sm" id="listAccountHolder">
									</select>
								</div>


								<div class="form-group">
									<label id="Date_DateRanges">Date Ranges</label>
									<div class="input-group" id="defaultrange">
										<input type="text" class="form-control" id="Datetxt"
											readonly="readonly" /> <span class="input-group-btn">
											<button class="btn default date-range-toggle" type="button">
												<i class="fa fa-calendar"></i>
											</button>
										</span>
									</div>
								</div>

								<!-- 	<br> <br> <br> <br>
								<div id="wait"
									<img src="theme/assets/layouts/layout/img/load_green.gif"
										width="70" height="70" /><br> <font color="gray">
										&nbsp Loading ... </font>
								</div> -->
								<br> <br>
								<div class="span4">
									<div class='pull-right'>
										<button class="btn btn-success " id="btnViewReport"
											onclick="IsFormComplete();return false;">View Report</button>
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
		var AccountHolderType = 0;
		
		$(document).ajaxStart(function() {

			$("#Load").show();
		});

		$(document).ajaxStop(function() {
			$("#Load").hide();
		});

		$(function() {

			var lang = window.parent.$('#SelectedLanguage').val();
			
			var start = moment().subtract(29, 'days');
			var end = moment();

			function cb(start, end) {
				$('#Datetxt').val(start.format('MM/DD/YYYY HH:mm') + ' - ' + end.format('MM/DD/YYYY HH:mm'));
			}
			
			var CalenderRanges = {};
			if (lang == "ar_AR") {

				CalenderRanges = {
						'اليوم' : [ moment().startOf('day'), moment().endOf('day') ],
						'أمس' : [ moment().subtract(1, 'days').startOf('day'), moment().subtract(1, 'days').endOf('day') ],
						'آخر سبع أيام' : [ moment().subtract(6, 'days').startOf('day'), moment() ],
						'آخر ثلاثين يوما' : [ moment().subtract(29, 'days').startOf('day'), moment() ],
						'الشهر الحالي' : [ moment().startOf('month'), moment().endOf('month') ],
						'آخر شهر' : [ moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month') ]
					}
				
			} else {
				
				CalenderRanges = {
					'Today' : [ moment().startOf('day'), moment().endOf('day') ],
					'Yesterday' : [ moment().subtract(1, 'days').startOf('day'), moment().subtract(1, 'days').endOf('day') ],
					'Last 7 Days' : [ moment().subtract(6, 'days').startOf('day'), moment() ],
					'Last 30 Days' : [ moment().subtract(29, 'days').startOf('day'), moment() ],
					'This Month' : [ moment().startOf('month'), moment().endOf('month') ],
					'Last Month' : [ moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month') ]
				}				
			}
			
			
			$('#defaultrange').daterangepicker(
					{
						startDate : start,
						endDate : end,
						"timePicker" : true,
						locale : {
							format : 'MM/DD/YYYY HH:mm'
						},  ranges : CalenderRanges

					}, cb);

		cb(start, end);
	
		
		$('#defaultrange').on('showCalendar.daterangepicker', function(ev, picker) {
			
			if (lang == "ar_AR") {
			$('.daterangepicker.dropdown-menu.opensright.show-calendar  > .ranges > ul > li:nth-child(7)').text('نطاق مخصص');
			}
			
			$(".applyBtn").text(jQuery.i18n.prop('btnApply')); 
		    $(".cancelBtn").text(jQuery.i18n.prop('btnCancel')); 
		});
		
		});	
		
		Load();
		
		function Load() {
			CheckSession();

			$.ajax({
				type : 'post',
				url : 'UsersControlPath_GCB',
				data : 'MethodName=GetAccountHolderType',
				cache : false,
				async : false,
				success : function(data) {
					if (data.trim() == 0) {
						AccountHolderType = data.trim();
						FillSingleSelectTwoValue('AccountHolderControlPath_GCB','MethodName=GetAll' , false ,'listAccountHolder' , 'AccountsHolders_SelectAccountHolder' , '-1' , 'ActtionLogReport_AllAccountsHolders' , '-2' );	
						$('#AccountHolderDiv').show();
					} else {
						AccountHolderType = data.trim();
						$('#AccountHolderDiv').hide();
					}
				}
			});

		}
 

		function IsFormComplete() {

			if (isSelectFiled("listAccountHolder", "AccountsHolders_AlertSelectAccountHolder" , -1)) {
				
			} else if ($.trim(document.getElementById('Datetxt').value) == "") {
				
				var div = $("#Datetxt").parent("div.input-group date form_datetime");
				div.addClass("has-error");
				AlertFunction("You must select the date range.");
				
			} else {
				SaveChanges();
			}			 
		}

		function SaveChanges() {
			defaultrange = document.getElementById('Datetxt').value;
			var dates = defaultrange.split("-");

			var FromDate = dates[0].trim() + ":00";
			var ToDate = dates[1].trim() + ":59";
			//$("#wait").css("display", "block");

			var AccountHolderIDFinal;
			if (AccountHolderType == "0") {
				AccountHolderIDFinal = $.trim($('#listAccountHolder').val());
			} else {
				
				$.ajax({
					type : 'post',
					url : 'UsersControlPath_GCB',
					data : 'MethodName=GetAccountHolderID',
					cache : false,
					async : false,
					success : function(data) {
						AccountHolderIDFinal = data.trim();
						
				}});
				
			}

			$.ajax({
				type : 'post',
				url : 'ReportsControlPath_GCB',
				data : 'ReportName=ActionLog&FromDate=' + FromDate + '&ToDate='
						+ ToDate + '&Function=Generate' + '&Account_HolderID='
						+ AccountHolderIDFinal + '&Language=' + lang ,
				cache : false,
				async : true,
				success : function(data) {
					if (data != 0) {
					}
					//$("#wait").css("display", "none");
					window.open("CrystalReportViewer.jsp", "_blank");
				}
			});
		}
	</script>