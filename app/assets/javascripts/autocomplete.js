$(function() {

  function initialize() {
    var input = document.getElementById("location__input");
    var options = {
        types: ['(cities)'],
    };
    autocomplete = new google.maps.places.Autocomplete( input, options);
  }
  google.maps.event.addDomListener( window, 'load', initialize);
});
