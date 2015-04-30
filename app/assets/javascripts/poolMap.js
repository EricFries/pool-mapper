 function initialize() {
        var mapOptions = {
          center: { lat: 40.7033127, lng: -73.979681},
          zoom: 11
        };
        var map = new google.maps.Map(document.getElementById('map-canvas'),
            mapOptions);
        var marker = new google.maps.Marker({
      position: mapOptions.center,
      map: map,
       animation: google.maps.Animation.DROP,
      title: 'Hello World!'
  });
      }
      google.maps.event.addDomListener(window, 'load', initialize);