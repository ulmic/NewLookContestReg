enable_submit = (model_name) ->
  if $("##{model_name}_accept_agreement").prop('checked') == true
    $('#send_request').prop('disabled', false)
  else
    $('#send_request').prop('disabled', true)
  return

init_form = (model_name) ->
  $('#send_request').prop('disabled', true)
  if $("##{model_name}_municipality").val().substring(0, 2) == 'г.'
    $("##{model_name}_city").val($("##{model_name}_municipality").val())
  $("##{model_name}_municipality").on 'change', ->
    if $(this).val().substring(0, 2) == 'г.'
      $("##{model_name}_city").val($(this).val())
    else
      $("##{model_name}_city").val('')
    return
  $("##{model_name}_accept_agreement").change ->
    enable_submit model_name
    return
  enable_submit model_name
  if ($("##{model_name}_creative_work").val() != '' || $("##{model_name}_url_creative_work").val() != '') && $("##{model_name}_accept_agreement").prop('checked') == true
    $("##{model_name}_accept_agreement").prop('disabled', true)


$ ->
  init_form 'informat_participant'
  return
