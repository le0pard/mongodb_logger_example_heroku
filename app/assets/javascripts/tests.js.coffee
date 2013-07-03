$ ->
  $(document).on 'click', 'a.alert-close', (e) =>
    e.preventDefault()
    $(e.target).parent('div.alert-box').slideUp('fast')