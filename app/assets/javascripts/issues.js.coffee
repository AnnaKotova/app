# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('.ref').click ->
    a = $(this).attr('rel')
    $('#rel_'+a).attr({hidden: false})

jQuery ->	
  $('#add_issue').click ->
    $('#new_form').attr({hidden: false})
    $('#new_form').html("<%= j render 'add_issue_form' %>")
	


