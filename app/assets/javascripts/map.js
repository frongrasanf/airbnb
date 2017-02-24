$(function(){

  function initialize() {
    var input = document.getElementById("location__input");
    var options = {
        types: ['(cities)'],
    };
    autocomplete = new google.maps.places.Autocomplete( input, options);
  }
  google.maps.event.addDomListener( window, 'load', initialize);

  $(".search__form__submit__btn").on("click", function(){
    var input = document.getElementById("location__input");
    var searchLocation = input.value;
    var geocoder = new google.maps.Geocoder();
    var address = searchLocation;
  })

  var geocoder = new google.maps.Geocoder();
  geocoder.geocode({ 'address': "渋谷区渋谷",'language':'ja' }, function(results, status){
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

