<?php

if ( ! defined( 'ABSPATH' ) ) exit;


function ewic_get_feed() {
	if ( false === ( $cache = get_transient( 'easysliderwidget_featured_feed' ) ) ) {
		$feed = wp_remote_get( 'http://content.ghozylab.com/feed.php?c=featuredplugins', array( 'sslverify' => false ) );
		if ( ! is_wp_error( $feed ) ) {
			if ( isset( $feed['body'] ) && strlen( $feed['body'] ) > 0 ) {
				$cache = wp_remote_retrieve_body( $feed );
				set_transient( 'easysliderwidget_featured_feed', $cache, 3600 );
			}
		} else {
			$cache = '<div class="error"><p>' . __( 'There was an error retrieving the list from the server. Please try again later.', 'image-slider-widget' ) . '</div>';
		}
	}
	return $cache;
}