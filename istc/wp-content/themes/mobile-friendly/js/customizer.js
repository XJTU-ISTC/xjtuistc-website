/**
 * Theme Customizer enhancements for a better user experience.
 *
 * Contains handlers to make Theme Customizer preview reload changes asynchronously.
 */

( function( $ ) {
	// Site title and description.
	wp.customize( 'blogname', function( value ) {
		value.bind( function( to ) {
			$( '.site-title a' ).text( to );
		} );
	} );
	wp.customize( 'blogdescription', function( value ) {
		value.bind( function( to ) {
			$( '.site-description' ).text( to );
		} );
	} );
	wp.customize( 'mobile_friendly_hero_bg_color', function( value ) {
		value.bind( function( to ) {
			$( 'body' ).css( {'background-color': to} );
		} );
	} );
	wp.customize( 'mobile_friendly_cta_bg_color', function( value ) {
		value.bind( function( to ) {
			$( 'body' ).css( {'background-color': to} );
		} );
	} );
	wp.customize( 'mobile_friendly_bg_color', function( value ) {
		value.bind( function( to ) {
			$( 'body' ).css( {'background-color': to} );
		} );
	} );
	wp.customize( 'background_image', function( value ) {
		value.bind( function( to ) {
			$( 'body' ).css( {'background-image': url(to)} );
		} );
	} );
	wp.customize( 'background_repeat', function( value ) {
		value.bind( function( to ) {
			$( 'body' ).css( {'background-repeat': to} );
		} );
	} );
	wp.customize( 'background_position_x', function( value ) {
		value.bind( function( to ) {
			$( 'body' ).css( {'background-position': to} );
		} );
	} );
	wp.customize( 'background_attachment', function( value ) {
		value.bind( function( to ) {
			$( 'body' ).css( {'background-attachment': to} );
		} );
	} );
	// Header text color.
	wp.customize( 'header_textcolor', function( value ) {
		value.bind( function( to ) {
			if ( 'blank' === to ) {
				$( '.site-title, .site-description' ).css( {
					'clip': 'rect(1px, 1px, 1px, 1px)',
					'position': 'absolute'
				} );
			} else {
				$( '.site-title, .site-description' ).css( {
					'clip': 'auto',
					'color': to,
					'position': 'relative'
				} );
			}
		} );
	} );
} )( jQuery );
