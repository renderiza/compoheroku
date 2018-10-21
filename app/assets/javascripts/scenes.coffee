# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

## Auto-Hide Flash Messages
$ ->
	flashCallback = ->
		$(".alert").fadeOut()
	$(".alert").bind 'click', (ev) =>
		$(".alert").fadeOut()
	setTimeout flashCallback, 3000