$(function(){
  $(".modal-open_registration").on("click", function(e) {
    e.preventDefault();
    $(this).blur();
    if($("#modal-overlay")[0]) return false ;
    $("body").append('<div id="modal-overlay"</div>');
    $("#modal-overlay").fadeIn("slow");
    $(".modal-content").fadeIn("slow");
  });

  $(".modal-close").on("click", function() {
    $(".modal-content").fadeOut("fast");
    $("#modal-overlay").remove();
  });
});
