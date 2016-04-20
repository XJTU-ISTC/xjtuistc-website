<?php

function ewic_frontend_stylesheet() {
	wp_enqueue_style( 'ewic_front_styles', plugins_url('css/frontend.css', __DIR__) );
	wp_enqueue_style( 'ewic_front_bxslider', plugins_url('css/bxslider/jquery.bxslider.css', __DIR__) );
	wp_enqueue_style( 'ewic_front_prettyphoto', plugins_url('css/prettyphoto/css/prettyPhoto.css', __DIR__) );
}
add_action( 'wp_print_styles', 'ewic_frontend_stylesheet' );

function ewic_frontend_script() {
	wp_enqueue_script( 'ewic-bxslider' );
	wp_enqueue_script( 'ewic-prettyphoto' );
	wp_enqueue_script( 'ewic-bxslider-easing' );
	}
add_action( 'wp_enqueue_scripts', 'ewic_frontend_script' );

?>