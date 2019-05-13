<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>독도는 우리 땅</title>

    <meta charset="utf-8">
    <style>

      #map {
      	margin:0px;
      	padding:0px;
        height: 425px;
        width: 750px;
 		margin-top: 100px;
      }
      /* Optional: Makes the sample page fill the window. */

    </style>
  </head>
  <body>
 
    <div id="map"></div>

    <script>
      function initMap() {
        var myLatlng = {lat: 37.4663282, lng: 126.930714};

        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 6,
          center: myLatlng
        });

		var con='Mirim Mister School';
		var infowindow = new google.maps.InfoWindow({content:con});
        var marker = new google.maps.Marker({
          position: myLatlng,
          map: map,
          title: 'Click to zoom'
        });
		//attachSecretMessage(marker, message);

        map.addListener('center_changed', function() {
          // 3 seconds after the center of the map has changed, pan back to the
          // marker.
          window.setTimeout(function() {
            map.panTo(marker.getPosition());
          }, 3000);
        });

		//function attachSecretMessage(marker, secretMessage) {
        //var infowindow = new google.maps.InfoWindow({
         // content: secretMessage
        //});

        marker.addListener('click', function() {
          map.setZoom(15);
          map.setCenter(marker.getPosition());
		  //infowindow.open(marker.get('map'), marker);

        });
		google.maps.event.addListener(marker, 'click',function(){
			infowindow.open(map, marker);
		});

      }
    </script>

    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA7nnoG8FxJ8CcMFYcE_isUIH-GUFvu4jA&callback=initMap">

    </script>
  </body>
</html>