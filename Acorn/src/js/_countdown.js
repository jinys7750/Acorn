// example countdown 6 hours from now for flash sale
var countdown = new Date(); countdown.setHours(countdown.getHours() + 6);
if ($('#flash-sale-countdown').length) {
  $('#flash-sale-countdown').countdown(countdown, function(event) {
    $(this).text(event.strftime('%H:%M:%S'));
  });
}