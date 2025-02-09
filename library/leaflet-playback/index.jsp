<!DOCTYPE html>
<html>

<head>
    <title>LeafletPlayback</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.css" rel="stylesheet" type="text/css" />    
    <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" type="text/css" />   
    <link href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css" />    
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />    
    <link href="http://jdewit.github.io/bootstrap-timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet" type="text/css" />
    <link href="http://cdnjs.cloudflare.com/ajax/libs/Leaflet.awesome-markers/2.0.0/leaflet.awesome-markers.css" rel="stylesheet" type="text/css" />
    
    <link href="index.css" rel="stylesheet" type="text/css" />

<style>
#title_container {
    z-index: 10000;
    position: fixed;
    left: 100px;
}

body {
        font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    }

h1 {
    font-size: 36px;
    font-weight: 300;
    line-height: 1.1;
}

.datetimeControl p {
    margin: 0;
    font-size: 16px;
}
</style>
</head>

<body>
   
    <div id="map"></div>

    <script src="http://code.jquery.com/jquery-1.11.0.js"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.min.js"></script>

    <script src="http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.js"></script>    
    <script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>    
    <script src="http://jdewit.github.io/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>    
    <script src="http://cdnjs.cloudflare.com/ajax/libs/Leaflet.awesome-markers/2.0.0/leaflet.awesome-markers.js"></script>

    <script src="dist/LeafletPlayback.js"></script>
    <script src="data/demo/demo-tracks.js"></script>
    
    <script src="indexControl.js"></script>
    <script src="index.js"></script>
</body>
</html>
