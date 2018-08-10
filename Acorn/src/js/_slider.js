
// Setup for responsive image height
var swiperCover = function() {
  $('[data-cover]').each(function() {
    var swiperCover = $(this);
    swiperCover.css('background-image', 'url(' + decodeURIComponent(swiperCover.data('cover')) + ')');
    swiperCover.attr('data-height') && swiperCover.css('height', swiperCover.data('height'));
    switch (breakpoint.value) {
      case 'xs': swiperCover.attr('data-xs-height') && swiperCover.css('height', swiperCover.data('xs-height')); break;
      case 'sm': swiperCover.attr('data-sm-height') && swiperCover.css('height', swiperCover.data('sm-height')); break;
      case 'md': swiperCover.attr('data-md-height') && swiperCover.css('height', swiperCover.data('md-height')); break;
      case 'lg': swiperCover.attr('data-lg-height') && swiperCover.css('height', swiperCover.data('lg-height')); break;
      case 'xl': swiperCover.attr('data-xl-height') && swiperCover.css('height', swiperCover.data('xl-height')); break;
    }
  });
}
$(window).resize(function() {
  swiperCover();
});
swiperCover();


// Home Slider
if ($('.home-slider').length && typeof Swiper !== 'undefined') {
  var homeSlider = new Swiper ('.home-slider', {
    loop: true,
    pagination: {
      el: '.swiper-pagination',
      clickable: true,
    },
    navigation: {
      prevEl: '#home-slider-prev',
      nextEl: '#home-slider-next',
    },
    autoplay: {
      delay: 2500,
      disableOnInteraction: false,
    },
    on: {
      init: function() {
        setTimeout(function() {
          $('.home-slider').find('.swiper-slide-active .animate').each(function() {
            $(this).addClass($(this).data('animate')).addClass('visible');
          });
        }, 100);
      },
    }
  });
  homeSlider.on('slideChange', function() {
    homeSlider.slides.find('.animate').each(function() {
      $(this).removeClass($(this).data('animate')).removeClass('visible');
    });
    $(homeSlider.slides[homeSlider.activeIndex]).find('.animate').each(function() {
      $(this).addClass($(this).data('animate')).addClass('visible');
    });
  });
}


// Brand Slider
if ($('#brand-slider').length && typeof Swiper !== 'undefined') {
  var brandSlider = new Swiper('#brand-slider', {
    navigation: {
      prevEl: '#brand-slider-prev',
      nextEl: '#brand-slider-next',
    },
    slidesPerView: 5,
    spaceBetween: 15,
    slidesPerColumn: 2,
    breakpoints: {
      767: {
        // sm
        slidesPerView: 2,
      },
      991: {
        // md
        slidesPerView: 3,
      },
      1199: {
        // lg
        slidesPerView: 4,
      }
    }
  });
}


// New In Slider
if ($('#newIn-slider').length && typeof Swiper !== 'undefined') {
  var newInSlider = new Swiper('#newIn-slider', {
    navigation: {
      prevEl: '#newInPrev',
      nextEl: '#newInNext',
    },
    slidesPerView: 6,
    spaceBetween: 30,
    breakpoints: {
      575: {
        // xs
        slidesPerView: 2,
        spaceBetween: 8,
      },
      767: {
        // sm
        slidesPerView: 3,
        spaceBetween: 8,
      },
      991: {
        // md
        slidesPerView: 4,
        spaceBetween: 8,
      },
      1199: {
        // lg
        slidesPerView: 5,
      }
    }
  });
}

// Quickview Slider
if ($('#quickview-slider').length && typeof Swiper != undefined) {
  var quickviewSlider = new Swiper ('#quickview-slider', {
    pagination: {
      el: '.swiper-pagination',
      clickable: true,
    },
    navigation: {
      prevEl: '#quickview-prev',
      nextEl: '#quickview-next',
    },
    lazy: true
  });
  $('#quickviewModal').on('shown.bs.modal', function (e) {
    quickviewSlider.update();
  });
}


// Price Range Slider
if ($('#price-range-slider').length && typeof Swiper !== 'undefined') {
  var priceRange = document.getElementById('price-range-slider');
  noUiSlider.create(priceRange, {
    start: [20, 80],
    connect: true,
    range: {
      'min': 0,
      'max': 100
    }
  });
  priceRange.noUiSlider.on('update', function(values, handle) {
    var value = values[handle];
    handle ? $('#max-price').val(Math.round(value)).attr('value', Math.round(value)) : $('#min-price').val(Math.round(value)).attr('value', Math.round(value));
  });
  $('#max-price').on('change', function() {
    priceRange.noUiSlider.set([null, this.value]);
  });
  $('#min-price').on('change', function() {
    priceRange.noUiSlider.set([this.value, null]);
  });
}


// Rating Range Slider
if ($('#rating-range').length && typeof Swiper !== 'undefined') {
  var ratingRange = document.getElementById('rating-range');
  noUiSlider.create(ratingRange, {
    start: [$('#min-range').val(), $('#max-range').val()],
    connect: true,
    orientation: 'vertical',
    snap: true,
    direction: 'rtl',
    range: {
      'min': 1,
      '25%': 2,
      '50%': 3,
      '75%': 4,
      'max': 5,
    },
    pips: {
      mode: 'values',
      values: [1, 2, 3, 4, 5]
    }
  });
  ratingRange.noUiSlider.on('update', function(values, handle) {
    var ratingDom = $('#rating-range');
    ratingDom.find('.noUi-value[style="bottom: 100%;"]').html('<div class="rating"><i class="material-icons md-1 align-text-top">star_border</i><i class="material-icons md-1 align-text-top">star_border</i><i class="material-icons md-1 align-text-top">star_border</i><i class="material-icons md-1 align-text-top">star_border</i><i class="material-icons md-1 align-text-top">star_border</i></div>');
    ratingDom.find('.noUi-value[style="bottom: 75%;"]').html('<div class="rating"><i class="material-icons md-1 align-text-top">star_border</i><i class="material-icons md-1 align-text-top">star_border</i><i class="material-icons md-1 align-text-top">star_border</i><i class="material-icons md-1 align-text-top">star_border</i></div>');
    ratingDom.find('.noUi-value[style="bottom: 50%;"]').html('<div class="rating"><i class="material-icons md-1 align-text-top">star_border</i><i class="material-icons md-1 align-text-top">star_border</i><i class="material-icons md-1 align-text-top">star_border</i></div>');
    ratingDom.find('.noUi-value[style="bottom: 25%;"]').html('<div class="rating"><i class="material-icons md-1 align-text-top">star_border</i><i class="material-icons md-1 align-text-top">star_border</i></div>');
    ratingDom.find('.noUi-value[style="bottom: 0%;"]').html('<div class="rating"><i class="material-icons md-1 align-text-top">star_border</i></div>');
    var value = values[handle];
    handle ? $('#max-range').val(Math.round(value)).attr('value', Math.round(value)) : $('#min-range').val(Math.round(value)).attr('value', Math.round(value));
    var min_range = $('#min-range').val();
    var max_range = $('#max-range').val();
    var max_range = max_range == '' ? min_range : max_range;
    for (var i = min_range; i < parseInt(max_range) + 1; i++) {
      switch(i) {
        case 5: case '5': var percent = '100%'; break;
        case 4: case '4': var percent = '75%'; break;
        case 3: case '3': var percent = '50%'; break;
        case 2: case '2': var percent = '25%'; break;
        case 1: case '1': var percent = '0%'; break;
      }
      ratingDom.find('.noUi-value[style="bottom: '+percent+';"]').find('.material-icons').text('star');
    }
  });
  $('#max-range').on('change', function() {
    ratingRange.noUiSlider.set([null, this.value]);
  });
  $('#min-range').on('change', function() {
    ratingRange.noUiSlider.set([this.value, null]);
  });
}