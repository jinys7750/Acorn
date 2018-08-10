// make header 'sticky' using fixed position for cross browser compatibility
var header  = $('.middle-header');
var wrapper = $('<div id="wrapper"></div>'); header.before(wrapper);
var ost     = wrapper.offset().top;
var fixtop  = 'fixed-top';
var last    = $(window).scrollTop();

$(window).on('load scroll resize', function() {
  var headerHeight = header.outerHeight(), scrollTop = $(this).scrollTop();
  if (scrollTop < last) {
    if (scrollTop <= ost) {
      header.hasClass(fixtop) && header.removeClass(fixtop);
      wrapper.height(0);
    }
  } else {
    if (scrollTop >= ost + headerHeight + 20) {
      header.addClass(fixtop);
      wrapper.height(headerHeight);
    };
  };
  last = scrollTop;
});