<?php

class haet_mail {
	/**
	 * initialize the plugin on activation
	 *  - set options with default values
	 */
	function init() {
		$this->get_options();
	}

	function __construct(){
		add_action( 'plugins_loaded', 'Haet_Sender_Plugin::hook_plugins' );
	}
	
	
	function get_default_options() {
		return array(
			'fromname' 				=> 	get_bloginfo('name'),
			'fromaddress'			=> 	get_bloginfo('admin_email')
		);
	}

	/**
	 * send a test message to the given email address
	 * TODO: return status
	 */
	function send_test() {
		$email = $_POST['email'];
		echo $email;		
		wp_mail( $email, 'WP HTML mail - TEST', '<h1>Lorem ipsum dolor sit amet</h1>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.<br><br>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. ');
		wp_die();
	}

	function get_default_theme_options() {
		return array(
            'background'			=>	'#F0F0F0',
            'contentbackground'		=>	'#FFFFFF',
            'headertext' 			=> 	get_bloginfo('name'),
            'headerfont'			=>	'Helvetica, Arial, sans-serif',
            'headeralign'			=> 	'left',
            'headerfontsize'		=>	24,
            'headerbold'			=>	1,
            'headeritalic'			=>	0,
            'headerbackground'		=>	'#F0F0F0',
            'headercolor'			=>	'#df4726',
            'headerpaddingtop'		=>	12,
            'headerpaddingright'	=> 	24,
            'headerpaddingbottom'	=>	12,
            'headerpaddingleft'		=>	24,
            'headerimg'				=>	'',
            'headerimg_width'		=>	'',
            'headerimg_height'		=>	'',
            'headlinefont'			=>	'Helvetica, Arial, sans-serif',
            'headlinealign'			=> 	'left',
            'headlinefontsize'		=>	18,
            'headlinebold'			=>	1,
            'headlineitalic'		=>	0,
            'headlinecolor'			=>	'#374550',
            'subheadlinefont'		=>	'Helvetica, Arial, sans-serif',
            'subheadlinealign'		=> 	'left',
            'subheadlinefontsize'	=>	15,
            'subheadlinebold'		=>	1,
            'subheadlineitalic'		=>	0,
            'subheadlinecolor'		=>	'#374550',
            'textfont'				=>	'Helvetica, Arial, sans-serif',
            'textalign'				=> 	'left',
            'textfontsize'			=>	14,
            'textbold'				=>	0,
            'textitalic'			=>	0,
            'textcolor'				=>	'#333333',
            'linkcolor'				=>	'#777777',
            'linkbold'				=>	0,
            'linkunderline'			=>	1,
            'footer'				=> 	'<p>Sample Footer text: &copy; 2015 Acme, Inc.</p><p><strong>Acme, Inc.</strong></p><p>123 Main St.<br>Springfield, MA 12345<br><a href="http://www.acme-inc.com">www.acme-inc.com</a></p>',
            'footerlink'			=>	1,
            'footerbackground'		=>	'',
		);
	}

	function get_options() {
		$options = $this->get_default_options();
		 
		$haet_mail_options = get_option('haet_mail_options');
		if (!empty($haet_mail_options)) {
			foreach ($haet_mail_options as $key => $option)
				$options[$key] = $option;
		}				
		update_option('haet_mail_options', $options);
		return $options;
	}

	function get_theme_options($theme) {
		$options = $this->get_default_theme_options();
		 
		$haet_mail_options = get_option('haet_mail_theme_options');
		if (!empty($haet_mail_options)) {
			foreach ($haet_mail_options as $key => $option)
				$options[$key] = $option;
		}				
		update_option('haet_mail_theme_options', $options);
		return $options;
	}
	
    function admin_page_scripts_and_styles($page){
    	if(strpos($page, 'wp-html-mail')){
	        wp_enqueue_style( 'wp-color-picker' );
	        wp_enqueue_script('haet_mail_admin_script',  HAET_MAIL_URL.'/js/admin_script.js', array( 'wp-color-picker','jquery-ui-dialog','jquery'));
	        wp_enqueue_style('haet_mail_admin_style',  HAET_MAIL_URL.'/css/style.css');
	        wp_enqueue_style (  'wp-jquery-ui-dialog');
	        wp_enqueue_media();
	    }
    }


    function admin_page() {
        add_options_page( __('Email','haet_mail'), __('Email template','haet_mail'), 'manage_options', 'wp-html-mail', array(&$this, 'print_admin_page') );
    }


	function print_admin_page(){    
		$options = $this->get_options();
		$theme_options = $this->get_theme_options('default');

		if(array_key_exists('tab', $_GET))
			$tab = $_GET['tab'];
		else
			$tab = 'general';
		
		$active_plugins = Haet_Sender_Plugin::get_active_plugins();
		$available_plugins = Haet_Sender_Plugin::get_available_plugins();
		$plugin_options = Haet_Sender_Plugin::get_plugin_options();
		
		if(isset($_POST['haet_mail']) )
			$options = $this->save_options($options);
		if(isset($_POST['haet_mail_theme']) )
			$theme_options = $this->save_theme_options($theme_options);
		if(isset($_POST['haet_mail_plugins']))
			$plugin_options = Haet_Sender_Plugin::save_plugin_options($plugin_options);
		if(isset($_POST['haet_mail']) || isset($_POST['haet_mail_theme']) || isset($_POST['haet_mail_plugins'])){
			echo '<div class="updated"><p><strong>';
					_e('Settings Updated.', 'haet_mail');
			echo '</strong></p></div>';	
		} 
	
		add_filter( 'tiny_mce_before_init', array(&$this,'customize_editor'),1000 );  

		$fonts = $this->get_fonts();
		
		if(isset($_POST['haet_mail_create_template']) && $_POST['haet_mail_create_template']==1 )
			$this->create_custom_template();

		foreach ($active_plugins as $plugin) {
			if ( $plugin['name'] == $tab ){
				$sender_plugin = $plugin['class']::request_preview_instance();
				$sender_plugin->current_plugin = $plugin;
			}
		}

		$template = $this->get_template($theme_options);
		if( isset($sender_plugin) )
			$template = $sender_plugin->modify_template($template);

		$demo_content = '<h1>Lorem ipsum dolor sit amet</h1>
			Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed <a href="#">diam nonumy</a> eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
			<br>
			<br>
			Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. ';
		$demo_content = apply_filters( 'haet_mail_demo_content' , $demo_content, $options, $plugin_options, $tab );
		if( isset( $sender_plugin ) )
			$demo_content = $sender_plugin->modify_content($demo_content);
		$template = str_replace('{#mailcontent#}', $demo_content, $template);

		if( isset( $sender_plugin ) ){
			$template = $sender_plugin->modify_styled_mail($template);
			$template = str_replace('###plugin-class###','plugin-'.$sender_plugin->get_plugin_name(), $template);
		}

		//$template = $this->inline_css($template);

		$tabs = array(
    		'general' 	=>  __('General','haet_mail'),
	    	'header' 	=>  __('Header','haet_mail'),
	        'content' 	=>  __('Content','haet_mail')
	    );
		foreach ($active_plugins as $plugin) {
			if ( method_exists( $plugin['class'], 'settings_tab' ) )
				$tabs[ $plugin['name'] ] =  $plugin['display_name'];
		}

	    $tabs['footer']		=  __('Footer','haet_mail');
	    $tabs['plugins']	=  __('Plugins','haet_mail');
	    $tabs['advanced']	=  __('Advanced','haet_mail');
	    
		include HAET_MAIL_PATH.'views/admin/settings.php';
	
	}

	function save_options($saved_options){    
		$new_options = $_POST['haet_mail'];
		$options = array_merge($saved_options,$new_options);
		if(isset($_POST['reload_haet_mailtemplate'])){
			$options = $this->get_default_theme_options();
		}

		update_option('haet_mail_options', $options);
		return $options;
	}

	function save_theme_options($saved_options){    
		$new_options = $_POST['haet_mail_theme'];
		$options = array_merge($saved_options,$new_options);
		if(isset($_POST['reload_haet_mailtemplate'])){
			$options = $this->get_default_theme_options();
		}

		update_option('haet_mail_theme_options', $options);
		
		return $options;
	}

	/**
	*	create a template file in the active theme directory
	*	
	**/
	function create_custom_template(){
		$theme_path = get_stylesheet_directory();
		if(is_writable($theme_path)){
			if(!file_exists($theme_path.'/wp-html-mail'))
				mkdir($theme_path.'/wp-html-mail');
			if(file_exists($theme_path.'/wp-html-mail/template.html'))
				rename($theme_path.'/wp-html-mail/template.html',$theme_path.'/wp-html-mail/template-backup-'.date("Y-m-d_H-i-s").'.html');
			file_put_contents($theme_path.'/wp-html-mail/template.html',$this->load_template_file('default'));
			chmod($theme_path.'/wp-html-mail/template.html',0777);
		}
	}

	
	//add_filter('tiny_mce_before_init', array(&$this,'customizeEditor'));
	// Callback function to filter the MCE settings
	function customize_editor( $initArray ) {    
		$initArray['block_formats'] = 'Headline=h1;Text=p';
		$initArray['fontsize_formats'] = "11px 12px 13px 14px 16px 18px 21px 23px 25px 30px 35px 40px";

		$fonts = $this->get_fonts();
		$initArray['font_formats'] = "";
		foreach ($fonts as $font => $display_name) {
			$initArray['font_formats'] .= "$display_name=$font;";
		}
		$initArray['font_formats'] = trim($initArray['font_formats'],';');
		//$initArray['font_formats'] = "Arial=arial,helvetica, sans-serif;Courier New=courier new,courier,monospace;AkrutiKndPadmini=Akpdmi-n";
		$initArray['toolbar1'] = 'fontselect,fontsizeselect,forecolor,|,bold,italic,|,alignleft,aligncenter,alignright,|,pastetext,removeformat,|,undo,redo,|,link,unlink,|';
		$initArray['toolbar2'] = '';

		return $initArray;  
	}


	function style_mail($vars){
		$options = $this->get_options();
		$theme_options = $this->get_theme_options('default');
		$template = $this->get_template($theme_options);
		extract($vars);
  
		$sender_plugin = Haet_Sender_Plugin::detect_plugin($vars);
		if(!$sender_plugin)
			$use_template = true;
		else
			$use_template = $sender_plugin->use_template();

		//$message.='<pre>=====POST:'.print_r($_POST,true).'</pre>';
		// $message.='SENDER-PLUGIN: <pre>'.print_r($sender_plugin,true).'</pre><br>';
		// $message.='ACTIVE-PLUGINS: <pre>'.print_r(Haet_Sender_Plugin::get_active_plugins(),true).'</pre><br>';

		$use_template = apply_filters( 'haet_mail_use_template', $use_template, array($to, $subject, $message, $headers, $attachments, ($sender_plugin?$sender_plugin->get_plugin_name():null)) );


		if($use_template){
			$message = preg_replace('/\<http(.*)\>/', '<a href="http$1">http$1</a>', $message); //replace links like <http://... with <a href="http://..."
			if( $sender_plugin ){
				$message = $sender_plugin->modify_content($message);
				$template = $sender_plugin->modify_template($template);
			}else{
				$message = wpautop($message);
			}

	        $message = str_replace('{#mailcontent#}',$message,$template);

			$message = str_replace('{#mailsubject#}',$subject,$message);

			$message = stripslashes(str_replace('\\&quot;','',$message));

			if( isset($sender_plugin) ){
				$message = $sender_plugin->modify_styled_mail($message);
				$message = str_replace('###plugin-class###','plugin-'.$sender_plugin->get_plugin_name(), $message);
			}
			$message = $this->inline_css($message);

			$has_html_header=false;
	        if( is_array($headers) ){
	        	foreach ($headers as $header) {
	        		if(stripos($header,'text/html'))
	        			$has_html_header=true;
	        	}
	        }
	        if(!$has_html_header) {
	            $headers .= "\r\nContent-Type: text/html; charset=".get_bloginfo( 'charset' ).";\r\n";
	        }
	    }
		
		$use_sender = !$sender_plugin || $sender_plugin->use_sender();
		$use_sender = apply_filters( 'haet_mail_use_sender', $use_sender, array($to, $subject, $message, $headers, $attachments, ($sender_plugin?$sender_plugin->get_plugin_name():null)) );
		if ($use_sender){
			add_filter( 'wp_mail_from', array($this,'set_mail_from_address'), 0 );
			add_filter( 'wp_mail_from_name', array($this,'set_mail_sender_name'), 0 );
		}

		// Field values in Ninja Forms and of course also in other plugins are encoded and otherwise not suitable for subjects
		$subject = html_entity_decode( $subject );
		return compact( 'to', 'subject', 'message', 'headers', 'attachments' );
	}
	
	function set_mail_sender_name($name){ 
		$options = $this->get_options();
		$sender = $options['fromname']; 	
		return $sender; 
	}
	
	function set_mail_from_address($email){
		$options = $this->get_options();
		$sender = $options['fromaddress']; 	
		return $sender; 
	}

	function load_template_file( $template_name ) {
		$template_path = locate_template( 'wp-html-mail/template.html');
		if ( ! $template_path ) {
			$template_path = HAET_MAIL_PATH . 'views/template/template.html';
		}
		if ( is_file( $template_path ) ) {
			ob_start();
			require( $template_path );
			$template_content = ob_get_clean();
		} else {
			$template_content = false;
		}
		return $template_content;
	}



	function get_footer_link_color( $hex ) {
		$percent = 0.3;
		// validate hex string
		
		$hex = preg_replace( '/[^0-9a-f]/i', '', $hex );
		$new_hex = '#';
		
		if ( strlen( $hex ) < 6 ) {
			$hex = $hex[0] + $hex[0] + $hex[1] + $hex[1] + $hex[2] + $hex[2];
		}
		
		$sum_color = 0;
		for ($i = 0; $i < 3; $i++) {
			$sum_color += hexdec( substr( $hex, $i*2, 2 ) );
		}
		if( ($sum_color/3) > 128 )//it's a light background color
			$percent = -0.3;
		
		// convert to decimal and change luminosity
		for ($i = 0; $i < 3; $i++) {
			$dec = hexdec( substr( $hex, $i*2, 2 ) );
			$dec = min( max( 0, $dec + $dec * $percent ), 255 ); 
			$new_hex .= str_pad( dechex( $dec ) , 2, 0, STR_PAD_LEFT );
		}		
		
		return $new_hex;
	}


	function get_template($options){
		$template=$this->load_template_file('default');
		if(isset($options['headerimg']) && strlen($options['headerimg'])>5 )
			$options['headertext'] = '<img class="header-image'.
										(isset($options['headerimg_width']) && $options['headerimg_width']>580?' full-width-header-image':'').'" src="'.$options['headerimg'].'" '.
										(isset($options['headerimg_width'])?'width="'.$options['headerimg_width'].'" ':'').
										(isset($options['headerimg_height'])?'height="'.$options['headerimg_height'].'" ':'').
										' alt="'.$options['headertext'].'">';
		if(isset($options['footerlink']) && $options['footerlink']==1){
			$footerlinkcolor = $this->get_footer_link_color( ($options['footerbackground']!=''?$options['footerbackground']:$options['background']) ); 
			$options['footer'].= '<p style="text-align:center;"><br><br><a href="http://wp-html-mail.com" class="footerlink" style="color:'.$footerlinkcolor.'">powered by WP HTML mail</a></p>';
		}
		foreach ($options as $option => $value) {
			if(strpos($option, 'bold'))
				$value=($value==1?'bold':'normal');
			if(strpos($option, 'italic'))
				$value=($value==1?'italic':'normal');
			if(strpos($option, 'underline'))
				$value=($value==1?'underline':'none');
			$template = str_replace('###'.$option.'###', $value, $template);
		}
		return $template;
	}

	function inline_css($html){
		$style_start = stripos($html,'<style');
		$style_start = stripos($html,'>',$style_start)+1;
		$style_end = stripos($html,'</style>',$style_start);
		$css = substr($html, $style_start, $style_end-$style_start);
		require_once(HAET_MAIL_PATH.'/vendor/autoload.php');
		$cssToInlineStyles = new TijsVerkoyen\CssToInlineStyles\CssToInlineStyles();
		$cssToInlineStyles->setHTML($html);
		$cssToInlineStyles->setCSS($css);
		return $cssToInlineStyles->convert();
	}


	function get_fonts(){
		return array(
			'Arial, Helvetica, sans-serif' 		=>	'Arial',
			'Helvetica, Arial, sans-serif' 		=>	'Helvetica',
			'Times New Roman,Georgia,serif'	=> 	'Times New Roman',
			'Georgia,Times New Roman,serif'	=> 	'Georgia',
			'Courier, monospace'				=>	'Courier'
		);
	}

	function get_tab_url($tab) {
		$url = $_SERVER['REQUEST_URI'];
		if(strpos($url, 'tab='))
			return preg_replace("/&tab=[a-z\-]*/", '&tab='.$tab, $url);
		else
			return $url.'&tab='.$tab;
	}

	

}


?>