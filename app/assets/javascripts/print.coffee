$(->
  $('a.print').click(->
    $(this).closest('tr').addClass('printable')
    $.get('/survey_files/320?adapter=_list_inline_adapter', (response) ->
      r = $(response)
      r.find('a.as_cancel').remove()
      r.print()
    )
    return false
  )
)
