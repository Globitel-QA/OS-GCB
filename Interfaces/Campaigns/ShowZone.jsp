<!DOCTYPE html>
<%@ include file="../../library/Common/Common.jsp"%>

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

<%
	String zoneID = request.getParameter("zoneID");
%>


<head>
	<title>Turf Circle Example</title>


	<script src="../../library/jquery/2.2.0/jquery.min.js"></script>


	<script src="../../library/Leaflet/docs/examples/libs/leaflet-src.js"></script>
	<link rel="stylesheet"
		  href="../../library/Leaflet/docs/examples/libs/leaflet.css" />

	<script src="../../library/Leaflet/src/Leaflet.draw.js"></script>
	<script src="../../library/Leaflet/src/Leaflet.Draw.Event.js"></script>
	<link rel="stylesheet" href="../../library/Leaflet/src/leaflet.draw.css" />

	<script src="../../library/Leaflet/src/Toolbar.js"></script>
	<script src="../../library/Leaflet/src/Tooltip.js"></script>

	<script src="../../library/Leaflet/src/ext/GeometryUtil.js"></script>
	<script src="../../library/Leaflet/src/ext/LatLngUtil.js"></script>
	<script src="../../library/Leaflet/src/ext/LineUtil.Intersect.js"></script>
	<script src="../../library/Leaflet/src/ext/Polygon.Intersect.js"></script>
	<script src="../../library/Leaflet/src/ext/Polyline.Intersect.js"></script>
	<script src="../../library/Leaflet/src/ext/TouchEvents.js"></script>

	<script src="../../library/Leaflet/src/draw/DrawToolbar.js"></script>
	<script src="../../library/Leaflet/src/draw/handler/Draw.Feature.js"></script>
	<script src="../../library/Leaflet/src/draw/handler/Draw.SimpleShape.js"></script>
	<script src="../../library/Leaflet/src/draw/handler/Draw.Polyline.js"></script>
	<script src="../../library/Leaflet/src/draw/handler/Draw.Marker.js"></script>
	<script src="../../library/Leaflet/src/draw/handler/Draw.Circle.js"></script>
	<script
			src="../../library/Leaflet/src/draw/handler/Draw.CircleMarker.js"></script>
	<script src="../../library/Leaflet/src/draw/handler/Draw.Polygon.js"></script>
	<script src="../../library/Leaflet/src/draw/handler/Draw.Rectangle.js"></script>


	<script src="../../library/Leaflet/src/edit/EditToolbar.js"></script>
	<script src="../../library/Leaflet/src/edit/handler/EditToolbar.Edit.js"></script>
	<script
			src="../../library/Leaflet/src/edit/handler/EditToolbar.Delete.js"></script>

	<script src="../../library/Leaflet/src/Control.Draw.js"></script>

	<script src="../../library/Leaflet/src/edit/handler/Edit.Poly.js"></script>
	<script src="../../library/Leaflet/src/edit/handler/Edit.SimpleShape.js"></script>
	<script src="../../library/Leaflet/src/edit/handler/Edit.Rectangle.js"></script>
	<script src="../../library/Leaflet/src/edit/handler/Edit.Marker.js"></script>
	<script
			src="../../library/Leaflet/src/edit/handler/Edit.CircleMarker.js"></script>
	<script src="../../library/Leaflet/src/edit/handler/Edit.Circle.js"></script>

	<script type="text/javascript"
			src="../../library/jquery/leaflet/tokml.js"></script>

	<%
		if (htmlspecialchars(request.getParameter("lang")).equals("en")) {
	%>


	<link
			href="../../theme/assets/global/plugins/bootstrap/css/bootstrap.min.css"
			rel="stylesheet" type="text/css" />

	<!-- BEGIN THEME GLOBAL STYLES -->
	<link href="../../theme/assets/global/css/components.min.css"
		  rel="stylesheet" id="style_components" type="text/css" />

	<%
	} else {
	%>

	<link
			href="../../theme-rtl/assets/global/plugins/bootstrap/css/bootstrap-rtl.min.css"
			rel="stylesheet" type="text/css" />

	<!-- BEGIN THEME GLOBAL STYLES -->
	<link href="../../theme-rtl/assets/global/css/components-rtl.min.css"
		  rel="stylesheet" id="style_components" type="text/css" />


	<%
		}
	%>



	<style>
		html {
			border: 1px solid #f0f5f7;
		}

		html, body {
			overflow: hidden;
			width: 99%;
			height: 97%;
		}

		#map {
			width: 94.7%;
			height: 49%;
			position: fixed !important;
		}

		.mt-checkbox {
			font-size: 14px;
			font-weight: 400;
			font-family: "Open Sans", sans-serif;
			color: #333;
			line-height: 1.42857;
		}

		.mt-checkbox-list, .mt-radio-list {
			padding: 10px 0;
		}

		.input-icon>i, .mt-checkbox-list .mt-checkbox, .mt-checkbox-list .mt-radio,
		.mt-checkbox>input:checked ~span:after, .mt-radio-list .mt-checkbox,
		.mt-radio-list .mt-radio, .mt-radio>input:checked ~span:after {
			display: block;
		}

		.mt-checkbox {
			margin-bottom: 0px;
		}

		.mt-checkbox, .mt-radio {
			display: inline-block;
			position: relative;
			padding-left: 30px;
			margin-bottom: 0px;
			cursor: pointer;
			font-size: 14px;
			webkit-transition: all .3s;
			-moz-transition: all .3s;
			-ms-transition: all .3s;
			-o-transition: all .3s;
			transition: all .3s;
		}

		label {
			font-weight: 400;
		}

		.mt-checkbox>input, .mt-radio>input {
			position: absolute;
			z-index: -1;
			opacity: 0;
			filter: alpha(opacity = 0);
		}

		input[type=checkbox], input[type=radio] {
			margin: 4px 0 0;
			margin-top: 1px\9;
			line-height: normal;
		}

		input[type=checkbox], input[type=radio] {
			box-sizing: border-box;
			padding: 0;
		}

		a, button, code, div, img, input, label, li, p, pre, select, span, svg,
		table, td, textarea, th, ul {
			-webkit-border-radius: 0 !important;
			-moz-border-radius: 0 !important;
			border-radius: 0 !important;
		}

		button, input, optgroup, select, textarea {
			color: inherit;
			font: inherit;
			margin: 0;
		}

		input[type="checkbox" i] {
			background-color: initial;
			cursor: default;
			-webkit-appearance: checkbox;
			box-sizing: border-box;
			margin: 3px 3px 3px 4px;
			padding: initial;
			border: initial;
		}

		.mt-checkbox, .mt-radio {
			display: inline-block;
			position: relative;
			padding-left: 30px;
			margin-bottom: 0px;
			cursor: pointer;
			font-size: 14px;
			webkit-transition: all .3s;
			-moz-transition: all .3s;
			-ms-transition: all .3s;
			-o-transition: all .3s;
			transition: all .3s;
		}

		.mt-checkbox:hover>input:not ([disabled] ):checked ~span, .mt-checkbox>input:checked
		~span, .mt-radio:hover>input:not ([disabled] ):checked ~span,
		.mt-radio>input:checked
		~span {
			webkit-transition: all .3s;
			-moz-transition: all .3s;
			-ms-transition: all .3s;
			-o-transition: all .3s;
			transition: all .3s;
			background: #d9d9d9;
		}

		.mt-checkbox>span, .mt-radio>span {
			border: 1px solid transparent;
			position: absolute;
			top: 0;
			left: 0;
			height: 19px;
			width: 19px;
			background: #E6E6E6;
		}

		a, button, code, div, img, input, label, li, p, pre, select, span, svg,
		table, td, textarea, th, ul {
			-webkit-border-radius: 0 !important;
			-moz-border-radius: 0 !important;
			border-radius: 0 !important;
		}

		checkbox-list .mt-radio, .mt-checkbox>input:checked ~span:after,
		.mt-radio-list .mt-checkbox, .mt-radio-list .mt-radio, .mt-radio>input:checked
		~span:after {
			display: block;
		}

		.mt-checkbox>span:after {
			left: 6px;
			top: 3px;
			width: 5px;
			height: 10px;
			border: solid #666;
			border-width: 0 2px 2px 0;
			transform: rotate(45deg);
		}

		.mt-checkbox>span:after, .mt-radio>span:after {
			content: '';
			position: absolute;
			display: none;
		}

		.portlet.light.bordered {
			border: 0px solid #e7ecf1 !important;
		}

		#map {
			margin-top: 6px;
		}

		#HintZones {
			font-size: 12px;
			font-weight: 650;
			font-style: italic;
			/* color: green;  */
			font-family: inherit;
		}
	</style>
</head>

<body>
<input type="hidden" id="LayerMarker" name="LayerMarker">
<input type="hidden" name="SelectedID" id="SelectedID"
	   value=<%out.println(htmlspecialchars(request.getParameter("ID")));%>>
<input type="hidden" name="oldName" id="oldName"
	   value=<%out.println(htmlspecialchars(request.getParameter("Name")));%>>
<div class="row">
	<div class="col-md-12 ">
		<div class="portlet light bordered">
			<div class="portlet-title">
				<div class="caption">
					<i class="icon-social-dribbble font-green"></i> <span
						class="caption-subject font-green bold" id="Zones_ViewZone">View
							Zone</span>
				</div>
			</div>
			<div class="portlet-body form" id="formID">
				<div class="row">
					<div class="col-lg-12">

						<div class="form-group">
							<label id="Zones_ZoneName">Zone Name</label> <input
								class="form-control input-sm" id="txtName" maxlength="50" />

						</div>

						<!-- <div class="form-group" id="checkbox"
                            style="margin-bottom: 10px;">
                            <div class="mt-checkbox-list" style="padding-bottom: 0;">
                                <label class="mt-checkbox"> <span id="Zones_ViewCells"
                                    style="display: contents">View Cells</span><input
                                    type="checkbox" style="margin-right: 10px;" id="chk_ViewCells"
                                    name="chk_ViewCells" onClick="ViewMarker()"> <span></span>
                                </label>
                            </div>
                        </div> -->

						<span id="HintZones" class="HintMaron">Draw an area on the
								map to show the density</span>

						<div id="map"></div>
						<br> <br> <br> <br> <br> <br> <br>
						<br> <br> <br> <br> <br> <br> <br>
						<br> <br> <br> <br> <br> <br>

						<div class="span4">
							<div class='pull-right'>
								<button id="btnClose" class="btn btn-danger "
										onclick="Close();">Close</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>

	var BackendServiceIPAddress = window.parent.GetIPAdress();

	$(document).ready(function() {


		setTimeout(() => {
			$("#txtName").focus();
		}, "1000");

		$("#txtName").focus();

	});

	$('#formID').keypress((e) => {

		// Enter key corresponds to number 13
		if (e.which === 13) {
			$('#btnSave').click();
		}
	});

	function Load() {
		changeLang_iframe();
	}

	var Longitude;
	var Latitude;
	var ZoomLevel;

	$.ajax({
		type: 'post',
		url: '../../UsersControlPath_GCB',
		data: 'MethodName=GetIntialLocation',
		cache: false,
		async: false,
		success: function(data) {
			var arr = data.split(",");
			Longitude = $.trim(arr[0]);
			Latitude = $.trim(arr[1]);
			ZoomLevel = $.trim(arr[2]);
		}
	});

	var googleMapsUrl = 'https://mt1.google.com/vt/lyrs=m&x={x}&y={y}&z={z}';
	var googleAttrib = '&copy; Google Maps';
	var googleMaps = L.tileLayer(googleMapsUrl, {
		maxZoom: 19,
		attribution: googleAttrib
	});

	var map = new L.Map('map', {
		center: new L.LatLng(Latitude, Longitude),
		zoom: ZoomLevel
	});

	var drawnItems = L.featureGroup().addTo(map);
	googleMaps.addTo(map);


	map.addControl(new L.Control.Draw({
		edit: {
			featureGroup: drawnItems,

		},
		draw: {
			polyline: false,
			circlemarker: false,
			rectangle: false,
			marker: false,
			circle: false,
			polygon: {
				allowIntersection: false,
				showArea: true
			}
		}
	}));

	var Coordinates;

	Load();
	FillData(document.getElementById('SelectedID').value);

	function FillData(ID) {

		$.ajax({
			type: 'GET',
			url: BackendServiceIPAddress + '/api/zones/' + ID,
			cache: false,
			async: false,
			success: function(data) {
				console.log("Received data:", data); // Check the actual content of 'data'

				try {
					var locationData;

					if (data.result && data.result.location) {
						locationData = JSON.parse(data.result.location);
						Coordinates = locationData.location.coordinates;
						var typeObj = locationData.location.type;

						var coordinates = JSON.stringify(Coordinates);
						console.log(coordinates)
						DrawShape(coordinates, typeObj, data.result.name);
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
	}


	// Would benefit from https://github.com/Leaflet/Leaflet/issues/4461
	function addNonGroupLayers(sourceLayer, targetGroup) {
		if (sourceLayer instanceof L.LayerGroup) {
			sourceLayer.eachLayer(function(layer) {
				addNonGroupLayers(layer, targetGroup);
			});
		} else {
			targetGroup.addLayer(sourceLayer);
		}
	}



	function DrawShape(coordinates, type , name) {
		if (type == "Polyline") {


			/*var str = coordinates ;
			var arr = $.parseJSON(str);
				var polyline = L.polyline(arr, {
					  editing: {},
					    original: {}
				});
				polyline.addTo(map).bindPopup(name).openPopup();
				map.fitBounds(arr);
				polyline.editing.enable();
				drawnItems.addLayer(polyline);
				map.addLayer(polyline);
				//polyline.removeFrom(map)*/

		} else if (type == "Polygon" )
		{
			var str = coordinates ;
			var arr = $.parseJSON(str);
			/*var polygon = L.polygon(coordinates);
			polygon.addTo(map).bindPopup(name).openPopup();
			map.fitBounds(coordinates);
			drawnItems.addLayer(polygon);*/
			var geojsonFeature = {
				"type": "Feature",
				"properties": {
					"name": "Coors Field",
					"amenity": "Baseball Stadium",
					"popupContent": "This is where the Rockies play!"
				},
				"geometry": {
					"type": "Polygon",
					"coordinates": arr
				}
			};

			var geoJSON =	L.geoJSON(geojsonFeature);
			map.fitBounds(geoJSON.getBounds());
			/*console.log(coordinates)
			var polygon = L.polygon([[31.93069672615771,35.90357240396116],[31.924946788963855,35.9464801843279],[31.913955402311533,35.92356742961207]]);
			polygon.addTo(map).bindPopup(name).openPopup();
			map.fitBounds([[31.93069672615771,35.90357240396116],[31.924946788963855,35.9464801843279],[31.913955402311533,35.92356742961207]]);*/
			addNonGroupLayers(geoJSON, drawnItems);


			/*var str = coordinates ;
			var arr = $.parseJSON(str);
			var polygon = L.polygon(arr, {
				  editing: {},
				    original: {}
			});
			polygon.addTo(map).bindPopup(name).openPopup();
			map.fitBounds(arr);
			polygon.editing.enable();
			drawnItems.addLayer(polygon);
			map.addLayer(polygon);*/



		} else if  (type == "Circle")
		{
			var u = coordinates ;
			var bound = eval('[' + u + ']') + '' ;
			var nameArr = bound.split(',');
			var center = [nameArr[0] , nameArr[1]] ;
			var circle =  L.circle(center).addTo(map).bindPopup(name).openPopup();
			map.fitBounds(circle.getBounds());
			circle.editing.enable();
			drawnItems.addLayer(circle);
			map.addLayer(circle);


		} else if  (type == "Marker"){
			var MarkerCo = coordinates ;
			var boundCo = eval('[' +MarkerCo + ']') + '' ;
			var nameArray = boundCo.split(',');
			var markerlat = [nameArray[0] , nameArray[1]] ;
			var marker = L.marker(markerlat).addTo(map).bindPopup(name).openPopup();

			/* L.marker.on('click', function(ev) {
                 alert("marker"); // ev is an event object (MouseEvent in this case)
             }); */


			marker.editing.enable();
			drawnItems.addLayer(marker);
			map.addLayer(marker);
		}

	}



	function ViewMarker2(){

		if($('#chk_ViewCells').is(":checked")){
			fetch('././Example/Marker.kml')
					.then(res => res.text())
					.then(kmltext => {
						// Create new kml overlay
						const parser = new DOMParser();
						const kml = parser.parseFromString(kmltext, 'text/xml');
						const track = new L.KML(kml);
						map.addLayer(track);
						$("#LayerMarker").val(track._leaflet_id);
						console.log(track._leaflet_id)
						// Adjust map to show the kml
						const bounds = track.getBounds();
						map.fitBounds(bounds);
						console.log(bounds);
					});
		}else{
			map.eachLayer(function (layer) {
				if(layer._leaflet_id == $("#LayerMarker").val()){
					console.log(layer);
					map.removeLayer(layer);
				}
			});
		}

	}

	function ViewMarker(){
		if($('#chk_ViewCells').is(":checked")){
			//$("#chk_ViewCells").attr("disabled", true);
			var SelectedID = document.getElementById('SelectedID').value ;
			$.ajax({
				type : 'post',
				url : '../../ZonesControlPath_GLG',
				cache : false,
				data : 'MethodName=viewCells&ID='
						+ encodeURIComponent(SelectedID) ,
				success : function(result) {
					var obj = JSON.parse(result) ;
					if(obj != "")
					{

						var a = [];
						obj.forEach(function(obj){
							a.push(obj.location.coordinates);

							var geojsonFeature = {
								"type" : "Feature",
								"properties" : {

								},
								"geometry" : {
									"type" : "Point",
									"coordinates" : obj.location.coordinates
								}
							};


							geoJSON = new L.geoJSON(geojsonFeature);
							drawnItems.addLayer(geoJSON);


						})

						function onMapClick(e) {
							//alert("You clicked the map at " + e.latlng);
							console.log(drawnItems);
						}

						drawnItems.on('click', onMapClick);

					}else{
						window.parent.AlertFunction(window.parent.jQuery.i18n.prop('Zones_AlertNoCellsForZone'));
						//$("#chk_ViewCells").attr("disabled", false);
						//$("#chk_ViewCells").attr("checked", false);
					}

				}
			});
		}else{
			drawnItems.clearLayers();


			var str = Coordinates ;
			var geojsonFeature = {
				"type": "Feature",
				"properties": {
				},
				"geometry": {
					"type": "Polygon",
					"coordinates": str
				}
			};

			var geoJSON =	L.geoJSON(geojsonFeature);
			map.fitBounds(geoJSON.getBounds());
			addNonGroupLayers(geoJSON, drawnItems);


		}

	}


	function IsFormComplete (){

		$("div.form-group").removeClass("has-error");

		FormOk = true;

		if (FormOk == true && $.trim(document.getElementById('txtName').value) == "") {

			var div = $("#txtName").parent("div.form-group");
			$("#txtName").focus();
			div.addClass("has-error");
			window.parent.AlertFunction(window.parent.jQuery.i18n.prop('Zones_AlertZoneName'));
			FormOk = false;

		}

		if (FormOk == true) {
			checkNameExisting();
		}

	}

	var nameIsExisted = 0;

	function checkNameExisting(){
		var zoneName = $.trim(document.getElementById('txtName').value);
		var oldZoneName = $.trim(document.getElementById('oldName').value);
		if(zoneName == oldZoneName){
			nameIsExisted = 0;
			IsFormCompleteTwo();
		} else {
			$.ajax({
				type : 'Get',
				url : BackendServiceIPAddress
						+ '/api/zones/GetByName/' + encodeURIComponent($.trim(zoneName)),
				cache : false,
				data : zoneName,
				contentType: "application/json",
				success : function(data) {
					if (data.statusCode === 200) {
						window.parent.AlertFunction(window.parent.jQuery.i18n.prop('Zones_NameIsAlreadyExist'));
					}
					else {
						IsFormCompleteTwo();

					}
				}
			});
		}
	}

	function IsFormCompleteTwo(){

		$("div.form-group").removeClass("has-error");

		FormOk = true;
		if ( FormOk == true && Coordinates == "") {
			window.parent.AlertFunction(window.parent.jQuery.i18n.prop('Zones_AlertSelectZone'));
			FormOk = false;

		}

		if (FormOk == true) {
			SendRequest();
		}

	}


	map.on(L.Draw.Event.CREATED, function (e) {
		drawnItems.clearLayers();
		var layer = e.layer;
		drawnItems.addLayer(layer);
		var geojson = layer.toGeoJSON();
		Coordinates =  geojson.geometry.coordinates ;
		console.log(Coordinates)
	});

	map.on('draw:deleted', function (evt) {
		Coordinates = ""
		// do something when polygon is deleted
		$("#chk_ViewCells").attr("checked", false);
		$("#chk_ViewCells").attr("disabled", true);
	});

	map.on('draw:editvertex', function(e) {
		for (thisLayer in e.target._layers) {
			if (e.target._layers.hasOwnProperty(thisLayer)) {
				if (e.target._layers[thisLayer].hasOwnProperty("edited")) {
					console.log("we think we found the polygon?");
					console.log(e.target._layers[thisLayer].toGeoJSON());

					// the updated Polygon array points are here:
					newPolyLatLngArray = e.target._layers[thisLayer].toGeoJSON();

					Coordinates =  newPolyLatLngArray.geometry.coordinates  ;
					console.log(Coordinates)

				}
			}
		};
	});


	function SendRequest() {

		var SelectedID = document.getElementById('SelectedID').value ;
		var ZoneName = $.trim($('#txtName').val());
		var ZoneObj = {};

		var TYPE = $('input[name=PublicType]:checked').val();

		var ZoneObj = {};
		ZoneObj.id = SelectedID;
		ZoneObj.name = ZoneName;
		ZoneObj.location = JSON.stringify(
				{"location":{
						"type": "Polygon",
						"coordinates":Coordinates
					}
				});

		var JSONobj = JSON.stringify(ZoneObj);
		//alert(JSONobj);

		$.ajax({
			type : 'put',
			url : BackendServiceIPAddress
					+ '/api/zones',
			cache : false,
			data : JSONobj,
			contentType: "application/json",
			success : function(data) {

				if (data.statusCode === 200) {

					window.parent.loadpage('Interfaces/Zones/Zones.jsp?UpdatePage=1', 'ZonesManagement');
				}
				else {

					window.parent.loadpage('Interfaces/Zones/Zones.jsp?UpdatePage=-1', 'ZonesManagement');

				}
			}
		});
	}


	function Close() {
		window.parent.Custombox.modal.close();
	}


	function changeLang_iframe() {


		$.ajaxSetup({
			beforeSend: function (xhr,settings) {

				if(settings.headers !=undefined && settings.headers.hasOwnProperty("Skip")){

				} else if(settings.url.indexOf("_GCB_WS") > 0 || settings.url.indexOf("/api/") > 0 ) {
					xhr.setRequestHeader("Authorization", "Bearer " + sessionStorage.getItem("e99a18c428cb38d5f260853678922e03"));
				}
			}
		});


		try{
			var lang = window.parent.window.parent.$('#SelectedLanguage').val();
		} catch (ex) {
			var lang ='en';
		}

		window.parent.jQuery.i18n.properties({
			name : 'Messages',
			path : 'bundle/',
			mode : 'both',
			language : lang,
			async : false,
			callback : function() {



				$('.form-group > label , option , .span4 > div > button , .Translate , .caption-subject.font-green.bold  '
						+ ', .caption-subject.font-green.sbold , th , div.alert , spane , li > a > span.title , span ').each(function(event) {

					try{

						if(this.id !==""){

							$("#"+this.id).text(window.parent.jQuery.i18n.prop(this.id));
						}

					} catch(e) {

					}
				});

			}
		});
	}
</script>
</body>
</html>