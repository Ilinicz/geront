$(document).on "page:change", ->
  $("#affix").affix offset:
    top: $("header").height()
