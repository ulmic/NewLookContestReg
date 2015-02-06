#= require jquery
#= require jquery_ujs

$ ->
  $('.logo').css('margin-top', $('.slide').first().height() - 5)
  $('.contest_title').css('margin-top', $('.slide').first().height() * 0.35)
  $('.logo').first().css('margin-top', $('.slide').first().height() - parseFloat($('.contest_title').first().css('margin-top').replace('px', '')) - $('.contest_title').first().height() - 5)
  $('.contest_title').css('margin-left', $('.slide').first().width() - $('.contest_title').first().width())

jQuery(window).load ->
  $('.slider').fractionSlider({
    'pauseOnHover': true,
    'pager': $('#pager')
  })
