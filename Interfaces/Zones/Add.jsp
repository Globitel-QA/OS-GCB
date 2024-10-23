
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


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


<head>
<title>Turf Circle Example</title>

<script src="../../library/jquery/2.2.0/jquery.min.js"></script>
<script type="text/javascript"
	src="../../library/jquery/leaflet/tokml.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@turf/turf@5/turf.min.js"></script>
<script src="../../library/Leaflet/docs/examples/libs/leaflet-src.js"></script>
<link rel="stylesheet"
	href="../../library/Leaflet/docs/examples/libs/leaflet.css" />

<script src="../../library/Leaflet/src/Leaflet.draw.js"></script>
<script src="../../library/Leaflet/src/Leaflet.Draw.Event.js"></script>
<link rel="stylesheet" href="../../library/Leaflet/src/leaflet.draw.css" />

<script src="../../library/Leaflet/src/Toolbar.js"></script>
<script src="../../library/Leaflet/src/Tooltip.js"></script>

<!-- <script src="../../library/Common/Common.js"></script> -->

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
	width: 99%;
	height: 97%;
}

#map {
	width: 97%;
	height: 72%;
	position: absolute !important;
}

.portlet.light.bordered {
	border: 0px solid #e7ecf1 !important;
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

#map {
	margin-top: 6px;
}

#HintZones {
	font-size: 12px;
	font-weight: 650;
	font-style: italic;
	/* color: green; */
	font-family: inherit;
}
</style>
</head>
<body>
	<input type="hidden" name="whichManagement" id="whichManagement"
		value=<%out.println(htmlspecialchars(request.getParameter("whichManagement")));%>>
	<div class="row">
		<div class="col-md-12 ">
			<div class="portlet light bordered">
				<div class="portlet-title">
					<div class="caption">
						<i class="icon-social-dribbble font-green"></i> <span
							class="caption-subject font-green bold" id="Zones_AddZone">Add
							Zone</span>
					</div>
				</div>
				<div class="portlet-body form" id="formID">
					<div class="row">
						<div class="col-lg-12">

							<div class="form-group">
								<label id="Zones_ZoneName">Zone Name</label> <input
									class="form-control input-sm" id="txtName" maxlength="50">

							</div>

							<span id="HintZones" class="HintMaron">Draw an area on the
								map to show the density</span> <br>
							<div id="map"></div>

							<br> <br> <br> <br> <br> <br> <br>
							<br> <br> <br> <br> <br> <br> <br>
							<br> <br> <br> <br> <br> <br>

							<div class="span4">
								<div class='pull-right'>
									<button id="btnSave" class="btn btn-success "
										onclick="IsFormComplete();return false;">Save</button>
									<button id="btnCancel" class="btn btn-danger "
										onclick="Cancel();">Cancel</button>
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
		var isZoneManagement = $("#whichManagement").val();
		
		$(document).ready(function() {
			
			setTimeout(() => {
				$("#txtName").focus();
				}, "1000");
			
			
			$('#formID').keypress((e) => {
				  
		        // Enter key corresponds to number 13
		        if (e.which === 13) {
		        	$('#btnSave').click();
		        }
		    });
			
			Load();
			
			
			$("#txtName").focus();
		
		});  
		
		
		function Load() {

			changeLang_iframe();
		}
		
	 
	    
		var Longitude;
		var Latitude;
		var ZoomLevel;

		// Make an AJAX request to retrieve initial location data
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

		// Replace the OpenStreetMap tile layer with Google Maps tile layer
		var googleMapsUrl = 'https://mt1.google.com/vt/lyrs=m&x={x}&y={y}&z={z}'; // Google Maps tile URL
		var googleAttrib = '&copy; Google Maps'; // Attribution for Google Maps

		var googleMaps = L.tileLayer(googleMapsUrl, {
		    maxZoom: 19,
		    attribution: googleAttrib
		});

		// Create a map with Google Maps tiles
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

	
	
			var Coordinates = "" ; 
			
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
			});
	
	
	map.on('draw:editvertex', function(e) {
	    for (thisLayer in e.target._layers) {
	        if (e.target._layers.hasOwnProperty(thisLayer)) {
	            if (e.target._layers[thisLayer].hasOwnProperty("edited")) {
	                //console.log("we think we found the polygon?");
	                //console.log(e.target._layers[thisLayer].toGeoJSON());
	
	                // the updated Polygon array points are here:
	               newPolyLatLngArray = e.target._layers[thisLayer].toGeoJSON();
	       
	               Coordinates =  newPolyLatLngArray.geometry.coordinates  ;
	               }
	        }
	    };
	});
	
	
	
	
	var M ;
	function addKML() {
	    var file = document.getElementById("selectfile").files[0];
	    if (file) {
	
	      var reader = new FileReader();
	      reader.onload = function (event) {
	    	  //console.log(reader.result);
	          
	    	  // Create new kml overlay
	          const parser = new DOMParser();
	          const kml = parser.parseFromString(reader.result, 'text/xml');
	          const track = new L.KML(kml);
	          track.eachLayer(layer => {
	        	  var geojson = layer.toGeoJSON();
	        	  Coordinates =  geojson.geometry.coordinates ;   
	          });
	          console.log(Coordinates)
	          var geojsonFeature = {
					    "type": "Feature",
					    "properties": {
					        "name": "Coors Field",
					        "amenity": "Baseball Stadium",
					        "popupContent": "This is where the Rockies play!"
					    },
					    "geometry": {
					        "type": "Polygon",
					        "coordinates": Coordinates
					    }
					};
			     var geoJSON =	L.geoJSON(geojsonFeature).addTo(map);
			     map.fitBounds(geoJSON.getBounds());
			     drawnItems.addLayer(geoJSON);
	  	    
	      }
	      reader.readAsText(file);
	      
	    }
	  }
	  
	 
	function IsFormComplete (){
	    
		$("div.form-group").removeClass("has-error");
		FormOk = true;
		if (FormOk == true && $.trim(document.getElementById('txtName').value) == "") {
	
			var div = $("#txtName").parent("div.form-group");
			div.addClass("has-error");
			window.parent.AlertFunction(window.parent.jQuery.i18n.prop('Zones_AlertZoneName'));
			setTimeout(() => {
				$("#txtName").focus();
				}, "2600")
	
			FormOk = false;
		} else {
			var div = $("#txtName").parent("div.form-group");
			div.removeClass("has-error");
		}
		
		if (FormOk == true) {
			checkNameExisting();	    
		}
		
	}
	
    
    function checkNameExisting(){

    	var zoneName = $.trim(document.getElementById('txtName').value);
    	$.ajax({
			type : 'Get',
			url : BackendServiceIPAddress
			+ '/api/zones/GetByName/' + encodeURIComponent($.trim(zoneName)),
			cache : false,
			async: false,
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
    
    
	function IsFormCompleteTwo() {
		
		$("div.form-group").removeClass("has-error");
		FormOk == true;
		
		if ( FormOk == true && Coordinates == "") {
			window.parent.AlertFunction(window.parent.jQuery.i18n.prop('Zones_AlertSelectZone'));
			FormOk = false;
		}  
		
		
		if (FormOk == true) {
		    SendRequest();	    
		}
		
	}
	
	
	function Cancel() {
		if(isZoneManagement == 0){
			window.parent.loadpage('Interfaces/Zones/Zones.jsp', 'ZonesManagement');
		} else {
			window.parent.Custombox.modal.close();
		}
				
	}
	
	
function SendRequest() {
		
		var TYPE = $('input[name=PublicType]:checked').val();
		var ZoneName = $.trim($('#txtName').val());
		
		 var ZoneObj = {};
		 ZoneObj.name = ZoneName;
		 ZoneObj.location = JSON.stringify(
				 {"location":{
				 "type": "Polygon",
				 "coordinates":Coordinates
				 }
		 });

		 var JSONobj = JSON.stringify(ZoneObj);
		console.log(JSONobj);
		var totalCoordinates = 0;
	    if (Coordinates && Coordinates.length > 0) {
	        Coordinates.forEach(polygon => {
	            if (polygon && polygon.length) {
	                totalCoordinates += polygon.length;
	            }
	        });
	    }

	    if (totalCoordinates > 100) {
	    	window.parent.AlertFunction(window.parent.jQuery.i18n.prop('Zones_AlertTotalCoordinates'));
	    	}

  		$.ajax({
			type : 'post',
			url : BackendServiceIPAddress
			+ '/api/zones',
			cache : false,
			data : JSONobj,
			contentType: "application/json",
			success : function(data) {
				
				if(isZoneManagement == 0){
					if (data.statusCode === 200) {

						 window.parent.loadpage('Interfaces/Zones/Zones.jsp?AddNewPage=1', 'ZonesManagement');
						 } 
					 else {
					 
						 window.parent.loadpage('Interfaces/Zones/Zones.jsp?AddNewPage=-1', 'ZonesManagement');

						}
				} else {
					if (data.statusCode === 200) {

						window.parent.AlertFunction(window.parent.jQuery.i18n.prop('Zones_AlertAddZone'));
				   	   	window.parent.Custombox.modal.close();
				   	  	window.parent.FillZoneByID(data.result.id)
					} else {
						window.parent.Custombox.modal.close();
						window.parent.AlertFunction("Failed to add new zone");

					}
				}
				 
			}
		});  
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