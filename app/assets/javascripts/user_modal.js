$(function(){
  $(".modal-open_registration").on("click", function(e) {
    e.preventDefault();
    $(this).blur();
    if($("#modal-overlay")[0]) return false ;
    $("body").append('<div id="modal-overlay"</div>');
    var w = $(window).width();
    var h = $(window).height();
    var cw = $("#modal__new").outerWidth();
    var ch = $("#modal__new").outerHeight();
    var pxleft = ((w - cw) / 2);
    var pxtop = ((h - ch) / 2);
    $("#modal__new").css({ "left": pxleft + "px" });
    $("#modal__new").css({ "top": pxtop + "px" });
    $("#modal-overlay").fadeIn("slow");
    $("#modal__new").fadeIn("slow");
  });

  $(".modal-open_login").on("click", function(e) {
    e.preventDefault();
    $(this).blur();
    if($("#modal-overlay")[0]) return false ;
    $("body").append('<div id="modal-overlay"</div>');
    var w = $(window).width();
    var h = $(window).height();
    var cw = $("#modal__login").outerWidth();
    var ch = $("#modal__login").outerHeight();
    var pxleft = ((w - cw) / 2);
    var pxtop = ((h - ch) / 2);
    $("#modal__login").css({ "left": pxleft + "px" });
    $("#modal__login").css({ "top": pxtop + "px" });
    $("#modal-overlay").fadeIn("slow");
    $("#modal__login").fadeIn("slow");
  });

  $(".modal-close").on("click", function() {
    $(".modal-content").fadeOut("fast");
    $("#modal-overlay").remove();
  });
});
