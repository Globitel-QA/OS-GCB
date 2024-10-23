

<!--  <script src="theme/assets/pages/scripts/d3.v3.min.js"
	type="text/javascript"></script>
	<script src="theme/assets/pages/scripts/liquidFillGauge.js"
	type="text/javascript"></script> -->

<script src="theme/assets/global/scripts/app.min.js"
	type="text/javascript"></script>

<script src="theme/assets/global/plugins/amcharts/amcharts/gauge.js"></script>
<script src="theme/assets/global/plugins/amcharts/amcharts/none.js"></script>

<script
	src="theme/assets/global/plugins/amcharts/amcharts/plugins/export/export.min.js"></script>
<script
	src="theme/assets/global/plugins/amcharts/amcharts/plugins/export/export.js"></script>
<link rel="stylesheet"
	href="theme/assets/global/plugins/amcharts/amcharts/plugins/export/export.css"
	type="text/css" media="all" />
  <!-- for each add dashboard updae below the css -->
<link rel="stylesheet" href="theme/assets/pages/css/dashboard.css"	type="text/css" media="all" />

<!-- HTML --> 

<label id="lblErrors" style="color: red"></label>
<div class="row" style="margin-top: -25px;">
	<div class="col-md-12 ">
		<div class="portlet light bordered" style="padding-top: 0px">
			<div class="portlet-body form">
				<div class="row">
					<div class="form-group" style="margin-bottom: 0px;">
						<div class="mt-checkbox-list-inline">
							<br> &nbsp;&nbsp;&nbsp;&nbsp;


						</div>
					</div>
				</div>
				<!-- <div class="row">
					<div class="col-lg-12">
						<div class="portlet box red-sunglo" id="PerformanceDashboard">
							<div class="portlet-title">
								<div class="caption" Style="width: 100%">
									<h>Hardware Performance Dashboard <span class='caption-sub-title'>
										( During Last Hour ) </span></h>
									<i class="fa fa-refresh" aria-hidden="true" id="PerformanceRef"
										onClick="Load2(1)"></i>
								</div>
							</div>
							<div class="portlet-body" id="portlet-body-part4">

								<form class="form">

									<div class="row">
										<div class="row">
											<div class="form-group">
												<div class="col-md-6 ">
													<div class="widget-thumb " id="thermometer1"
														style="float: left; border: 1px solid #e7ecf1;"></div>

													<div class="caption">
														<span>&nbsp &nbsp</span>
													</div>

												</div>
												<div class="col-md-6 ">
													<div class="widget-thumb" id="thermometer2"
														style="float: left; border: 1px solid #e7ecf1;"></div>

													<div class="caption">
														<span>&nbsp &nbsp</span>
													</div>
												</div>
											</div>
										</div>
										<br>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div> -->
				
					<div class="row">
					<div class="col-lg-12">
						<div class="portlet box green-meadow" id="PerformanceDashboard">
							<div class="portlet-title">
								<div class="caption" Style = "width:100%">
									<span class="Translate" id="Dashboard_HardwarePerformanceChart" >Hardware Performance Chart</span>
									<span class='caption-sub-title Dashboard_DuringLastHour'> ( During Last Hour ) </span>
								
									<i class="fa fa-refresh pull-right" aria-hidden="true" 
									id="PerformanceRef" onClick = "Load2(1)"></i>
								</div>
							</div>
							<div class="portlet-body" id="portlet-body-part4">

								<form class="form">
									<div class="row" id = "HardwarePerofmanceBox">
									<br>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Chart code -->
	<script>
 
		$(".chb").change(function() {
			var checked = $(this).is(':checked');
			$(".chb").prop('checked', false);
			if (checked) {
				$(this).prop('checked', true);
			}
		});

		Load();
		function Load() {
			FillHWPerformance();
			$("#Dashboard_HardwarePerformanceChart").text(jQuery.i18n.prop('Dashboard_HardwarePerformanceChart'));
			$(".Dashboard_DuringLastHour").text(jQuery.i18n.prop('Dashboard_DuringLastHour'));
		}

		function Load2(DashboardNum) {

			if (DashboardNum == 1) {
				$(document).ajaxStart(function() {
					$("#PerformanceRef").addClass("fa-spin");
				});

				$(document).ajaxStop(function() {
					$("#PerformanceRef").removeClass("fa-spin");
				});

				FillHWPerformance();
			}
		}

		function FillHWPerformance() {		
			$('#HardwarePerofmanceBox').empty();
			$.ajax({
						type : 'post',
						url : 'DashboardChartControlPath_GLG',
						cache : false,
						async : true,
						data : 'MethodName=HWPerformance',
						success : function(data) {
							json = JSON.stringify(eval(data)); //convert to json string
							DataJson = $.parseJSON(json); //convert to javascript array 
							//console.log(DataJson)  
							Div='<div class="form-group">'; 
							Div1="";
							if(DataJson.length >0 ){
								
							
							for ( var key in DataJson) {			
								 
								Div1 = '<div class="col-md-3" style = "padding: 10px;"><div class="widget-thumb card-1 pull-left" id="PerformanceBox"'
									+'   ><div class="headerError text-left" style="width:100%;border-bottom: 3px solid #34bfa3 !important;padding: 5px;padding-left: 0px;color:#a7a2a2">'
									+DataJson[key].ServerName+'</div><div style="padding-bottom: 3px;padding-top: 10px;" class="text-left">'+jQuery.i18n.prop('Dashboard_CPUUsage')+' '+ DataJson[key].CPUUsage + '%</div><div class="text-left">'+jQuery.i18n.prop('Dashboard_CPUUsage')+' '+DataJson[key].MemoryUsage+'%</div></div><div class="caption"><span></span></div>'
									+'</div>';							
							    
								//console.log(DataJson[key].ServerName);
								Div= Div1 + '</div>';							
								$('#HardwarePerofmanceBox').prepend(Div);
							
							}			
						}else{
							NotFoundData2('HardwarePerofmanceBox', jQuery.i18n.prop('Dashboard_HardwarePerformanceChart'));
							
						}			
						}						 
					});

		}

		function NotFoundData(ElementName, header) {

			$("#" + ElementName).html("<div class ='center-content' id = '"+ElementName+"' ><div class = 'headerError'>"
									+ header
									+ "<div class='bodyError'>"+jQuery.i18n.prop('Dashboard_NoDataFound')+"</div></div></div>");

		}
		
		function NotFoundData2(ElementName, header) {

			$("#" + ElementName).html("<div class ='center-content' id = '"+ElementName+"' style='margin: 10%;''><div class = 'headerError'>"
									+ header
									+ "<div class='bodyError'>"+jQuery.i18n.prop('Dashboard_NoDataFound')+"</div></div></div>");

		}

		function LoaderSpinner(ElementName) {

			$("#" + ElementName).html("<div class ='center-content' id = '"+ElementName+"' ><div class = 'headerError'>"
									+ "<img src='theme/assets/global/img/lazy.gif' /><br></div></div>");

		}

		sessionStorage.setItem('PerformanceDashboard', '0');
		window.addEventListener("scroll", function() {
			addClassOnScroll('PerformanceDashboard', 1, 400);
		}, false);

		function addClassOnScroll(ID, FunctionName, TopSpace) {

			var count = sessionStorage.getItem(ID);

			var element = document.getElementById(ID);
			if (element != null && count == '0') {

				if (!isElementInViewport(element, TopSpace)) {
					sessionStorage.setItem(ID, '1');

					if (FunctionName == 1) {
						FillHWPerformance();
					}

				}
			}
		}

		function isElementInViewport(el, TopSpace) {
			var rect = el.getBoundingClientRect();
			if (TopSpace == 113) {
				//console.log(TopSpace+"aaaaaaaaaaaaaaaaa"+rect.top);
			}
			//console.log("TopSpace"+TopSpace);
			return (rect.top >= TopSpace);
		}
	</script>