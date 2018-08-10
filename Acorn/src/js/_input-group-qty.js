$('.input-group-qty').each(function() {
  var that = $(this),
      input = that.find('input[type="text"]'),
      down = that.find('.btn-down'),
      up = that.find('.btn-up'),
      min = input.data('min'),
      max = input.data('max'),
      min = (min == undefined) || (min == '') || (min < 0) ? 0 : min,
      max = (max == undefined) || (max == '') || (max < 0) ? 1000 : max; // maximum 1000 qty
  input.change(function() {
    if (!$.isNumeric($(this).val()) || $(this).val() < min) {
      $(this).val(min);
    } else if ($(this).val() > max) {
      $(this).val(max);
    }
  });
  up.click(function() {
    input.val(parseInt(input.val()) + 1).trigger('change');
  });
  down.click(function() {
    input.val(parseInt(input.val()) - 1).trigger('change');
  });
});

// select all on focus
$('.input-group-qty input').on('focus', function() {
    $(this).one('mouseup', function() {
      $(this).select();
      return false;
    }).select();
});