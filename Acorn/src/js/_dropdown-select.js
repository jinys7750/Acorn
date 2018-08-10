// make dropdown behaviour like select element
$('[data-select]').each(function() {
  var This     = $(this);
  var Select   = $('#'+This.data('select'));
  var Toggle   = This.parent().find('.dropdown-toggle');
  var Item     = This.find('.dropdown-item');
  var Selected = This.find('[data-value="'+Select.val()+'"]');

  Toggle.html(Selected.html()); // set dropdown toggle based on selected value

  Item.click(function(){
    if ($(this).data('value') != Select.val()) {
      Toggle.html($(this).html()); // update dropdown-toggle content
      Select.val($(this).data('value')).trigger('change'); // update value, trigger change event
    }
    Toggle.focus(); // Keep focused
  });

  // Focused selected item when dropdown shown
  This.parent().on('shown.bs.dropdown', function () {
    This.find('[data-value="'+Select.val()+'"]').trigger('focus');
  });
});