$(function(){
  $(".room__navi__location").on("click", function(){

    var position = $(".room__location").offset().top;
    $("html, body").animate({
      scrollTop : position
    });
    queue : false
  });

  $(".room__navi__reviews").on("click", function(){

    var position = $(".room__reviews").offset().top;
    $("html, body").animate({
      scrollTop : position
    });
    queue : false
  });
});
