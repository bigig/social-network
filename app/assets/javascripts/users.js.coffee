# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $('#myTab a').click (e) ->
    e.preventDefault()
    $(@).tab('show')

  $('#request_friend').click (e) ->
    $(@).find('a').html 'Request was sent'
