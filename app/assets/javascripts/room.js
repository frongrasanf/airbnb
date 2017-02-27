$(function(){
  $(".room__navi__location").on("click", function(){

    var position = $(".room__location").offset().top;
    $("html, body").animate({
      scrollTop : position
    });
    queue : false
  });
});
