$(function(){

  var hidden_keyword = $(".search__result__container__index");

  function initialize() {
    var input = document.getElementById("location__input");
    var options = {
        types: ['(cities)'],
    };
    autocomplete = new google.maps.places.Autocomplete( input, options);
  }
  google.maps.event.addDomListener( window, 'load', initialize);

  if (hidden_keyword.length) {
    $(window).load(function() {
      var geocoder = new google.maps.Geocoder();
      var location = hidden_keyword.attr('data-location');
      geocoder.geocode({ 'address': location,'language':'ja' }, function(results, status){
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
  }

  if ($(".room__location").length) {
    var lat = $(".main__room__navi__location__lat").attr('data-lat');
    var lng = $(".main__room__navi__location__lng").attr('data-lng');

    var centerPosition = new google.maps.LatLng(lat, lng);
    var option = {
      zoom : 18,
      center : centerPosition,
      mapTypeId : google.maps.MapTypeId.ROADMAP
    }
    var roomMap = new google.maps.Map(document.getElementById("room__map"), option);
  }
});

