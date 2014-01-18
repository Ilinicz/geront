#$(document).ready ->
#  $("[data-toggle=offcanvas]").click ->
#    $(".row-offcanvas").toggleClass "active"
$(document).on "page:change", ->
  $("[data-toggle=offcanvas]").click ->
    $(".row-offcanvas").toggleClass "active"
