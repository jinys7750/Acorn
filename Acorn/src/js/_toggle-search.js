toggleSearch = function() {
  $('.input-search-wrapper').toggleClass('invisible');
  $('#input-search').typeahead('val', '').focus();
}

$('.toggle-search').click(function(e) {
  toggleSearch();
  e.preventDefault();
  e.stopPropagation();
});

$('#input-search').keyup(function(e) {
  if (e.keyCode === 27) {
    toggleSearch(); // close with esc key
  }
});