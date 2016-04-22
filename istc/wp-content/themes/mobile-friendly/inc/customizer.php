<?php
/**
 * mobile-friendly Theme Customizer
 *
 * @package mobile-friendly
 */

/**
 * Add postMessage support for site title and description for the Theme Customizer.
 *
 * @param WP_Customize_Manager $wp_customize Theme Customizer object.
 */
function mobile_friendly_customize_register( $wp_customize ) {
	$wp_customize->get_setting( 'blogname' )->transport         = 'postMessage';
	$wp_customize->get_setting( 'blogdescription' )->transport  = 'postMessage';
	$wp_customize->get_setting( 'header_textcolor' )->transport = 'postMessage';


/*--------------------------------------------------------------
	// HOMEPAGE HERO
--------------------------------------------------------------*/

	$wp_customize->add_section( 'mobile_friendly_hero', array(
		'title'                 => __( 'Homepage Hero Section', 'mobile-friendly' ),
		'priority'              => 30
	) );
	$wp_customize->add_setting(
		'mobile_friendly_hero_bg_color',
		array(
			'default' => '',
			'type'    => 'theme_mod', 'sanitize_callback' => 'esc_html'
		)
	);
	$wp_customize->add_control(
		new WP_Customize_Color_Control(
			$wp_customize,
			'mobile_friendly_hero_bg_color',
			array(
				'label'    => __( 'Background Color For Hero Section', 'mobile-friendly' ),
				'section'  => 'mobile_friendly_hero',
				'settings' => 'mobile_friendly_hero_bg_color',
				'priority' => 2
			)
		)
	);
	$wp_customize->add_setting( 'hero_heading', array( 'default' => '', 'sanitize_callback' => 'esc_html') );
	$wp_customize->add_control( 'hero_heading', array(
		'label'                 => __( 'Main Headline', 'mobile-friendly' ),
		'section'               => 'mobile_friendly_hero',
		'settings'              => 'hero_heading',
		'type'                  => 'text',
		'sanitize_callback'     => 'esc_html',
	) );
	$wp_customize->add_setting( 'hero_secondary', array( 'default' => '', 'sanitize_callback' => 'esc_html') );
	$wp_customize->add_control( 'hero_secondary', array(
		'label'                 => __( 'Secondary Headline', 'mobile-friendly' ),
		'section'               => 'mobile_friendly_hero',
		'settings'              => 'hero_secondary',
		'type'                  => 'text',
		'sanitize_callback'     => 'esc_html',
	) );
	$wp_customize->add_setting( 'hero_button_text', array( 'default' => '', 'sanitize_callback' => 'esc_html') );
	$wp_customize->add_control( 'hero_button_text', array(
		'label'                 => __( 'Button Text', 'mobile-friendly' ),
		'section'               => 'mobile_friendly_hero',
		'settings'              => 'hero_button_text',
		'type'                  => 'text',
		'sanitize_callback'     => 'esc_html',
	) );
	$wp_customize->add_setting( 'hero_button_url', array( 'default' => '', 'sanitize_callback' => 'esc_url_raw') );
	$wp_customize->add_control( 'hero_button_url', array(
		'label'                 => __( 'Button Link', 'mobile-friendly' ),
		'section'               => 'mobile_friendly_hero',
		'settings'              => 'hero_button_url',
		'type'                  => 'text',
		'sanitize_callback'     => 'esc_url_raw',
	) );
	$wp_customize->add_setting( 'hero_image', array( 'sanitize_callback' => 'esc_url_raw', 'default' => get_template_directory_uri() . '/images/mobile-friendly-chimp.png', ) );
	$wp_customize->add_control( new WP_Customize_Image_Control( $wp_customize, 'hero_image', array(
		'label'                 => __( 'Image', 'mobile-friendly' ),
		'section'               => 'mobile_friendly_hero',
		'settings'              => 'hero_image',
		'sanitize_callback'     => 'esc_url_raw'
	) ) );
	$wp_customize->add_setting( 'hero_image_alt', array( 'default' => '', 'sanitize_callback' => 'esc_html') );
	$wp_customize->add_control( 'hero_image_alt', array(
		'label'                 => __( 'Alt Text For Image', 'mobile-friendly' ),
		'section'               => 'mobile_friendly_hero',
		'settings'              => 'hero_image_alt',
		'type'                  => 'text',
		'sanitize_callback'     => 'esc_html',
	) );
/*--------------------------------------------------------------
//CALL TO ACTION SECTION
--------------------------------------------------------------*/
	$wp_customize->add_section( 'mobile_friendly_cta', array(
		'title'                 => __( 'Homepage Call to Action Section', 'mobile-friendly' ),
		'priority'              => 35
	) );
	
	$wp_customize->add_setting(
		'mobile_friendly_cta_bg_color',
		array(
			'default' => '',
			'type'    => 'theme_mod', 'sanitize_callback' => 'esc_html'
		)
	);
	$wp_customize->add_control(
		new WP_Customize_Color_Control(
			$wp_customize,
			'mobile_friendly_cta_bg_color',
			array(
				'label'    => __( 'Background Color For Call to Action Section', 'mobile-friendly' ),
				'section'  => 'mobile_friendly_cta',
				'settings' => 'mobile_friendly_cta_bg_color',
				'priority' => 2
			)
		)
	);

	$wp_customize->add_setting( 'cta_image', array( 'sanitize_callback' => 'esc_url_raw', 'default' => get_template_directory_uri() . '/images/mobile-friendly.png', ) );
	$wp_customize->add_control( new WP_Customize_Image_Control( $wp_customize, 'cta_image', array(
		'label'                 => __( 'Image', 'mobile-friendly' ),
		'section'               => 'mobile_friendly_cta',
		'settings'              => 'cta_image',
		'sanitize_callback'     => 'esc_url_raw'
	) ) );

	$wp_customize->add_setting( 'cta_text', array( 'default' => '', 'sanitize_callback' => 'esc_html') );
	$wp_customize->add_control( 'cta_text', array(
		'label'                 => __( 'Text', 'mobile-friendly' ),
		'section'               => 'mobile_friendly_cta',
		'settings'              => 'cta_text',
		'type'                  => 'text',
		'sanitize_callback'     => 'esc_html',
	) );
	$wp_customize->add_setting( 'cta_button_text', array( 'default' => '', 'sanitize_callback' => 'esc_html') );
	$wp_customize->add_control( 'cta_button_text', array(
		'label'                 => __( 'Text for First Button', 'mobile-friendly' ),
		'section'               => 'mobile_friendly_cta',
		'settings'              => 'cta_button_text',
		'type'                  => 'text',
		'sanitize_callback'     => 'esc_html',
	) );
	$wp_customize->add_setting( 'cta_button_url', array( 'default' => '', 'sanitize_callback' => 'esc_url_raw') );
	$wp_customize->add_control( 'cta_button_url', array(
		'label'                 => __( 'Link for First Button', 'mobile-friendly' ),
		'section'               => 'mobile_friendly_cta',
		'settings'              => 'cta_button_url',
		'type'                  => 'text',
		'sanitize_callback'     => 'esc_url_raw',
	) );

	// Second CTA Button

	$wp_customize->add_setting( 'cta_second_button_text', array( 'default' => '', 'sanitize_callback' => 'esc_html') );
	$wp_customize->add_control( 'cta_second_button_text', array(
		'label'                 => __( 'Text for Second Button', 'mobile-friendly' ),
		'section'               => 'mobile_friendly_cta',
		'settings'              => 'cta_second_button_text',
		'type'                  => 'text',
		'sanitize_callback'     => 'esc_html',
	) );
	$wp_customize->add_setting( 'cta_second_button_url', array( 'default' => '', 'sanitize_callback' => 'esc_url_raw') );
	$wp_customize->add_control( 'cta_second_button_url', array(
		'label'                 => __( 'Link for Second Button', 'mobile-friendly' ),
		'section'               => 'mobile_friendly_cta',
		'settings'              => 'cta_second_button_url',
		'type'                  => 'text',
		'sanitize_callback'     => 'esc_url_raw',
	) );

	/*--------------------------------------------------------------
	// TEASER TEXT SECTION
	--------------------------------------------------------------*/

	$wp_customize->add_section( 'mobile_friendly_teaser', array(
		'title'                 => __( 'Homepage Teaser Content Section', 'mobile-friendly' ),
		'description'           => __( 'The widgets for this section can be added in the widgets section below.', 'mobile-friendly' ),
		'priority'              => 35
	) );
	$wp_customize->add_setting( 'teaser_text', array( 'default' => '', 'sanitize_callback' => 'esc_html') );
	$wp_customize->add_control( 'teaser_text', array(
		'label'                 => __( 'Headline', 'mobile-friendly' ),
		'section'               => 'mobile_friendly_teaser',
		'settings'              => 'teaser_text',
		'type'                  => 'text',
		'sanitize_callback'     => 'esc_html',
	) );

	/*-------------------------------------------------------------
	//BACKGROUND COLOR
	--------------------------------------------------------------*/
	$wp_customize->add_section( 'mobile_friendly_color', array(
		'title'                 => __( 'Color', 'mobile-friendly' ),
		'priority'              => 35
	) );
	$wp_customize->add_setting(
		'mobile_friendly_bg_color',
		array(
			'default' => '#fff',
			'type'    => 'theme_mod', 'sanitize_callback' => 'esc_html'
		)
	);
	$wp_customize->add_control(
		new WP_Customize_Color_Control(
			$wp_customize,
			'mobile_friendly_bg_color',
			array(
				'label'    => __( 'Background Color', 'mobile-friendly' ),
				'section'  => 'mobile_friendly_color',
				'settings' => 'mobile_friendly_bg_color',
				'priority' => 2
			)
		)
	);

	/*--------------------------------------------------------------
	//Background Image
	----------------------------------------------------------------*/

		$wp_customize->add_section( 'mobile_friendly_Background_Image', array(
		'title'                 => __( 'Background Image', 'mobile-friendly' ),
		'priority'              => 35
		) );

		$wp_customize->add_setting( 'background_image', array( 'default' => 'none','sanitize_callback' => 'esc_url_raw') );
		$wp_customize->add_control( new WP_Customize_Image_Control( $wp_customize, 'background_image', array(
		'label'                 => __( 'Image', 'mobile-friendly' ),
		'section'               => 'mobile_friendly_Background_Image',
		'settings'              => 'background_image',
		'sanitize_callback'     => 'esc_url_raw'
		) ) );
		$wp_customize->add_setting( 'background_repeat', array( 'default' => 'repeat', 'sanitize_callback' => 'esc_html') );
		$wp_customize->add_control( 'background_repeat', array(
		'label'                 => __( 'Background Repeat', 'mobile-friendly' ),
		'section'               => 'mobile_friendly_Background_Image',
		'settings'              => 'background_repeat',
		'type'      		=> 'radio',
		'choices'    		=> array(
				'no-repeat'  => __('No Repeat', 'mobile-friendly'),
				'repeat'     => __('Tile', 'mobile-friendly'),
				'repeat-x'   => __('Tile Horizontally', 'mobile-friendly'),
				'repeat-y'   => __('Tile Vertically', 'mobile-friendly'),
			),
		) );
		$wp_customize->add_setting( 'background_position_x', array( 'default' => 'left', 'sanitize_callback' => 'esc_html') );
		$wp_customize->add_control( 'background_position_x', array(
		'label'                 => __( 'Background Position', 'mobile-friendly' ),
		'section'               => 'mobile_friendly_Background_Image',
		'settings'              => 'background_position_x',
		'type'      		=> 'radio',
		'choices'    		=> array(
				'left'       => __('Left', 'mobile-friendly'),
				'center'     => __('Center', 'mobile-friendly'),
				'right'      => __('Right', 'mobile-friendly'),
			),
		) );
		$wp_customize->add_setting( 'background_attachment', array( 'default' => 'scroll', 'sanitize_callback' => 'esc_html') );
		$wp_customize->add_control( 'background_attachment', array(
		'label'                 => __( 'Background Attachment', 'mobile-friendly' ),
		'section'               => 'mobile_friendly_Background_Image',
		'settings'              => 'background_attachment',
		'type'      		=> 'radio',
		'choices'    		=> array(
				'scroll'     => __('Scroll', 'mobile-friendly'),
				'fixed'      => __('Fixed', 'mobile-friendly'),
			),
		) );
		
	/*--------------------------------------------------------------
	// SOCIAL MEDIA SECTION
	--------------------------------------------------------------*/

	$wp_customize->add_section( 'mobile_friendly_social_media', array(
		'title'             => __( 'Social Media', 'mobile-friendly' ),
		'priority'          => 40,
		'description'       => __( 'Enter the URL to your account for each service for the icon to appear in the header.', 'mobile-friendly' ),
	) );

	// Add Dribbble Setting

	$wp_customize->add_setting( 'dribbble', array( 'default' => '', 'sanitize_callback' => 'esc_url_raw', ) );
	$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'dribbble', array(
		'label'             => __( 'Dribbble', 'mobile-friendly' ),
		'section'           => 'mobile_friendly_social_media',
		'settings'          => 'dribbble',
		'sanitize_callback' => 'esc_url_raw',
	) ) );

	// Add Behance Setting

	$wp_customize->add_setting( 'behance' , array( 'default' => '', 'sanitize_callback' => 'esc_url_raw', ));
	$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'behance', array(
		'label'             => __( 'Behance', 'mobile-friendly' ),
		'section'           => 'mobile_friendly_social_media',
		'settings'          => 'behance',
		'sanitize_callback' => 'esc_url_raw',
	) ) );
	// Add Facebook Setting
	$wp_customize->add_setting( 'facebook' , array( 'default' => '', 'sanitize_callback' => 'esc_url_raw', ));
	$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'facebook', array(
		'label'             => __( 'Facebook', 'mobile-friendly' ),
		'section'           => 'mobile_friendly_social_media',
		'settings'          => 'facebook',
		'sanitize_callback' => 'esc_url_raw',
	) ) );
	// Add LinkedIn Setting
	$wp_customize->add_setting( 'linkedin' , array( 'default' => '', 'sanitize_callback' => 'esc_url_raw', ));
	$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'linkedin', array(
		'label'             => __( 'LinkedIn', 'mobile-friendly' ),
		'section'           => 'mobile_friendly_social_media',
		'settings'          => 'linkedin',
		'sanitize_callback' => 'esc_url_raw',
	) ) );
	// Add Twitter Setting
	$wp_customize->add_setting( 'twitter' , array( 'default' => '', 'sanitize_callback' => 'esc_url_raw', ));
	$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'twitter', array(
		'label'             => __( 'Twitter', 'mobile-friendly' ),
		'section'           => 'mobile_friendly_social_media',
		'settings'          => 'twitter',
		'sanitize_callback' => 'esc_url_raw',
	) ) );
	// Add Tumblr Setting
	$wp_customize->add_setting( 'tumblr' , array( 'default' => '', 'sanitize_callback' => 'esc_url_raw', ));
	$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'tumblr', array(
		'label'             => __( 'Tumblr', 'mobile-friendly' ),
		'section'           => 'mobile_friendly_social_media',
		'settings'          => 'tumblr',
		'sanitize_callback' => 'esc_url_raw',
	) ) );
	// Add RSS Setting
	$wp_customize->add_setting( 'rss' , array( 'default' => '', 'sanitize_callback' => 'esc_url_raw' ));
	$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'rss', array(
		'label'             => __( 'RSS', 'mobile-friendly' ),
		'section'           => 'mobile_friendly_social_media',
		'settings'          => 'rss'
	) ) );
	// Add StumbleUpon Setting
	$wp_customize->add_setting( 'stumbleupon' , array( 'default' => '', 'sanitize_callback' => 'esc_url_raw', ));
	$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'stumbleupon', array(
		'label'             => __( 'StumbleUpon', 'mobile-friendly' ),
		'section'           => 'mobile_friendly_social_media',
		'settings'          => 'stumbleupon',
		'sanitize_callback' => 'esc_url_raw',
	) ) );
	// Add Vimeo Setting
	$wp_customize->add_setting( 'vimeo' , array( 'default' => '', 'sanitize_callback' => 'esc_url_raw', ));
	$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'vimeo', array(
		'label'             => __( 'Vimeo', 'mobile-friendly' ),
		'section'           => 'mobile_friendly_social_media',
		'settings'          => 'vimeo',
		'sanitize_callback' => 'esc_url_raw',
	) ) );
	// Add Youtube Setting
	$wp_customize->add_setting( 'youtube' , array( 'default' => '', 'sanitize_callback' => 'esc_url_raw', ));
	$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'youtube', array(
		'label'             => __( 'YouTube', 'mobile-friendly' ),
		'section'           => 'mobile_friendly_social_media',
		'settings'          => 'youtube',
	) ) );
	// Add Google+ Setting
	$wp_customize->add_setting( 'googleplus' , array( 'default' => '', 'sanitize_callback' => 'esc_url_raw', ));
	$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'googleplus', array(
		'label'             => __( 'Google+', 'mobile-friendly' ),
		'section'           => 'mobile_friendly_social_media',
		'settings'          => 'googleplus',
	) ) );
	// Add Instagram Setting
	$wp_customize->add_setting( 'instagram' , array( 'default' => '','sanitize_callback' => 'esc_url_raw', ));
	$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'instagram', array(
		'label'             => __( 'Instagram', 'mobile-friendly' ),
		'section'           => 'mobile_friendly_social_media',
		'settings'          => 'instagram'
	) ) );
	// Add Pinterest Setting
	$wp_customize->add_setting( 'pinterest' , array( 'default' => '', 'sanitize_callback' => 'esc_url_raw', ));
	$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'pinterest', array(
		'label'             => __( 'Pinterest', 'mobile-friendly' ),
		'section'           => 'mobile_friendly_social_media',
		'settings'          => 'pinterest',
		'sanitize_callback' => 'esc_url_raw',
	) ) );
	// Add SoundCloud Setting
	$wp_customize->add_setting( 'soundcloud' , array( 'default' => '','sanitize_callback' => 'esc_url_raw', ));
	$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'soundcloud', array(
		'label'             => __( 'SoundCloud', 'mobile-friendly' ),
		'section'           => 'mobile_friendly_social_media',
		'settings'          => 'soundcloud'
	) ) );

/*--------------------------------------------------------------
// FOOTER
--------------------------------------------------------------*/

	$wp_customize->add_section( 'mobile_friendly_footer', array(
		'title'                 => __( 'Footer Site Info', 'mobile-friendly' ),
		'description'           => __( '', 'mobile-friendly' ),
		'priority'              => 45
	) );
	$wp_customize->add_setting( 'copyright', array( 'default' => '', 'sanitize_callback' => 'esc_html') );
	$wp_customize->add_control( 'copyright', array(
		'label'                 => __( 'Copyright', 'mobile-friendly' ),
		'section'               => 'mobile_friendly_footer',
		'settings'              => 'copyright',
		'type'                  => 'text',
		'sanitize_callback'     => 'esc_html',
	) );

	$wp_customize->add_setting( 'site_info', array( 'default' => '', 'sanitize_callback' => 'esc_html') );
	$wp_customize->add_control( 'site_info', array(
		'label'                 => __( 'Site Info', 'mobile-friendly' ),
		'section'               => 'mobile_friendly_footer',
		'settings'              => 'site_info',
		'type'                  => 'text',
		'sanitize_callback'     => 'esc_html',
	) );

}
add_action( 'customize_register', 'mobile_friendly_customize_register' );

/**
 * Binds JS handlers to make Theme Customizer preview reload changes asynchronously.
 */
function mobile_friendly_customize_preview_js() {
	wp_enqueue_script( 'mobile_friendly_customizer', get_template_directory_uri() . '/js/customizer.js', array( 'customize-preview' ), '20130508', true );
}
add_action( 'customize_preview_init', 'mobile_friendly_customize_preview_js' );


/* Generating CSS for live view function....sejal*/
function mobile_friendly_customize_css()
{
   ?>
        <style type="text/css">
            body {
                  background-color:<?php echo get_theme_mod('mobile_friendly_bg_color'); ?>;
		  background-image:url('<?php echo get_theme_mod('background_image'); ?>');
		  background-repeat:<?php echo get_theme_mod('background_repeat'); ?>;
		  background-position:<?php echo get_theme_mod('background_position_x'); ?>;
		  background-attachment:<?php echo get_theme_mod('background_attachment'); ?>;
            }
	   .hero {
		 background-color:<?php echo get_theme_mod('mobile_friendly_hero_bg_color'); ?>;
	    }
	   .cta {
		 background-color:<?php echo get_theme_mod('mobile_friendly_cta_bg_color'); ?>;
	    }
	   

        </style>
   <?php
}
add_action( 'wp_head', 'mobile_friendly_customize_css');
/* End of Generating CSS for live view function */
