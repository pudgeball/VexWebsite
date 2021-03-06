$(document).ready(function() {
	var location = $('#location').text();
	var map;
	
	var geoCoder = new google.maps.Geocoder();
	
	geoCoder.geocode( {'address': location }, function(results, status) {
		if (status == google.maps.GeocoderStatus.OK) {
			map.setCenter(results[0].geometry.location)
			
			var marker = new google.maps.Marker({
				map: map,
				position: results[0].geometry.location
			});
		} else {
			console.log("GMaps Error: " + status);
		}
	});
	
	map = new google.maps.Map(document.getElementById("map"), {
		center: new google.maps.LatLng(0.0, 0.0),
		zoom: 15,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	});
	
	
});