# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/



$(document).ready( ->
  is_wife = ->
    position_in_household = position_in_household_box.val()
    position_in_household == 'wife'  || position_in_household == 'Wife'

  update_relationship_status = ->
    console.log "changing dropdown value from #{$('#relationship_status').find('select').val()}"
    $('#relationship_status').find('select')
                             .val('2')

  position_in_household_box = $('#position_in_household').find('input')
  position_in_household_box.keyup( -> if is_wife() then update_relationship_status() )
)

