$(->
  $('a.print').click(->
    $(this).closest('tr').addClass('printable')
    $('.printable').print()
    return false
  )
)
