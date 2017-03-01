$(function(){

  // 検索結果のビューに地図を表示
  var hidden_keyword = $(".search__result__container__index");
  if (hidden_keyword.length) {
    var geocoder = new google.maps.Geocoder();
    var location = hidden_keyword.attr("data-location");
    geocoder.geocode({ "address": location,"language": "ja" }, function(results, status){
      if (status == google.maps.GeocoderStatus.OK) {
        var latlng = results[0].geometry.location;
        var mapOpt = {
          center: latlng,
          zoom: 15,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("map-canvas"),mapOpt);
      }else {
        alert("Geocode was not successful for the following reason: " + status);
      }
    });
  }

  //ユーザーが入力した地名の緯度・経度を算出し、hiddenのvalueに返す
  //hidden parameterとして送られた緯度・経度を元に、周辺の宿泊施設を検索
  $("#location__input").on("keyup", function(){
    var input = document.getElementById("location__input");
    var word = input.value;
    var geocoder = new google.maps.Geocoder();
    geocoder.geocode({"address": word }, function(results, status){
      if(status == google.maps.GeocoderStatus.OK) {
        var lat = results[0].geometry.location.lat();
        var lng = results[0].geometry.location.lng();
        var lat1 = document.getElementById("hidden__latitude");
        var lng1 = document.getElementById("hidden__longitude");
        lat1.value = lat.toFixed(6);
        lng1.value = lng.toFixed(6);
      }
    });
  });

  // 詳細画面に地図を表示
  if ($(".room__location").length) {
    var lat = $(".room__navi__location__lat").attr("data-lat");
    var lng = $(".room__navi__location__lng").attr("data-lng");

    var centerPosition = new google.maps.LatLng(lat, lng);
    var option = {
      zoom : 15,
      center : centerPosition,
      mapTypeId : google.maps.MapTypeId.ROADMAP
    }
    var roomMap = new google.maps.Map(document.getElementById("room__map"), option);
  }
});
