$(function(){

  $(".datepicker").datepicker({
    language: 'ja',
    autoclose : true,
    startDate: Date()
  });

  function computeDate(year, month, day, addDays) {
    var dt = new Date(year, month - 1, day);
    var baseSec = dt.getTime();
    var addSec = addDays * 86400000;
    var targetSec = baseSec + addSec;
    dt.setTime(targetSec);
    return dt;
  }

  $(".datepicker1").datepicker().on("changeDate", function(e) {
    $(".datepicker2").datepicker("show");
    selected_date = e["date"];
    yyyy = selected_date.getFullYear();
    mm = selected_date.getMonth() + 1;
    dd = selected_date.getDate() + 1;
    sd = computeDate(yyyy, mm, dd, 0);
    $(".datepicker2").datepicker("setStartDate", sd);
  });
});
