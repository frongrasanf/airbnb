$(function() {
  $(".datetime-picker").datetimepicker({
    locale: "ja",
    format: "YYYY/MM/DD",
    minDate: new Date(),
    icons: {
      next: "fa fa-arrow-right",
      previous: "fa fa-arrow-left"
    }
  });
});
