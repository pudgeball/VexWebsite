$(document).ready(function() {
	console.log("hello");
	
	var location = $('#location').text();
	var geoLocation;
	
	var geoCoder = new google.maps.Geocoder()
	
	geoCoder.geocode( {'address': location }, function(results, status) {
		if (status == google.maps.GeocoderStatus.OK) {
			geoLocation = results[0].geometry.location
		} else {
			console.log(status);
		}
	});
	
	console.log(geoLocation);
	
	var myOptions = {
		center: new google.maps.LatLng(-34.397, 150.644),
		zoom: 8,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	};
	var map = new google.maps.Map(document.getElementById("map"), myOptions);
});

/*
var address = document.getElementById("address").value;
    geocoder.geocode( { 'address': address}, function(results, status) {
      if (status == google.maps.GeocoderStatus.OK) {
        map.setCenter(results[0].geometry.location);
        var marker = new google.maps.Marker({
            map: map, 
            position: results[0].geometry.location
        });
      } else {
        alert("Geocode was not successful for the following reason: " + status);
      }
    });*/