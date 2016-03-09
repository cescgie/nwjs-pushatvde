$(document).ready(function() {
  var timeslider = 0;
  var timesplash = 5000;
  setInterval(function(){
    timeslider += 1;
    var timeprogress = timeslider*1000;
    var progress = timeprogress/timesplash;
    $('#spans').text(progress);
    if(progress<100){
      $('#progressbar div').css('width',progress+'%');
    }
    if(progress==100) {
     $('#splashscreen').fadeOut(500);
    }
  }, 10);
});
