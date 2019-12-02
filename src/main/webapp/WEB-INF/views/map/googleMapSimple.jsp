<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Simple Map</title>
<meta name="viewport" content="initial-scale=1.0">
<meta charset="utf-8">
<style>
/* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
#map {
   height: 100%;
}
/* Optional: Makes the sample page fill the window. */
html, body {
   height: 100%;
   margin: 0;
   padding: 0;
}
</style>
</head>
<body>
   <div id="map"></div>
   <script>
   
      var map;
      function initMap() {
        /*  map = new google.maps.Map(
            document.getElementById('map'), 
            {
               center : {
                  lat : -34.397,
                  lng : 150.644
            },
            zoom : 8
         }); */
         var uluru={
        		 lat: -27.344,
        		 lng: 131.036
         };
         var uluru={
        		 lat: -25.344,
        		 lng: 131.036
         };
         var map = new google.maps.Map(
        	document.getElementById('map'),{
        		zoom: 6, 
        		center: uluru
        	}	 
        	
         );
         
         var marker = new google.maps.Marker({
        	 position: uluru2,
        	 map: map
         });
      }
   </script>
   <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA4t3WgOTsDviBSdMjEwpRP6-9PNAio&callback=initMap"
      async defer></script>
</body>
</html>






