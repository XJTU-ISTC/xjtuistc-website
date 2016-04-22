jQuery(document).ready(function($) {
		$('.menu-link').bigSlide({
			'menu': ('#menu'),
			'side': 'left'
		});

	$('.sidebar').bigSlide({
		'menu': ('#sidebar-right'),
		'push': ('.panel-right'),
		'side': 'right'
	});

	new WOW().init();

});
