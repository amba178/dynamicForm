$(function(){
	$(document).on('click', 'form .remove_fields', function(e){
		$(this).prev('input[type=hidden]').val('1');
		$(this).closest('fieldset').hide();
		e.preventDefault();

	});

	$(document).on('click', 'form .add_fields', function(e){
		time = new Date().getTime()
 		regexp = new RegExp($(this).data('id'), 'g')
  		$(this).before($(this).data('fields').replace(regexp, time))
		e.preventDefault();

	});
});