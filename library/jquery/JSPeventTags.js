 
$(document).ready(function() {
	$('input:text').keypress(function(e) {
		if (e.keyCode == 60 || e.keyCode == 62)
			return false;
	});

	$('input:password').keypress(function(e) {
		if (e.keyCode == 60 || e.keyCode == 62)
			return false;
	});

	$('textarea').keypress(function(e) {
		if (e.keyCode == 60 || e.keyCode == 62)
			return false;
	});

	$('input:text').bind("cut copy paste", function(e) {
		e.preventDefault();
	});

	$('input:password').bind("cut copy paste", function(e) {
		e.preventDefault();
	});

	$('textarea').bind("cut copy paste", function(e) {
		e.preventDefault();
	});

});
