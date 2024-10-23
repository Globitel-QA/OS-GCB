<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="../../../library/Common/Common.jsp"%>
<%
	if (htmlspecialchars(request.getParameter("lang")).equals("en")) {
%>

<html>

<%
	} else {
%>

<html lang="ar" dir="rtl">

<%
	}
%>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>jQuery QueryBuilder Example</title>

<!-- font-awesome CSS  -->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"
	rel="stylesheet" type="text/css" />
<link
	href="../../../theme/assets/global/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="../../../theme/assets/global/plugins/simple-line-icons/simple-line-icons.min.css"
	rel="stylesheet" type="text/css" />




<%
	if (htmlspecialchars(request.getParameter("lang")).equals("en")) {
%>

<!-- bootstrap 3  -->
<link
	href="../../../theme/assets/global/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />

<link
	href="../../../theme/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css"
	rel="stylesheet" type="text/css" />

<%
	} else {
%>

<!-- bootstrap 3  -->
<link
	href="../../../theme-rtl/assets/global/plugins/bootstrap/css/bootstrap-rtl.min.css"
	rel="stylesheet" type="text/css" />

<link
	href="../../../theme-rtl/assets/global/plugins/bootstrap-switch/css/bootstrap-switch-rtl.min.css"
	rel="stylesheet" type="text/css" />

<%
	}
%>
 
<!-- Select 4.0.12  CSS  -->
<link href="../../../theme/assets/global/plugins/select2/css/select2.min.css"
	rel="stylesheet" type="text/css" />
<!-- Select Bootstrap 1.13.12 -->
<link href="../../../library/select2 4.0.12/css/bootstrap-select.css"
	rel="stylesheet">


<%
	if (htmlspecialchars(request.getParameter("lang")).equals("en")) {
%>

<!-- Template CSS  -->
<link href="../../../theme/assets/global/css/components.min.css"
	rel="stylesheet" id="style_components" type="text/css" />


<%
	} else {
%>

<!-- Template CSS  -->
<link href="../../../theme-rtl/assets/global/css/components-rtl.min.css"
	rel="stylesheet" id="style_components" type="text/css" />

<%
	}
%>


<link rel="stylesheet" type="text/css" href="../../../CSS/listswap.css" />


<!-- links for library -->
<link rel="stylesheet"
	href="../node_modules/bootstrap-select/dist/css/bootstrap-select.css">
<link rel="stylesheet" href="../node_modules/chosenjs/chosen.css">
<link rel="stylesheet"
	href="../node_modules/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css">
<link rel="stylesheet"
	href="../node_modules/bootstrap-slider/dist/css/bootstrap-slider.css">
<link rel="stylesheet"
	href="../node_modules/selectize/dist/css/selectize.bootstrap3.css">
<link rel="stylesheet" href="../dist/css/query-builder.default.css"
	id="qb-theme">
<link rel="stylesheet" href="../dist/css/flags.css">

<!-- Customize CSS  -->
<link rel="stylesheet" href="../dist/css/query-builder-customize.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.css">

<style>
.select2-container *:focus {
	outline: none;
}

.has-error>span>span>span {
	border-color: #e73d4a !important;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075) !important;
}
</style>
</head>

<body>

	<div class="col-md-12 RuleCss">

		<div class="row">

			<form role="form">
				<label id="lblErrors" style="color: red"></label>

				<div class="form-group">
					<label id="jQueryBuilder_Conditions">Condition(s)</label>
					<div id="builder"></div>
				</div>

				<div class="span4 pull-right" style="padding-bottom: 20px;">
					<div class="btn-group" style="display: none;">
						<button class="btn btn-success parse-mongo">Apply Filter</button>
						&nbsp;
					</div>
				</div>

				<div id="result" class="hide">
					<h3>
						Output <span id="Match"></span>
					</h3>
					<pre></pre>
				</div>
			</form>


		</div>
	</div>


	<!-- links for library  -->
	<script src="../node_modules/jquery/dist/jquery.js"></script>
	<script src="../node_modules/bootstrap/dist/js/bootstrap.js"></script>
	<script src="../node_modules/bootstrap-select/dist/js/bootstrap-select.js"></script>
	<script src="../node_modules/chosenjs/chosen.jquery.js"></script>
	<script src="../node_modules/bootbox/bootbox.js"></script>
	<script src="../node_modules/bootstrap-slider/dist/bootstrap-slider.js"></script>
	<script src="../node_modules/selectize/dist/js/standalone/selectize.js"></script>
	<script src="../node_modules/jquery-extendext/jQuery.extendext.js"></script>
	<script src="../node_modules/sql-parser-mistic/browser/sql-parser.js"></script>
	<script src="../node_modules/dot/doT.js"></script>
	<script src="../node_modules/interactjs/dist/interact.js"></script>



	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.js"></script>
	<!-- select2 4.0.12  -->
	<script src="../../../library/select2 4.0.12/js/select2.full.min.js"></script>



	<!-- injector:js -->
	<script src="../src/main.js"></script>
	<script src="../src/defaults.js"></script>
	<script src="../src/plugins.js"></script>
	<script src="../src/core.js"></script>
	<script src="../src/public.js"></script>
	<script src="../src/data.js"></script>
	<script src="../src/template.js"></script>
	<script src="../src/utils.js"></script>
	<script src="../src/model.js"></script>
	<script src="../src/jquery.js"></script>
	<script src="../src/plugins/bt-checkbox/plugin.js"></script>
	<script src="../src/plugins/bt-selectpicker/plugin.js"></script>
	<script src="../src/plugins/bt-tooltip-errors/plugin.js"></script>
	<script src="../src/plugins/change-filters/plugin.js"></script>
	<script src="../src/plugins/chosen-selectpicker/plugin.js"></script>
	<script src="../src/plugins/filter-description/plugin.js"></script>
	<script src="../src/plugins/invert/plugin.js"></script>
	<script src="../src/plugins/mongodb-support/plugin.js"></script>
	<script src="../src/plugins/not-group/plugin.js"></script>
	<script src="../src/plugins/sortable/plugin.js"></script>
	<script src="../src/plugins/sql-support/plugin.js"></script>
	<script src="../src/plugins/unique-filter/plugin.js"></script>
	<script src="../dist/i18n/query-builder.en.js"></script>
	
	<%
		if (htmlspecialchars(request.getParameter("lang")).equals("en")) {
	%>
	<script src="../dist/i18n/query-builder.en.js"></script>
	
	
	<%
		} else {
	%>
	<script src="../dist/i18n/query-builder.ar.js"></script>
	<%
		}
	%>

	<!-- endinjector -->

	<!--  minified UMD module -->
	<script type="text/javascript"
		src="../node_modules/mingo/dist/mingo.min.js"></script>


	<!-- Some Function common  -->
	<script type="text/javascript" src="../../../library/Common/Common.js"></script>

	<script>
		var parameters = location.search.substring(1).split("&");

		var IDRule = decodeURIComponent(parameters[0].split("=")[1]);

		var Rule1;
		var OpenFAlrarm = 0;
		var EventsParamters = "";
		var ZoneEventsParamters = "";
		
		$(document).ready(function() {
			
			window.parent.CheckSession();

			FilterData = [];
			//CreateCondition(IDRule);

			$(".btn-danger").click();
			$(".glyphicon-plus-sign").click();
			//FillProtocol();
			FillData(IDRule);
			$("#jQueryBuilder_Conditions").text(window.parent.jQuery.i18n.prop('jQueryBuilder_Conditions'));
			
			
			
			copyPaste = window.parent.EnableCopyPasteOnAllWebPages();
			if (!parseInt(copyPaste)){		 
				$('.rules-group-body').bind("cut copy paste", function(e) {			
					e.preventDefault();
				});	
			} 
			
			$('.rules-group-body').on('keypress', ':input, textarea', function(event) {
				copyPaste = window.parent.EnableCopyPasteOnAllWebPages();
				console.log("copyPaste: " + copyPaste);
				if (event.keyCode === 60 || event.keyCode === 62 || (event.keyCode === 38 && event.target.id != "txtURL")) {
					return false;
				}
				console.log();
			}).on('paste', ':input, textarea', function(e) {
				const data = e.originalEvent.clipboardData.getData('Text');
				copyPaste = window.parent.EnableCopyPasteOnAllWebPages();
				console.log("copyPaste: " + copyPaste);
				if (data.includes('>') || data.includes('<') || (data.includes('&') && event.target.id != "txtURL")) {

					if (parseInt(copyPaste) && $(".jconfirm-box > .content-pane").text().trim() != 'Invalid input since it contains any of &,< or > characters.') {
						window.parent.AlertFunction("Invalid input since it contains any of &,< or > characters.");
						
					}
					e.preventDefault();
				}
			}).on('cut copy paste', ':input, textarea', function(e) {
				copyPaste = window.parent.EnableCopyPasteOnAllWebPages();
				if (!parseInt(copyPaste)) {
					e.preventDefault();
					// Optionally, you can show an alert or perform any other action
				}
			});

		});

		function CreateCondition(Condition_Web) {

			$('#builder').queryBuilder('destroy');
			
			
			
			//Events
			var StrEvent = "";
			$.ajax({
				type : 'post',
				url : '../../../HistoricalLocationControlpath_GLG',
				cache : false,
				async : false,
				data : 'MethodName=GetByIncludeInEventsMonitoring&IncludeInEventsMonitoring=1',
				success : function(data) {
					if (data != 0) {

						var Obj = $.parseJSON(data);
						Str = "";

						$.each(Obj, function(key, value) {
							StrEvent += '{"label": "' + value + '", "value": "' + key + '"},';
							EventsParamters += '"' + key + '",';
							
							if(key == 4 || key == 5 || key == 6){
								ZoneEventsParamters += '"' + key + '",';
							}
						});
						$('#listEventsID').html(Str);
					 
					}  

				}
			});
			StrEvent = StrEvent.substring(0, StrEvent.length - 1);
			EventsParamters = EventsParamters.substring(0, EventsParamters.length - 1);
			ZoneEventsParamters = ZoneEventsParamters.substring(0, ZoneEventsParamters.length - 1);
			//Events

			//Zones
			var AccountHolderType;
			var Account_HolderID;
			$.ajax({
				type : 'post',
				url : '../../../ModulesControlPath_GLG',
				data : 'MethodName=GetAccountHolderType',
				cache : false,
				async : false,
				success : function(data) {
					AccountHolderType = data.trim();
					if (data.trim() == "0") {
						$("#AccountHolderDiv").show();
					} else {
						$("#AccountHolderDiv").hide();
					}
				}
			});

			$.ajax({
				type : 'post',
				url : '../../../ModulesControlPath_GLG',
				data : 'MethodName=GetAccountHolderID',
				cache : false,
				async : false,
				success : function(data) {
					Account_HolderID = data.trim();
				}
			});
			var StrZones = "";
			$.ajax({
				type : 'post',
				url : '../../../ZonesControlPath_GLG',
				cache : false,
				async : false,
				data : 'MethodName=GetAll&Account_HolderID=' + Account_HolderID
						+ '&AccountHolderType=' + AccountHolderType,
				success : function(data) {
					if (data != 0) {

						var Obj = $.parseJSON(data);

						$.each(Obj, function(key, value) {

							var KeyObj = "{" + "'$oid'" + ":'" + key +

							"'}";

							StrZones += '{"label": "' + value + '", "value": "'
									+ KeyObj + '"},';
						});
					} else {
					}

				}
			});
			StrZones = StrZones.substring(0, StrZones.length - 1);
			//Zones	

			//Cells
			var StrCells = "";
			$.ajax({
				type : 'post',
				url : '../../../CellsControlPath_GLG',
				cache : false,
				async : false,
				data : 'MethodName=GetAll',
				success : function(data) {
					if (data != 0) {

						var Obj = $.parseJSON(data);

						$.each(Obj, function(key, value) {
							var KeyObj = "{" + "'$oid'" + ":'" + key +

							"'}";

							StrCells += '{"label": "' + value + '", "value": "'
									+ KeyObj + '"},';

						});
					} else {
					}

				}
			});
			StrCells = StrCells.substring(0, StrCells.length - 1);
			//Cells		

			var StrDuration = "";
			var i = 0;
			for (i = 5; i <= 100; i += 5) {
				if (i != 60) {
					StrDuration += '{"label": "' + i + '", "value": "' + i
							+ '"},';
				} else {
					break;
				}

			}

			StrDuration = StrDuration.substring(0, StrDuration.length - 1);

			FilterData = JSON.parse('[{"id":"MSISDN","field":"msisdn","label":"'
							+ window.parent.jQuery.i18n.prop('MSISDNsList_MSISDN')
							+ '","type":"string","input":"text","size":20 ,"data": { "class": "form-control" }'
							+ ',"operators": ["equal", "not_equal", "contains" ]  }, '

							+ '{"id":"CellID","field":"event.details.location.new_ci","label":"'
							+ window.parent.jQuery.i18n.prop('CellsIDs_CellID')
							+ '","type":"string","input":"select", "multiple": "true" , "values": [' + StrCells + '] '
							+ ',"operators": ["in"]}, '

							+ '{"id":"ZoneID","field":"event.details.new_zid","label":"'
							+ window.parent.jQuery.i18n.prop('Zones_Zone')
							+ '","type":"string","input":"select", "multiple": "true" , "values": [' + StrZones + '] '
							+ ',"operators": ["in"]}, '
							
							/*
							+ '{"id":"DurationID","field":"event.details.duration","label":"'
							+ window.parent.jQuery.i18n.prop('Date_Duration')
							+ '" ,"type":"string","input":"select", "nb_inputs": "3" ,"placeholder": "'
							+ window.parent.jQuery.i18n.prop('Date_SelectDuration')
							+ '" , "values": [' + StrDuration + '] '
							+ ',"operators": ["between"]}, '

							+ '{"id":"calling_number","field":"event.details.calling_number","label":"'
							+ window.parent.jQuery.i18n.prop('jQueryBuilder_CallingNumber')
							+ '" ,"type":"integer","input":"text","size":20,"data": { "class": "form-control" } '
							+ ',"operators": ["equal", "not_equal" ] , "validation": { "allow_empty_value" : true } }, '
							
							+ '{"id":"called_number","event.details.called_number":"called_number","label":"'
							+ window.parent.jQuery.i18n.prop('jQueryBuilder_CalledNumber')
							+ '","type":"integer","input":"text","size":20,"data": { "class": "form-control" } '
							+ ',"operators": ["equal", "not_equal" ]}, '
							*/
							
							+ '{"id":"event.types","field":"event.type","label":"'
							+ window.parent.jQuery.i18n.prop('EventMonitoring_EventType')
							+ '","type":"string","input":"select","placeholder": "'
							+ window.parent.jQuery.i18n.prop('EventMonitoring_SelectEventType')
							+ '" , "values": [' + StrEvent + '] '
							+ ',"operators": ["equal", "not_equal"] } ] ');

			$('[data-toggle="tooltip"]').tooltip();

			var $b = $('#builder');

			var options = {
				allow_empty : true,
				//default_filter: 'name',
				sort_filters : true,
				optgroups : {
					core : {
						en : 'Core',
						fr : 'Coeur'
					}
				},

				plugins : {
					'bt-tooltip-errors' : {
						delay : 100
					},
					'sortable' : {
						icon : 'glyphicon glyphicon-sort'
					},
					//'filter-description': { mode: 'bootbox' },
					'bt-selectpicker' : null,
					//'chosen-selectpicker': null,
					'unique-filter' : null,
					'bt-checkbox' : {
						color : 'primary'
					},
					'invert' : null,
					'not-group' : null
				},
				lang : {
					add_rule : window.parent.jQuery.i18n.prop('btnAddRule'), // To change label to add rule 
					add_group : window.parent.jQuery.i18n.prop('btnAddGroup'), // To change label to add group 
					remove_rule : window.parent.jQuery.i18n.prop('btnDelete'),
					remove_group : window.parent.jQuery.i18n.prop('btnDelete')
				},
				filters : FilterData
			};

			// init

			$('#builder').queryBuilder(options);

			$('#builder').on('afterCreateRuleInput.queryBuilder', function(e, rule) { // function to make anything after created element 

				if (rule.filter.input == "select" || rule.filter.type == "string") { // check if select make search on select use select2 libaray 

					$('#'+ rule.id+ ' > .rule-value-container > select').select2();

				}

				if (rule.filter.plugin == 'selectize') { // set all select same size 

					rule.$el.find('.rule-value-container').css('min-width', '200px').find('.selectize-control').removeClass('form-control');

				}
				
				  setTimeout(() => { 
					  $(".dropdown.bootstrap-select.bs3 , .form-control").css("width","130px");
			   	  }, 100); 
			});

			
			// reset builder
			$('.reset').on('click', function() {
				$('#builder').queryBuilder('reset');
				$('#result').addClass('hide').find('pre').empty();
				$('#Match').text("");
			});

			var RuleQuery = [];
			$('.parse-mongo').on(
					'click',
					function() {
						RuleQuery = $('#builder').queryBuilder('getRules');

						CreateFilter();

						// drwa query on html
						$('#result').removeClass('hide').find('pre').html(
								JSON.stringify($('#builder').queryBuilder(
										'getRules'), undefined, 2));
					});

		Rule1 = Condition_Web;
		$('#builder').queryBuilder('reset'); // make reset for rebuild rule 
		$('#builder').queryBuilder('setRules', Rule1); // build new rule  
		
		
		  setTimeout(() => { 
			  $(".dropdown.bootstrap-select.bs3 , .form-control").css("width","130px");
		  }, 1000);
			 
			
 
		
		//We use this event and "ResetHeightFrame" to reset height to the condition when adding and deleting rows  
		  
		  window.parent.$("#FrameContent3").height($("html").height()+10);
		   
		 
		  $('.btn.btn-xs.btn.blue').click(function() {
				
			  if( $('.btn.btn-xs.btn-danger').length > 0){
				window.parent.$("#FrameContent3").height(parseInt(window.parent.$("#FrameContent3").height()+35))
				console.log(window.parent.$("#FrameContent3").height());
			  	setTimeout(function(){ $('.btn.btn-xs.btn-danger').attr('onClick', 'ResetHeightFrame(this);'); }, 1000);
			  }
			  
		});
		  
		}		
		 
		 
		function ResetHeightFrame(ID){
		if( $('.btn.btn-xs.btn-danger').length > 1){
			window.parent.$("#FrameContent3").height(parseInt(window.parent.$("#FrameContent3").height()-35))
			console.log(window.parent.$("#FrameContent3").height());
		}
		} 
		 
		

		function FillData(ID) {

			$.ajax({
				type : 'post',
				url : '../../../EventsMonitoringControlPath_GLG',
				data : 'MethodName=getByID&ID=' + encodeURIComponent(IDRule),
				cache : false,
				async : false,
				success : function(data) {
					var Obj = $.parseJSON(data);
					console.log(Obj.result["web-condition"]);
					CreateCondition(Obj.result["web-condition"]);
				}
			});
		}

		 
		function IsFormComplete() { // TypeSave == 0 save  TypeSave = 1 from save and copy subscriber alarm only

			var FormOk = true;

			if (FormOk == true
					&& $('#builder').queryBuilder('getRules') == null) {
				window.parent.AlertFunction(window.parent.jQuery.i18n
						.prop('jQueryBuilder_AlertAtLeastCondition'));
				FormOk = false;
			}

			if (FormOk == true
					&& $('#builder').queryBuilder('getRules').rules.length == 0) {
				window.parent.AlertFunction(window.parent.jQuery.i18n
						.prop('jQueryBuilder_AlertAtLeastCondition'));
				FormOk = false;
			}

			if (FormOk == true && $('#builder').queryBuilder('validate')) {
				//SaveChanges(TypeSave);
				FormOk = true;

			}

			return FormOk;

		}

		function ConditionMongo() {

			 $('#builder').queryBuilder('setRules' , $('#builder').queryBuilder('getRules').rules.map(value => {
			     if(value.field=="event.type"){    
			     value.value = parseInt(value.value)}
			     return value ;
			 }))
			
			
			return JSON.stringify($('#builder').queryBuilder('getMongo'));

		}
		
		function ConditionWeb() {
			 $('#builder').queryBuilder('setRules' , $('#builder').queryBuilder('getRules').rules.map(value => {
			     if(value.field=="event.type"){    
			     value.value = parseInt(value.value)}
			     return value ;
			 }))
			return JSON.stringify($('#builder').queryBuilder('getRules'));

		}
		
		
		function AllEvents(){
			return EventsParamters;
		}
		
		function GetZoneEvents(){
			return ZoneEventsParamters;
		}
		
	</script>
</body>
</html>
