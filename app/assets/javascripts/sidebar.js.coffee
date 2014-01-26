$(document).on "page:change", ->
  $("#menu-toggle").click (e) ->
    e.preventDefault()
    $("#wrapper").toggleClass "active"
