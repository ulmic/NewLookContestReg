#= require jquery
#= require jquery_ujs

jQuery(window).load ->
  $('.slider').fractionSlider({
    'pauseOnHover': true,
    'pager': $('#pager')
  })
