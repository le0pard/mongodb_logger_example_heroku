jQuery ->
  TestsLib.init()

TestsLib = 
  init: ->
    $(document).on 'click', 'a.alert-close', (event) =>
      $(event.target).parent('div.alert-box').slideUp('fast')
      return false