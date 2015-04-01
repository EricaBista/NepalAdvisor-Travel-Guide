sendSortRequestOfModel = (model_name) ->
  formData = $('#' + model_name + ' tbody').sortable('serialize')
  formData += "&" + $('meta[name=csrf-param]').attr("content") + "=" + encodeURIComponent($('meta[name=csrf-token]').attr("content"))
  $.ajax
    type: 'post'
    data: formData
    dataType: 'script'
    url: '/admin/' + model_name + '/sort'

jQuery ($) ->

  # home page slides
  if $('body.admin_items.index').length
    $( "#items tbody" ).disableSelection()
    $( "#items tbody" ).sortable
      axis: 'y'
      cursor: 'move'
      update: (event, ui) ->
        sendSortRequestOfModel("items")