<?php
/*
Plugin Name: WP HTML Mail
Plugin URI: http://wp-html-mail.com/
Description: Use custom HTML mail templates for your WordPress mails
Version: 1.2
Author: haet webdevelopment
Author URI: http://etzelstorfer.com
License: GPLv2 or later
*/

/*  Copyright 2015 Hannes Etzelstorfer (email : hannes@etzelstorfer.com) */


define( 'HAET_MAIL_PATH', plugin_dir_path(__FILE__) );
define( 'HAET_MAIL_URL', plugin_dir_url(__FILE__) );


require HAET_MAIL_PATH . 'includes/class-haet-mail.php';
require HAET_MAIL_PATH . 'includes/class-haet-sender-plugin.php';

load_plugin_textdomain('haet_mail', false, dirname( plugin_basename( __FILE__ ) ) . '/translations' );



if (class_exists("haet_mail")) {
	$haet_mail = new haet_mail();
}

//Actions and Filters	
if (isset($haet_mail)) {
    add_filter('wp_mail',array(&$haet_mail, 'style_mail'),12,1);

    add_action( 'admin_menu', array(&$haet_mail, 'admin_page'),20);
    add_action( 'admin_enqueue_scripts', array(&$haet_mail, 'admin_page_scripts_and_styles'));

    add_action( 'wp_ajax_haet_mail_send_test', array(&$haet_mail, 'send_test') );
}




function haet_mail_init(){
    if(!isset($haet_mail)) 
        $haet_mail = new haet_mail();
    $haet_mail->init();
}
register_activation_hook( __FILE__, 'haet_mail_init');

// delete_option('haet_mail_theme_options');
// delete_option('haet_mail_options');
// delete_option('haet_mail_plugin_options');


	

