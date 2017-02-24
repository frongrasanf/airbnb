$(function() {
  var map = new google.maps.Map( document.getElementById('map-canvas'), {
    zoom: 15,
    center: new google.maps.LatLng(35.792621, 139.806513),
  });

  var circle = new google.maps.Circle({
    center: new google.maps.LatLng(33.839947, 132.75110700000008) ,
    map: map,
    radius: 1000,
    fillColor: "pink"
  });

  map.fitBounds(circle.getBounds());
});
