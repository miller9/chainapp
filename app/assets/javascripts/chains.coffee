# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Adding the jQuery calling to the table: "chains"
jQuery -> 
  $('#chains').dataTable({
      responsive: true
  });