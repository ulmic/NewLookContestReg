enable_submit = ->
  if $('#user_accept_agreement').prop('checked') == true
    $('#send_request').prop('disabled', false)
  else
    $('#send_request').prop('disabled', true)
  return

$(document).ready ->
  $('#send_request').prop('disabled', true)
  if $('#user_municipality').val().substring(0, 2) == 'г.'
    $('#user_city').val($('#user_municipality').val())
  $('#user_municipality').on 'change', ->
    if $(this).val().substring(0, 2) == 'г.'
      $('#user_city').val($(this).val())
    else
      $('#user_city').val('')
    return
  $('#user_accept_agreement').change ->
    enable_submit()
    return
  return
