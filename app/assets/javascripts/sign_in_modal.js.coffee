$(document).on "page:change", ->
  $("#openBtn").click ->
    $("#myModal").modal show: true
