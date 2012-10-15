$(->
  $('body').on('change', '#record_prefix', ->
    if $('#record_prefix').val() == ''
      $('#record_plan_number').val('').focus()
      return

    $.get('/plan_files/latest.json', {prefix: $('#record_prefix').val()}, (data) ->
      $('#record_plan_number').val(parseFloat(data + 1).toFixed(2))
    )
  )

  $('body').on('focus', '#record_survey_file', ->
    if $('#record_plan_number').val() == ''
      $.get('/plan_files/latest.json', {prefix: $('#record_prefix').val()}, (data) ->
        $('#record_plan_number').val(parseFloat(data + 1).toFixed(2))
      )
  )

  $('body').on('submit', 'form.as_form', ->
    v = $('#record_prefix').val() + $('#record_plan_number').val()
    $('#record_plan_number').val(v)
  )
)
