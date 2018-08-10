// Detail Slider
if ($('#detail-slider').length && typeof Swiper != undefined) {
  var detailSlider = new Swiper ('#detail-slider', {
    on: {
      init: function() {
        setTimeout(function() {
          $('.detail-gallery .swiper-slide:first-child .img-thumbnail').addClass('active');
        }, 100);
      },
    }
  });
  detailSlider.on('slideChange', function() {
    detailGallery.slideTo(detailSlider.activeIndex);
    $('.detail-gallery .swiper-slide .img-thumbnail').removeClass('active');
    $('.detail-gallery .swiper-slide').eq(detailSlider.activeIndex).find('.img-thumbnail').addClass('active');
  });
}


// Detail Gallery
if ($('#detail-gallery').length && typeof Swiper != undefined) {
  var detailGallery = new Swiper ('#detail-gallery', {
    slidesPerView: 4,
    spaceBetween: 5,
    navigation: {
      prevEl: '#detail-gallery-prev',
      nextEl: '#detail-gallery-next',
    }
  });
  if ($('.detail-gallery .swiper-slide').length <= 4) {
    $('#detail-gallery-prev, #detail-gallery-next').remove();
  }
}

$('.detail-gallery .swiper-slide a').click(function(event) {
  detailSlider.slideTo( $('.detail-gallery .swiper-slide a').index(this) );
  event.preventDefault();
});


var parseThumbnailElements = function() {
  var items = [];
  $('#detail-slider img').each(function(index, el) {
    item = {
      src: el.getAttribute('src'),
      w: parseInt(el.getAttribute('data-width'), 10),
      h: parseInt(el.getAttribute('data-height'), 10)
    };
    items.push(item);
  });
  return items;
}


var openPhotoSwipe = function(activeIndex) {
  activeIndex = typeof activeIndex !== 'undefined' ? activeIndex : 0;
  var pswpElement = document.querySelectorAll('.pswp')[0];
  var items = parseThumbnailElements();
  var options = {
      index: activeIndex
  };
  var gallery = new PhotoSwipe( pswpElement, PhotoSwipeUI_Default, items, options);
  gallery.init();
}


$('.btn-zoom').click(function(event) {
  openPhotoSwipe(detailSlider.activeIndex);
  event.preventDefault();
});
