console.log('Linked!')


$(document).ready(function(){



var $radioButton = $('.radio_button')
var $radios = $('input[type="radio"][name=choice]:checked')
var $radioValue = $('input[type="radio"][name=choice')
$radioButton.change(function(){
	$radioButton.not(this).prop('checked', false)
	console.log('clicked')

	$radioValue.click(function(){
		var value = $(this).val();
	});





	

	

	
	


});


})