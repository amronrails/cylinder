# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
	models = $('#model_id').html()
	cars = $('#car_id').html()
	$('#model_id').hide()
	$('#car_id').hide()
	$('#brand_id').change ->
		$('#car_id').hide()
		$('#model_id').show()
		brand = $('#brand_id :selected').text()
		options = $(models).filter("optgroup[label='#{brand}']").html()
		if options
			$('#model_id').html("<option>Please select</option>"+(options))
		else
			$('#model_id').empty()
			$('#model_id').hide()
	$('#model_id').change ->
		$('#car_id').show()
		model = $('#model_id :selected').text()
		options2 = $(cars).filter("optgroup[label='#{model}']").html()
		if options2
			$('#car_id').html(options2)
		else
			$('#car_id').empty()
			$('#car_id').hide()

