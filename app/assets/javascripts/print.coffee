$(->
  $('body').on('click', 'a.print', ->
    row = $(this).closest('tr')
    row.addClass('printable')

    regexp = /\/(.*?)\/(.*?)\//g
    results = regexp.exec(row.attr('data-refresh'))

    controller = results[1]
    id = results[2]

    $.get("/#{controller}/#{id}?adapter=_list_inline_adapter", (response) ->
      r = $(response)
      r.find('a.as_cancel').remove()
      r.print()
    )
    return false
  )
)
