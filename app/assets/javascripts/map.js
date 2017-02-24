$(function(){
  var geocoder = new google.maps.Geocoder();
  var address = "渋谷区渋谷";
  geocoder.geocode({'address': address,'language':'ja'},function(results, status){
    if (status == google.maps.GeocoderStatus.OK) {
      var latlng = results[0].geometry.location;
      var mapOpt = {
        center: latlng,
        zoom: 15,
        mapTypeId: google.maps.MapTypeId.ROADMAP
      };
      var map = new google.maps.Map(document.getElementById('map-canvas'),mapOpt);
    }else {
      alert("Geocode was not successful for the following reason: " + status);
    }
  });
});
