<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Simple Map</title>
<meta name="viewport" content="initial-scale=1.0">
<meta charset="utf-8">
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/alertify.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/alertify.min.css"/>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/themes/default.min.css"/>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <script src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js"></script>
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
         map = new google.maps.Map(
            document.getElementById('map'), 
            {
               center : {
                  lat : -34.397,
                  lng : 150.644
            },
            zoom : 8
         });
      }
   </script>
   <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCy2xqykOJg7SK3h5tEpV7tOlLx0yD5Et4&callback=initMap"
      async defer></script>
      
     <script>
     function initMap() {
         // The location of Uluru
         var uluru = {
            lat : -25.344,
            lng : 131.036
         };
         
         
         var uluru2 = {
                 lat : -27.344,
                 lng : 131.036
              };
         
         // The map, centered at Uluru
         var map = new google.maps.Map(
            document.getElementById('map'), {
            zoom : 4,
            center : uluru
         });
         // The marker, positioned at Uluru
         var marker = new google.maps.Marker({
            position : uluru,
            map : map
         });
         
         var marker2 = new google.maps.Marker({
             position : uluru2,
             map : map
          });
      
         var contentString = 
             '<div id="content">'+
             '<div id="siteNotice">'+
             '</div>'+
             '<h1 id="firstHeading" class="firstHeading">Uluru</h1>'+
             '<div id="bodyContent">'+
             '<p><b>Uluru</b>, also referred to as <b>Ayers Rock</b>, is a large ' +
             'sandstone rock formation in the southern part of the '+
             'Northern Territory, central Australia. It lies 335&#160;km (208&#160;mi) '+
             'south west of the nearest large town, Alice Springs; 450&#160;km '+
             '(280&#160;mi) by road. Kata Tjuta and Uluru are the two major '+
             'features of the Uluru - Kata Tjuta National Park. Uluru is '+
             'sacred to the Pitjantjatjara and Yankunytjatjara, the '+
             'Aboriginal people of the area. It has many springs, waterholes, '+
             'rock caves and ancient paintings. Uluru is listed as a World '+
             'Heritage Site.</p>'+
             '<p>Attribution: Uluru, <a href="https://en.wikipedia.org/w/index.php?title=Uluru&oldid=297882194">'+
             'https://en.wikipedia.org/w/index.php?title=Uluru</a> '+
             '(last visited June 22, 2009).</p>'+
             '</div>'+
             '</div>';
         
             var infowindow = new google.maps.InfoWindow({
                content: contentString
             });
             
             marker.addListener('click', function(){
                infowindow.open(map, marker);
             });
             

             var contentString2 = 
                 '<div class="card" style="width:200px">' +
                '<img class="card-img-top" src="/resources/src/img/parkin.jpg" alt="Card image" width="200px;">' +
                '<div class="card-body">' +
                '<h4 class="card-title">John Doe</h4>' +
                '<p class="card-text">Some example text.</p>' +
                '<a href="#" class="btn btn-primary">See Profile</a>' +
                '</div>' +
                '</div>';
                
             var infowindow2 = new google.maps.InfoWindow({
            	 content: contentString2
             });
             
             marker2.addListener('click', function(){
            	 infowindow2.open(map, marker2);
             });
             
             
             
             
             
     }
     
     
         
     </script> 
</body>
</html>





