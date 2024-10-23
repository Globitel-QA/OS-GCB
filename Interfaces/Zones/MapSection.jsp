<!DOCTYPE html>
<html>
<%@ include file="../../library/Common/Common.jsp"%>
<head>
<title>Turf Circle Example</title>

<script
	src="../../library/jquery/2.2.0/jquery.min.js"></script>


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

<link
	href="../../theme/assets/global/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />

<!-- BEGIN THEME GLOBAL STYLES -->
<link href="../../theme/assets/global/css/components.min.css"
	rel="stylesheet" id="style_components" type="text/css" />
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Turf.js/7.0.0-alpha.0/turf.min.js"></script>
	


<style>
html, body {
	width: 96%;
	height: 100%;
}

#map {
	width: 100%;
	height: 100%;
	position: absolute !important;
}

.leaflet-control-layers-scrollbar {
	overflow-y: hidden;
}

html, body {
    width: 97%;
    height: 100%;
}

</style>
</head>
<body>

	<div class="row">
		<div class="col-lg-12">

			<div id="map"></div>

			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br>

		</div>
	</div>


	<script>
		  
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

	var MapUrl;
	$.ajax({
	    type: 'post',
	    url: '../../UsersControlPath_GCB',
	    data: 'MethodName=GetMapUrl',
	    cache: false,
	    async: false,
	    success: function(data) {
	        MapUrl = data.trim();
	    }
	});

	var googleMapsUrl = MapUrl; // Google Maps tile URL obtained dynamically
	var googleAttrib = '&copy; Google Maps'; // Attribution for Google Maps

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
	        edit: false,
	        remove: false
	    },
	    draw: {
	        polyline: false,
	        circlemarker: false,
	        rectangle: false,
	        polygon: false,
	        circle: false,
	        marker: false
	    }
	}));

	map.on(L.Draw.Event.CREATED, function(event) {
	    var layer = event.layer;
	    var type = event.layerType;

	    drawnItems.addLayer(layer);
	});

	function onDelete() {
	    drawnItems.clearLayers();
	    map.setView([Latitude, Longitude], 7);
	}

	var popup = L.popup();
	function onMapClick(e) {
	    popup.setLatLng(e.latlng).setContent(
	        "You clicked the map at " + e.latlng.toString())
	        .openOn(map);
	}
	map.on('click', onMapClick);

	function DrawShape(coordinates, type, name) {
	    drawnItems.clearLayers();
	    if (type == "Polyline") {
	        var polyline = L.polyline(coordinates);
	        polyline.addTo(map).bindPopup(name).openPopup();
	        map.fitBounds(coordinates);
	    } else if (type == "Polygon") {
	        var geojsonFeature = {
	                "type": "Feature",
	                "properties": {
	                    "name": "Original Polygon",
	                    "popupContent": "This is the original polygon!"
	                },
	                "geometry": {
	                    "type": "Polygon",
	                    "coordinates": coordinates
	                }
	            };

	            var buffered = turf.buffer(geojsonFeature, 0.1, { units: 'kilometers' }); // Buffer by 10 km

	            var bufferedPolygon = L.geoJSON(buffered).addTo(map);
	            map.fitBounds(bufferedPolygon.getBounds());

	            drawnItems.addLayer(bufferedPolygon);
	        } else if (type == "Circle") {
	        // Handle Circle drawing
	    } else if (type == "Marker") {
	        // Handle Marker drawing
	    }
	}

	function DrawCells() {
	    map.eachLayer(layer => {
	        drawnItems.removeLayer(layer);
	    });

	    // Fetch KML data and handle it
	    setTimeout(function() {
	        fetch('././Example/data.kml')
	            .then(res => res.text())
	            .then(kmltext => {
	                // Parse KML and handle overlay
	                const parser = new DOMParser();
	                const kml = parser.parseFromString(kmltext, 'text/xml');
	                const track = new L.KML(kml);

	                const bounds = track.getBounds();
	                map.fitBounds(bounds);

	                track.eachLayer(layer => {
	                    drawnItems.addLayer(layer);
	                });
	            });
	    }, 1500);
	}

	</script>
</body>
</html>