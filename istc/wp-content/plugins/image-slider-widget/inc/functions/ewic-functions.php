<?php


/*-------------------------------------------------------------------------------*/
/*   Frontend Register JS & CSS
/*-------------------------------------------------------------------------------*/
function ewic_reg_script() {
	wp_register_style( 'ewic-pricing-css', plugins_url( 'css/pricing.css' , dirname(__FILE__) ), false, EWIC_VERSION );
	wp_register_style( 'ewic-cpstyles', plugins_url( 'css/funcstyle.css' , dirname(__FILE__) ), false, EWIC_VERSION, 'all');
	wp_register_style( 'ewic-sldr', plugins_url( 'css/slider.css' , dirname(__FILE__) ), false, EWIC_VERSION );
	wp_register_style( 'ewic-colorpicker', plugins_url( 'css/colorpicker.css' , dirname(__FILE__) ), false, EWIC_VERSION );
	wp_register_style( 'ewic-introcss', plugins_url( 'css/introjs.min.css' , dirname(__FILE__) ), false, EWIC_VERSION );
	wp_register_script( 'ewic-colorpickerjs', plugins_url( 'js/colorpicker/colorpicker.js' , dirname(__FILE__) ), false );	
	wp_register_script( 'ewic-eye', plugins_url( 'js/colorpicker/eye.js' , dirname(__FILE__) ), false );
	wp_register_script( 'ewic-utils', plugins_url( 'js/colorpicker/utils.js' , dirname(__FILE__) ), false );
	wp_register_script( 'ewic-introjs', plugins_url( 'js/jquery/intro.min.js' , dirname(__FILE__) ), false );
	wp_register_style( 'ewic-tinymcecss', plugins_url( 'css/tinymce.css' , dirname(__FILE__) ), false, EWIC_VERSION, 'all');
	wp_register_script( 'ewic-tinymcejs', plugins_url( 'js/tinymce.js' , dirname(__FILE__) ), false );	
	wp_register_style( 'ewic-bootstrap-css', plugins_url( 'css/bootstrap/css/bootstrap.min.css' , dirname(__FILE__) ), false, EWIC_VERSION );
	wp_register_script( 'ewic-bootstrap-js', plugins_url( 'js/bootstrap/bootstrap.min.js' , dirname(__FILE__) ) );
	wp_register_script( 'ewic-wnew', plugins_url( 'js/wnew/ewic-wnew.js' , dirname(__FILE__) ), false, EWIC_VERSION );
		
}
add_action( 'admin_init', 'ewic_reg_script' );

function ewic_frontend_js() {

	wp_register_script( 'ewic-bxslider', EWIC_URL. '/js/jquery/bxslider/jquery.bxslider.min.js' );
	wp_register_script( 'ewic-bxslider-easing', EWIC_URL. '/js/jquery/jquery.easing.1.3.js' );	
	wp_register_script( 'ewic-prettyphoto', EWIC_URL. '/js/jquery/prettyphoto/jquery.prettyPhoto.js' );
	wp_register_style( 'ewic-frontend-css', EWIC_URL. '/css/frontend.css' );
	wp_register_style( 'ewic-bxslider-css', EWIC_URL. '/css/bxslider/jquery.bxslider.css' );
	wp_register_style( 'ewic-prettyphoto-css', EWIC_URL. '/css/prettyphoto/css/prettyPhoto.css' );
	
}
add_action( 'wp_enqueue_scripts', 'ewic_frontend_js' );


/*-------------------------------------------------------------------------------*/
/*   CHECK BROWSER VERSION ( IE ONLY )
/*-------------------------------------------------------------------------------*/
function ewic_check_browser_version_admin( $sid ) {
	
	if ( is_admin() && get_post_type( $sid ) == 'easyimageslider' ){

		preg_match( '/MSIE (.*?);/', $_SERVER['HTTP_USER_AGENT'], $matches );
		if ( count( $matches )>1 ){
			$version = explode(".", $matches[1]);
			switch(true){
				case ( $version[0] <= '8' ):
				$msg = 'ie8';

			break; 
			  
				case ( $version[0] > '8' ):
		  		$msg = 'gah';
			  
			break; 			  

			  default:
			}
			return $msg;
		} else {
			$msg = 'notie';
			return $msg;
			}
	}
}


/*-------------------------------------------------------------------------------*/
/*   Remove Images
/*-------------------------------------------------------------------------------*/
function ewic_img_remove() {
	
	check_ajax_referer( 'ewic-remove', 'security' );
	
	if ( !isset( $_POST['pstid'] ) || !current_user_can( 'edit_theme_options' ) ) {
		
		wp_die();
		
		}
		
		else {

			update_post_meta( $_POST['pstid'], 'ewic_meta_select_images', '' );
			
			echo '1';
			
			wp_die();
			
		}
		
}
add_action( 'wp_ajax_ewic_img_remove', 'ewic_img_remove' );


/*-------------------------------------------------------------------------------*/
/*   AJAX Get Slider List
/*-------------------------------------------------------------------------------*/
function ewic_grab_slider_list_ajax() {
	
	if ( !isset( $_POST['grabslider'] ) ) {
		wp_die();
		} 
		else {
			
			$list = array();
			
			global $post;
			
			$args = array(
  				'post_type' => 'easyimageslider',
  				'order' => 'ASC',
				'posts_per_page' => -1,
  				'post_status' => 'publish'
		
				);

				$myposts = get_posts( $args );
				foreach( $myposts as $post ) :	setup_postdata($post);

				$list[$post->ID] = array('val' => $post->ID, 'title' => esc_html(esc_js(the_title(NULL, NULL, FALSE))) );

				endforeach;
				
				}
		
			echo json_encode($list); //Send to Option List ( Array )
			wp_die();


	}

add_action('wp_ajax_ewic_grab_slider_list_ajax', 'ewic_grab_slider_list_ajax');


/*-------------------------------------------------------------------------------*/
/*   AJAX Disable/Enable Auto Update
/*-------------------------------------------------------------------------------*/
function ewic_ajax_autoupdt() {
	
	check_ajax_referer( 'easywic-lite-nonce', 'security' );
	
	if ( !isset( $_POST['cmd'] ) ) {
		echo '0';
		wp_die();
		}
		
		else {
			update_option( "ewic-settings-automatic_update", $_POST['cmd'] );	
			echo '1';	
			wp_die();
			}
}
add_action( 'wp_ajax_ewic_ajax_autoupdt', 'ewic_ajax_autoupdt' );


/*-------------------------------------------------------------------------------*/
/*  Create Upgrade Metabox
/*-------------------------------------------------------------------------------*/
function ewic_upgrade_metabox () {
	$enobuy = '<div style="text-align:center;">';
	$enobuy .= '<a id="ewicprcngtableclr" style="outline: none !important;" href="#"><img class="ewichvrbutton" src="'.plugins_url( 'images/buy-now.png' , dirname(__FILE__) ).'" width="241" height="95" alt="Buy Now!" ></a>';
	$enobuy .= '</div>';
echo $enobuy;	
}


/*-------------------------------------------------------------------------------*/
/*  Create Pro Demo Metabox
/*-------------------------------------------------------------------------------*/
function ewic_prodemo_metabox () {
	$enobuy = '<div style="text-align:center;">';
	$enobuy .= '<a id="ewicdemotableclr" style="outline: none !important;" target="_blank" href="https://ghozy.link/9vlg3"><img class="ewichvrbutton" src="'.plugins_url( 'images/view-demo-button.jpg' , dirname(__FILE__) ).'" width="232" height="60" alt="Pro Version Demo" ></a>';
	$enobuy .= '</div>';
echo $enobuy;	
}


/*-------------------------------------------------------------------------------*/
/*  RENAME POST BUTTON @since 1.1.0
/*-------------------------------------------------------------------------------*/
function ewic_change_publish_button( $translation, $text ) {
	if ( 'easyimageslider' == get_post_type())
		if ( $text == 'Publish' ) {
    		return 'Save Slider';
			}
			else if ( $text == 'Update' ) {
				return 'Update Slider';
				}	

	return $translation;
}

add_filter( 'gettext', 'ewic_change_publish_button', 10, 2 );


/*-------------------------------------------------------------------------------*/
/*   GENERATE SHARE BUTTONS
/*-------------------------------------------------------------------------------*/
function ewic_share() {
?>
<div style="position:relative; margin-top:6px;">
<ul class='ewic-social' id='ewic-cssanime'>
<li class='ewic-facebook'>
<a onclick="window.open('http://www.facebook.com/sharer.php?s=100&amp;p[title]=Check out the Best Image Slider Wordpress Plugin&amp;p[summary]=Best Image Slider Wordpress Plugin is powerful plugin to create image slider in minutes&amp;p[url]=http://demo.ghozylab.com/plugins/easy-image-slider-plugin/&amp;p[images][0]=http://content.ghozylab.com/wp-content/uploads/2014/11/easy-slider-widget-320-200.png', 'sharer', 'toolbar=0,status=0,width=548,height=325');" href="javascript: void(0)" title="Share"><strong>Facebook</strong></a>
</li>
<li class='ewic-twitter'>
<a onclick="window.open('https://twitter.com/share?text=Best Wordpress Image Slider Plugin &url=http://demo.ghozylab.com/plugins/easy-image-slider-plugin/', 'sharer', 'toolbar=0,status=0,width=548,height=325');" title="Twitter" class="circle"><strong>Twitter</strong></a>
</li>
<li class='ewic-googleplus'>
<a onclick="window.open('https://plus.google.com/share?url=http://demo.ghozylab.com/plugins/easy-image-slider-plugin/','','width=415,height=450');"><strong>Google+</strong></a>
</li>
<li class='ewic-pinterest'>
<a onclick="window.open('http://pinterest.com/pin/create/button/?url=http://demo.ghozylab.com/plugins/easy-image-slider-plugin/;media=http://content.ghozylab.com/wp-content/uploads/2014/11/easy-slider-widget-320-200.png;description=Best Image Slider Wordpress Plugin','','width=600,height=300');"><strong>Pinterest</strong></a>
</li>
</ul>
</div>

    <?php
	}
	
	
	
/*-------------------------------------------------------------------------------*/
/*  Update Notify
/*-------------------------------------------------------------------------------*/
function easywic_update_notify () {
	
    global $post;
		if ( !empty( $post ) && 'easyimageslider' === $post->post_type && is_admin() ) {
	
    ?>
    <div class="error ewic-setupdate">
        <p><?php _e( 'We recommend you to enable plugin Auto Update so you will get the latest features and other important updates from <strong>Image Slider (Lite)</strong>.<br />Click <a href="#"><strong><span id="ewicdoautoupdate">here</span></strong></a> to enable Auto Update.', 'image-slider-widget' ); ?></p>
    </div>
    
<script type="text/javascript">
	/*<![CDATA[*/
	/* Easy Media Gallery */
jQuery(document).ready(function(){
	jQuery('#ewicdoautoupdate').click(function(){
		var cmd = 'active';
		ewic_enable_auto_update(cmd);
	});

function ewic_enable_auto_update(act) {
	var data = {
		action: 'ewic_enable_auto_update',
		security: '<?php echo wp_create_nonce( "ewic-update-nonce"); ?>',
		cmd: act,
		};
		
		jQuery.post(ajaxurl, data, function(response) {
			if (response == 1) {
				alert('Great! Auto Update successfully activated.');
				jQuery('.ewic-setupdate').fadeOut('3000');
				}
				else {
				alert('Ajax request failed, please refresh your browser window.');
				}
				
			});
	}
	
});
	
/*]]>*/</script>
    
    <?php
	
	}
}

function ewic_enable_auto_update() {
	
	check_ajax_referer( 'ewic-update-nonce', 'security' );
	
	if ( !isset( $_POST['cmd'] ) ) {
		echo '0';
		wp_die();
		}
		
		else {
			if ( $_POST['cmd'] == 'active' ){
				update_option( "ewic-settings-automatic_update", $_POST['cmd'] );
				echo '1';				
				wp_die();
				}
	}
}
add_action( 'wp_ajax_ewic_enable_auto_update', 'ewic_enable_auto_update' );



/*-------------------------------------------------------------------------------*/
/* Get latest info on What's New page
/*-------------------------------------------------------------------------------*/
function ewic_lite_get_news() {
	
	if ( false === ( $cache = get_transient( 'ewiclite_whats_new' ) ) ) {
		
	$addlist = get_option( "ewic_active_addons_lite" );	
		
	$url = array(
				'c' => 'news',
				'p' => 'ewiclite',
				);	
		
		$feed = wp_remote_get( 'http://content.ghozylab.com/feed.php?'.http_build_query( $url ).'', array( 'sslverify' => false ) );
		
		if ( ! is_wp_error( $feed ) ) {
			if ( isset( $feed['body'] ) && strlen( $feed['body'] ) > 0 ) {
				$cache = wp_remote_retrieve_body( $feed );
				set_transient( 'ewiclite_whats_new', $cache, 60 );
			}
		} else {
			$cache = '<div class="error"><p>' . __( 'There was an error retrieving the list from the server. Please try again later.', 'image-slider-widget' ) . '</div>';
		}
	}
	echo $cache;
}


/*-------------------------------------------------------------------------------*/
/* Generate EXTRA Page
/*-------------------------------------------------------------------------------*/
function ewic_earn_xtra_money() {
	
	wp_enqueue_script( 'ewic-wnew' );
	
	$aff_id 	= ewic_get_aff_option( 'ewic_affiliate_info', 'ewic_aff_id', '' );
	$aff_name 	= ewic_get_aff_option( 'ewic_affiliate_info', 'ewic_aff_name', '' );
	$aff_email 	= ewic_get_aff_option( 'ewic_affiliate_info', 'ewic_aff_email', '' );
	
		if( $aff_id != '' ) {
			
			$iscon = 'style="display:none;"'; $isdis = ''; $ists = 'Connected'; $intext = 'Disconnect'; $dnonce = 'data-nonce="'.wp_create_nonce( 'ewicaffiliate' ).'"'; $dcmd = 'data-cmd="ewic_affiliate_dis"';
		
		} else {
			
			$iscon = ''; $isdis = 'display:none;'; $ists = ''; $intext = 'Connect'; $dnonce = 'data-nonce="'.wp_create_nonce( 'ewicaffiliate' ).'"'; $dcmd = 'data-cmd="ewic_affiliate_con"';
			
			}
	
	
	ob_start(); ?>

		<div id="ewic-not-yet" <?php echo $iscon; ?>>
		<h3>If you don't have a GhozyLab Affiliate account yet, you can sign up today for free <a href="https://secure.ghozylab.com/affiliate-area/" target="_blank">here</a></h3>
<h4 style="font-style:italic; color: #666;">Hurry Up! Join with GhozyLab Affiliate with 6,000 affiliates and pays out over $200,000 per year! Earn EXTRA MONEY and get 30% affiliate share from every sale you make!</h4>
		<p class="ewic-iscon" style="font-style:italic; color:#666; border-bottom: 1px dotted #CCC; margin-top: 35px; padding-bottom: 5px;"><?php _e('Fill your Affiliate Account Email or Payment Email and press Connect button to start earn extra Money with us!'); ?></p>
        </div>
        
		<div id="ewic-aff-registered" style="width: auto;<?php echo $isdis; ?>">
		<h3 id="ewic-aff-holder">Hi, <?php echo $aff_name.' ('.$aff_email. ' )'; ?></h3>
        <hr />
        </div>
        
		<form method="post">

			<?php settings_fields('ewic_aff_section'); ?>

			<table class="form-table">
				<tbody>
					<tr valign="top">
						<th style="width:155px !important;" scope="row" valign="top">
							<?php _e('Account Email or Payment Email'); ?>
						</th>
						<td>
							<input id="ewic_aff_email" name="ewic_aff_email" type="text" class="regular-text" value="<?php esc_attr_e( $aff_email ); ?>" />
							<label id="is-status" style="color:green; font-style:italic;" class="description" for="ewic_aff_section_email"><?php echo $ists; ?></label>

					<?php if( false !== $aff_id ) { ?>
									<?php wp_nonce_field( 'ewic_aff_section_nonce', 'ewic_aff_section_nonce' ); ?>
									<br /><input style="margin-top: 10px;" <?php echo $dnonce; ?> <?php echo $dcmd; ?> type="submit" class="button-secondary" id="ewic-aff" name="ewic-aff" value="<?php echo $intext; ?>"/><span id="loader"></span><br /><br />
                                    <span class="ewic-aff-note">NOTE: To respect <a href="https://wordpress.org/plugins/about/guidelines/" target="_blank">Plugin Guidelines</a> ( point 10 ) so by pressing the connect button that means you are agree to displaying <strong>Powered by</strong> link in your slider footer</span>
					<?php } ?>
                    
						</td>
					</tr>
				</tbody>
			</table>

		</form>	
        
         <hr style="margin-bottom:20px;">   
            
				<div class="feature-section">

					<img src="<?php echo EWIC_URL . '/images/assets/aff-sc.jpg'; ?>" class="ewic-affiliate-screenshots"/>

					<h4><?php _e( 'How does it work?', 'image-slider-widget' );?></h4>
                    
					<ul style="margin-left: 30px;list-style-type: circle;">
                    <p><?php _e( 'After successfully registered with our Affiliate program what you have to do just :', 'image-slider-widget' );?></p>
                    <li><?php _e( 'Fill your Affiliate Account Email or Payment Email in field above and Hit Connect button', 'image-slider-widget' );?></li>
                    <li><?php _e( 'After connected you will see green connected status', 'image-slider-widget' );?></li>
                    <li><?php _e( 'Check your form and you will find your affiliate link in the bottom of your slider like in the right side screenshot', 'image-slider-widget' );?></li>
                    <li><?php _e( 'Now when individuals follow that link and subsequently make a purchase, you will be credited for the transaction and you will receive a payout', 'image-slider-widget' );?></li>
                    <li><?php _e( 'Congratulations! You are ready to start to earn extra money', 'image-slider-widget' );?></li>
					</ul>
                    
                    </div>
    
<?php        
echo ob_get_clean();
	
}


/*-------------------------------------------------------------------------------*/
/* Get Affiliate data
/*-------------------------------------------------------------------------------*/
function ewic_get_aff_option( $option_name, $key, $default = false ) {
	
	$options = get_option( $option_name );

	if ( $options ) {
		return (array_key_exists( $key, $options )) ? $options[$key] : $default;
	}

	return $default;
}


/*-------------------------------------------------------------------------------*/
/* Update Affiliate data
/*-------------------------------------------------------------------------------*/
function ewic_update_aff_info( $aff_data, $email ) {
	$aff = array(
	"ewic_aff_id" => trim( $aff_data->aff_id ),
	"ewic_aff_name" => trim( $aff_data->aff_name ),
	"ewic_aff_email" => trim( $email ),
	
		);
		
		update_option('ewic_affiliate_info', $aff);	
			
}


/*-------------------------------------------------------------------------------*/
/* Get Affiliate data ( API )
/*-------------------------------------------------------------------------------*/
function ewic_get_aff_data() {
	
	// run a quick security check
	 if( ! check_ajax_referer( 'ewicaffiliate', 'security' ) )
		return;

	switch( $_POST['command'] ){
		
		case 'ewic_affiliate_con':
		
			// listen for aff button to be clicked
			if( isset( $_POST['eml'] ) ) {
				
				$affemail = $_POST['eml'];
				
				$api_params = array(
					'ghozy_action' => 'get_aff_data',
					'email' 	=> $affemail
					);

				// Call the custom API.
				$response = _ewicaffiliateFetchmode( $api_params );

				if ( isset( $response ) && $response->status == true ) {
		
					ewic_update_aff_info( $response, $affemail );
					echo json_encode( $response );
		
				} else {
					
					$response = array(
						"status" => false,
						"aff_id" => false,
						"aff_name" => false,
						);
					
					echo json_encode( $response );
					
					}
		
			}
		
		break; 
		
		case 'ewic_affiliate_dis':
		
		delete_option( 'ewic_affiliate_info' );
		
					$response = array(
						"status" => 'disconnected',
						"aff_id" => false,
						"aff_name" => false,
						);
					
					echo json_encode( $response );
					  
		break;
		
		default:
		break;	
		
	}
	
	wp_die();

}

add_action('wp_ajax_ewic_get_aff_data', 'ewic_get_aff_data');


/*-------------------------------------------------------------------------------*/
/* Defined for using CURL or Not
/*-------------------------------------------------------------------------------*/
function _ewicaffiliateFetchmode( $api_params ) {
	
    if(function_exists('curl_version')){
		
		$response = wp_remote_get( add_query_arg( $api_params, EWIC_API_URLCURL ), array( 'timeout' => 15, 'sslverify' => false ) );
		
		if ( is_wp_error( $response ) )
			return false;

			$dat = json_decode( wp_remote_retrieve_body( $response ) );
			
			}
  		
		else {
			
			$json_url = add_query_arg( $api_params, EWIC_API_URL );
			$json = file_get_contents( $json_url );
			
			if ( is_wp_error( $json_url ) )
			return false;

			$dat = json_decode( $json );		
					
			}							
						
		return $dat;
			
}


/*-------------------------------------------------------------------------------*/
/* Timthumb Check @since 1.1.17
/*-------------------------------------------------------------------------------*/

function ewic_timthumb_check() {
	
	check_ajax_referer( 'ewic-tt-nonce', 'security' );
	
	$file = $_POST['turl'];
	
	$checknow = @fopen( $file, 'w' );
	
	if( $checknow ){
			
		fclose( $checknow );
		unlink( $file );
		
			echo '1';

		} else {
			
			wp_die();
			
		}
		
	wp_die();

}

add_action('wp_ajax_ewic_timthumb_check', 'ewic_timthumb_check');


function ewic_generate_timthumb( $url, $w, $h ) {
	
	if ( $url ) {
		
		if ( $w ) {
			
			$w = $w;
			
			} else {
				
				$w = '650';
				
				}
				
		if ( $h != 'auto' && $h != '' ) {
			
			$h = '&h='.$h.'&zc=1';
			
			} else {
				
				$h = '';
				
				}
		
		$newimg = EWIC_TIMTHUMB.'?src='.$url.'&w='.$w.$h.'&q=100';
		
	} else {
		
		$newimg = '';
		
		}
	
	return $newimg;
	
}


/*-------------------------------------------------------------------------------*/
/*  Duplicate Slider
/*-------------------------------------------------------------------------------*/
function ewic_duplicate_slider(){
	global $wpdb;
	if (! ( isset( $_GET['post']) || isset( $_POST['post'])  || ( isset($_REQUEST['action']) && 'ewic_duplicate_slider' == $_REQUEST['action'] ) ) ) {
		wp_die('No post to duplicate has been supplied!');
	}
 
	/*
	 * get the original post id
	 */
	$post_id = (isset($_GET['post']) ? $_GET['post'] : $_POST['post']);
	/*
	 * and all the original post data then
	 */
	$post = get_post( $post_id );
 
	/*
	 * if you don't want current user to be the new post author,
	 * then change next couple of lines to this: $new_post_author = $post->post_author;
	 */
	$current_user = wp_get_current_user();
	$new_post_author = $current_user->ID;
 
	/*
	 * if post data exists, create the post duplicate
	 */
	if (isset( $post ) && $post != null) {
 
		/*
		 * new post data array
		 */
		$args = array(
			'comment_status' => $post->comment_status,
			'ping_status'    => $post->ping_status,
			'post_author'    => $new_post_author,
			'post_content'   => $post->post_content,
			'post_excerpt'   => $post->post_excerpt,
			'post_name'      => $post->post_name,
			'post_parent'    => $post->post_parent,
			'post_password'  => $post->post_password,
			'post_status'    => 'draft',
			'post_title'     => 'COPY of '. $post->post_title,
			'post_type'      => $post->post_type,
			'to_ping'        => $post->to_ping,
			'menu_order'     => $post->menu_order
		);
 
		/*
		 * insert the post by wp_insert_post() function
		 */
		$new_post_id = wp_insert_post( $args );
 
		/*
		 * get all current post terms ad set them to the new post draft
		 */
		$taxonomies = get_object_taxonomies($post->post_type); // returns array of taxonomy names for post type, ex array("category", "post_tag");
		foreach ($taxonomies as $taxonomy) {
			$post_terms = wp_get_object_terms($post_id, $taxonomy, array('fields' => 'slugs'));
			wp_set_object_terms($new_post_id, $post_terms, $taxonomy, false);
		}
 
		/*
		 * duplicate all post meta just in two SQL queries
		 */
		$post_meta_infos = $wpdb->get_results("SELECT meta_key, meta_value FROM $wpdb->postmeta WHERE post_id=$post_id");
		if (count($post_meta_infos)!=0) {
			$sql_query = "INSERT INTO $wpdb->postmeta (post_id, meta_key, meta_value) ";
			foreach ($post_meta_infos as $meta_info) {
				$meta_key = $meta_info->meta_key;
				$meta_value = addslashes($meta_info->meta_value);
				$sql_query_sel[]= "SELECT $new_post_id, '$meta_key', '$meta_value'";
			}
			$sql_query.= implode(" UNION ALL ", $sql_query_sel);
			$wpdb->query($sql_query);
		}
 
 
		/*
		 * finally, redirect to the edit post screen for the new draft
		 */
		 
		 if ( wp_get_referer() ) {
			 
			 wp_safe_redirect( wp_get_referer() );
			 
			 } else {
				 
				 wp_redirect( admin_url( 'post.php?action=edit&post=' . $new_post_id ) );
				 
				 }
		
		exit;
	} else {
		wp_die('Post creation failed, could not find original post: ' . $post_id);
	}
}


add_action( 'admin_action_ewic_duplicate_slider', 'ewic_duplicate_slider' );


/*-------------------------------------------------------------------------------*/
/*  Admin Bar @since 1.1.73
/*-------------------------------------------------------------------------------*/
function ewic_add_toolbar_items($admin_bar){
	
	$admin_bar->add_menu( array(
		'id'    => 'ewic-tb-item',
		'title' => '<span style="padding:5px;margin-left: 5px;margin-right: 5px;color:#fff;background-color: #f44;background-image:-moz-linear-gradient(bottom,#0074A2, #009DD9);
	background-image: -webkit-gradient(linear, left bottom, left top, from(#0074A2), to(#009DD9));"><img src="'.plugins_url( 'images/ewic-cp-icon.png' , dirname(__FILE__) ).'" style="vertical-align:middle;margin-right:5px" alt="Image Slider Plugin" title="Image Slider Plugin" />UPGRADE IMAGE SLIDER TO PRO</span>',
		'href'  => 'https://ghozylab.com/plugins/ordernow.php?order=eispro&utm_source=adminbar&utm_medium=ewic_adminbar&utm_campaign=ewic_adminbar',
		'target' => '_blank',
		'meta'  => array(
			'title' => __('Upgrade to Pro Version'),
			'target' => '_blank'			
		),
	));
	
}

add_action('admin_head','ewic_add_toolbar_items_handler');

function ewic_add_toolbar_items_handler() {
	
	global $current_screen;
	
	if( isset( $current_screen ) && 'easyimageslider' == $current_screen->post_type ) {
		
		add_action('admin_bar_menu', 'ewic_add_toolbar_items', 101);
		
	}
	
}