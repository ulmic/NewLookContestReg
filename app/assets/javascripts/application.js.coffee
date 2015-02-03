#= require jquery
#= require jquery_ujs

$ ->
  $('.logo').css('margin-top', $('.slide').first().height() - 5)

jQuery(window).load ->
  $('.slider').fractionSlider({
    'pauseOnHover': true,
    'pager': $('#pager')
  })
