$(document).ready(function(){


	$.ajax({
		url: "/",
		dataType: "script"
	});



	$("#all-pools-link").click(function(e){
		e.preventDefault();
	});

});

function drawMap(){
	var mapOptions = {
	center: { lat: 40.7033127, lng: -73.979681},
	zoom: 11
	};
}