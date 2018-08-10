// Back to Top
$(window).scroll(function() {
  if ($(this).scrollTop() > 200) {
    $('.back-top').fadeIn();
  } else {
    $('.back-top').fadeOut();
  }
});
$('#back-top').click(function(e) {
	$('body, html').animate({
		scrollTop:0
	}, 500);
	e.preventDefault();
});