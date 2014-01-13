#$(document).ready ->
#  $("[data-toggle=offcanvas]").click ->
#    $(".row-offcanvas").toggleClass "active"
$(document).on "page:change", ->
  $("body").on "click", "[data-toggle=offcanvas]", ->
    $('.row-offcanvas').toggleClass "active"
