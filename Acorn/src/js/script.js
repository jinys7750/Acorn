var breakpoint = {
  refreshValue: function() {
    this.value = window.getComputedStyle(document.querySelector('body'), ':before').getPropertyValue('content').replace(/\"/g, '');
  }
};

$(window).resize(function() {
  breakpoint.refreshValue();
}).resize();


// This for dev, show breakpoint to title
/*var doc_title = document.title;
$(window).resize(function() {
  document.title = '('+breakpoint.value+') '+doc_title;
}).resize();*/

$(function() {
  //=include _dropdown-select.js
  //=include _sticky-header.js
  //=include _dropdown-hover.js
  //=include _toggle-search.js
  //=include _typeahead.js
  //=include _slider.js
  //=include _countdown.js
  //=include _input-group-qty.js
  //=include _detail.js
  //=include _back-top.js
  //=include _raty-icon.js
  $('[data-toggle="tooltip"]').tooltip();

  // show static quickview for demo purpose
  $('.show-quickview').click(function(event) {
    $('#quickviewModal').modal('show');
  });
});