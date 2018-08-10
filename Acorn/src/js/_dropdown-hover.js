// Show dropdown on hover
$('.main-nav .nav-item.dropdown').hover(function() {
  $(this).addClass('show').find('> .dropdown-menu').addClass('show');
}, function() {
  $(this).removeClass('show').find('> .dropdown-menu').removeClass('show');
});