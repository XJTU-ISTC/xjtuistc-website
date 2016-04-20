<?php
/**
 * Weclome Page Class
 *
 * @package     EWIC
 * @since       1.1.15
 */

// Exit if accessed directly
if ( ! defined( 'ABSPATH' ) ) exit;

/**
 * EWIC_Welcome Class
 *
 * A general class for About and Credits page.
 *
 * @since 1.1.15
 */
class EWIC_Welcome {

	/**
	 * @var string The capability users should have to view the page
	 */
	public $minimum_capability = 'manage_options';

	/**
	 * Get things started
	 *
	 * @since 1.1.15
	 */
	public function __construct() {
		add_action( 'admin_menu', array( $this, 'ewic_admin_menus') );
		add_action( 'admin_head', array( $this, 'ewic_admin_head' ) );
		add_action( 'admin_head', array( $this, 'ewic_welcome_styles' ) );
		add_action( 'admin_init', array( $this, 'ewic_welcome_page' ) );
	}

	/**
	 * Register the Dashboard Pages which are later hidden but these pages
	 * are used to render the Welcome and Credits pages.
	 *
	 * @access public
	 * @since 1.4
	 * @return void
	 */
	public function ewic_admin_menus() {

			// What's New / Overview
    		add_submenu_page('edit.php?post_type=easyimageslider', 'What\'s New', 'What\'s New<span class="ewic-menu-blink">NEW</span>', $this->minimum_capability, 'ewic-whats-new', array( $this, 'ewic_about_screen') );
			
			// Changelog Page
    		add_submenu_page('edit.php?post_type=easyimageslider', EWIC_NAME.' Changelog', EWIC_NAME.' Changelog', $this->minimum_capability, 'ewic-changelog', array( $this, 'ewic_changelog_screen') );
			
			// Getting Started Page
    		add_submenu_page('edit.php?post_type=easyimageslider', 'Getting started with '.EWIC_NAME.'', 'Getting started with '.EWIC_NAME.'', $this->minimum_capability, 'ewic-getting-started', array( $this, 'ewic_getting_started_screen') );
			
			// Free Plugins Page
    		add_submenu_page('edit.php?post_type=easyimageslider', 'Free Install Plugins', 'Free Install Plugins', $this->minimum_capability, 'ewic-free-plugins', array( $this, 'free_plugins_screen') );
			
			// Premium Plugins Page
    		add_submenu_page('edit.php?post_type=easyimageslider', 'Premium Plugins', 'Premium Plugins', $this->minimum_capability, 'ewic-premium-plugins', array( $this, 'premium_plugins_screen') );
			
			// Addons Page
    		add_submenu_page('edit.php?post_type=easyimageslider', 'Addons', 'Addons', $this->minimum_capability, 'ewic-addons', array( $this, 'addons_plugins_screen') );
			
			// Earn EXTRA MONEY Page
    		add_submenu_page('edit.php?post_type=easyimageslider', 'Earn EXTRA MONEY', 'Earn EXTRA MONEY', $this->minimum_capability, 'ewic-earn-xtra-money', array( $this, 'earn_plugins_screen') );
			
			// Pricing Page
			add_submenu_page('edit.php?post_type=easyimageslider', 'Pricing & compare tables', __('UPGRADE to PRO', 'image-slider-widget'), $this->minimum_capability, 'ewic-comparison', 'ewic_pricing_table');
			
			// Settings Page
			add_submenu_page('edit.php?post_type=easyimageslider', 'Global Settings', __('Global Settings', 'image-slider-widget'), $this->minimum_capability, 'ewic-settings-page', 'ewic_stt_page');
			
				
	}

	/**
	 * Hide Individual Dashboard Pages
	 *
	 * @access public
	 * @since 1.1.15
	 * @return void
	 */
	public function ewic_admin_head() {
		remove_submenu_page( 'edit.php?post_type=easyimageslider', 'ewic-changelog' );
		remove_submenu_page( 'edit.php?post_type=easyimageslider', 'ewic-getting-started' );
		remove_submenu_page( 'edit.php?post_type=easyimageslider', 'ewic-free-plugins' );
		remove_submenu_page( 'edit.php?post_type=easyimageslider', 'ewic-premium-plugins' );
		remove_submenu_page( 'edit.php?post_type=easyimageslider', 'ewic-addons' );
		remove_submenu_page( 'edit.php?post_type=easyimageslider', 'ewic-earn-xtra-money' );
	
		// Badge for welcome page
		$badge_url = EWIC_URL . '/images/assets/slider-logo.png';
		
		?>
        
        <script>

				jQuery(document).ready(function($) {
					
					if ( $( '.ewictabs' ).length ) {	
				
					var ewicTabsPos = $('.ewictabs').offset();
				
					$(window).scroll(function(){
						
						if($(window).scrollTop() > ewicTabsPos.top) {
							
							$('.ewictabs').addClass('ewictabfixed');
							
							}
							
							else {
								
								$('.ewictabs').removeClass('ewictabfixed');
								
								}
								
						});	
					
					}
					
				});		
		
		</script>
        
        
		<style type="text/css" media="screen">
		/*<![CDATA[*/
		
		a:focus {box-shadow: none !important; }
		
		.ewictabs{
			width:auto;
			height:50px;
			padding:10px;
			margin-top: 50px;
			}
		
		.ewictabfixed {
			position: fixed;
			-webkit-box-shadow: 0px 0px 17px -4px rgba(0,0,0,0.75);
			-moz-box-shadow: 0px 0px 17px -4px rgba(0,0,0,0.75);
			box-shadow: 0px 0px 17px -4px rgba(0,0,0,0.75);
			background:#EAEAEA;
			z-index: 999;
			margin: 0px auto;
			width: 100%;
			/* max-width: 1050px; */
			left: 0px;
			top: 0px;
			padding-left: 210px;
			padding-top: 32px;	
			}
			
		.ewictabfixed h2 {
			border-bottom : 1px dashed #DADADA !important;
		}
				
		.ewic-badge {
			padding-top: 150px;
			height: 128px;
			width: 128px;
			color: #666;
			font-weight: bold;
			font-size: 14px;
			text-align: center;
			text-shadow: 0 1px 0 rgba(255, 255, 255, 0.8);
			margin: 0 -5px;
			background: url('<?php echo $badge_url; ?>') no-repeat;
		}

		.about-wrap .ewic-badge {
			position: absolute;
			top: 0;
			right: 0;
		}

		.ewic-welcome-screenshots {
			float: right;
			margin-left: 10px!important;
		}

		.about-wrap .feature-section {
			margin-top: 20px;
		}
		
		
		.about-wrap .feature-section .plugin-card h4 {
    		margin: 0px 0px 12px;
    		font-size: 18px;
    		line-height: 1.3;
		}
		
		.about-wrap .feature-section .plugin-card-top p {
    		font-size: 13px;
    		line-height: 1.5;
    		margin: 1em 0px;
		}	
				
		.about-wrap .feature-section .plugin-card-bottom {
    		font-size: 13px;
		}	

		.customh4 {
			display:inline-block;
			border-bottom: 1px dashed #CCC;
		}
		
		
		.ewic-dollar {
		
		background: url('<?php echo EWIC_URL . '/images/assets/dollar.png'; ?>') no-repeat;
		color: #2984E0;
			
		}
		
		.ewic-affiliate-screenshots {
			-webkit-box-shadow: -3px 1px 15px -4px rgba(0,0,0,0.75);
			-moz-box-shadow: -3px 1px 15px -4px rgba(0,0,0,0.75);
			box-shadow: -3px 1px 15px -4px rgba(0,0,0,0.75);
			float: right;
			margin: 20px 0 30px 30px !important;
		}
		
		
		.button_loading {
    		background: url('<?php echo EWIC_URL . '/images/assets/gen-loader.gif'; ?>') no-repeat 50% 50%;
    		/* apply other styles to "loading" buttons */
			display:inline-block;
			position:relative;
			width: 16px;
			height: 16px;
			top: 17px;
			margin-left: 10px;
			}
			
		.ewic-aff-note {
			color:#F00;
			font-size:12px;
			font-style:italic;
		}
		
		
	/* Featured Plugin Styles
	-------------------------------------------------------------- */
	#ghozy-featured h2 { margin: 0 0 15px; }
	#ghozy-featured .ghozy-extension { float: left; margin: 0 15px 15px 0; background: #FFF; border: 1px solid #DEDEDE; width: 320px; height: auto; position: relative; }
	#ghozy-featured .ghozy-extension h3 { margin: 0 0 8px; font-size: 13px;  }
	#ghozy-featured .ghozy-extension .button-secondary { position: relative; left: 0px; margin-bottom: 5px; }
	#ghozy-featured .ghozy-browse-all { clear:both; width:100%; }
	#ghozy-featured .ghozy-extension .third-party { display: none; }
	#ghozy-featured .ghozy-extension .feedtop { padding: 8px; }
	#ghozy-featured .feedbottom {clear: both; background-color: #FAFAFA; border-top: 1px solid #DEDEDE; overflow: hidden; }
	#ghozy-featured .feeddesc { margin-bottom: 25px; padding: 0px 8px 8px 8px; }
	#ghozy-featured .getitfeed { margin-left: 8px; bottom: 8px;}
	
	
	.ewic-scode-block {
		padding: 4px;
		background: none repeat scroll 0% 0% rgba(0, 0, 0, 0.07);
		font-family: "courier new",courier;
		cursor: pointer;
		font-size:1em !important;
		border: 1px dashed #bab6ac !important;
		text-align:center !important;
		}
	
	.column-ewic_imgcnt { width:100px; }
	
	.ewic-shortcode-message {
    	font-style: italic;
    	color: #2EA2CC !important;
	}
		
		.ewic-menu-blink {

			padding:0px 6px 0px 6px;
			background-color: #E74C3C;
			border-radius:9px;
			-moz-border-radius:9px;
			-webkit-border-radius:9px;
			margin-left:5px;
			color:#fff;
			font-size:10px !important;
    		outline:none;
    		text-decoration: none;

		}
		@-webkit-keyframes ewicblink {
    		0% {
        		opacity: 1;
    		}
    		50% {
        		opacity: 1;
    		}
    		50.01% {
        		opacity: 0;
    		}
    		100% {
        		opacity: 0;
    		}
		}

		@-moz-keyframes ewicblink {
    		0% {
        		opacity: 1;
    		}
    		50% {
        		opacity: 1;
    		}
    		50.01% {
        		opacity: 0;
    		}
    		100% {
        		opacity: 0;
    		}
		}
		@keyframes ewicblink {
    		0% {
        		opacity: 1;
    		}
    		50% {
        		opacity: 1;
    		}
    		50.01% {
        		opacity: 0;
    		}
    		100% {
        		opacity: 0;
    		}
		}

		.ewic-menu-blink:hover {
    		-webkit-animation:none;
    		-moz-animation: none;
    		animation: none;
		}
		
		
		/*]]>*/
		</style>
		<?php
		
	}
	

	/**
	 * Put Copy Shortcode
	 *
	 * @access public
	 * @since 1.1.57
	 * @return void
	 */
	public function ewic_include_clipboard_script() {
	
			?>
            
				<style>

		.ewic_actions {margin-right: 15px !important;margin-top: 5px !important;}
		.ewic_tooltips {box-shadow: none !important; }
		.ewic_tooltips[alt] { position: relative;}
		.ewic_tooltips[alt]:hover:after{
content: attr(alt);
padding: 3px 12px;
color: #85003a;
position: absolute;
white-space: nowrap;
z-index: 20;
left:0px;
top:33px;
-moz-border-radius: 3px;
-webkit-border-radius: 3px;
border-radius: 3px;
-moz-box-shadow: 0px 0px 2px #c0c1c2;
-webkit-box-shadow: 0px 0px 2px #c0c1c2;
box-shadow: 0px 0px 2px #c0c1c2;
background-image: -moz-linear-gradient(top, #ffffff, #eeeeee);
background-image: -webkit-gradient(linear,left top,left bottom,color-stop(0, #ffffff),color-stop(1, #eeeeee));
background-image: -webkit-linear-gradient(top, #ffffff, #eeeeee);
background-image: -moz-linear-gradient(top, #ffffff, #eeeeee);
background-image: -ms-linear-gradient(top, #ffffff, #eeeeee);
background-image: -o-linear-gradient(top, #ffffff, #eeeeee);}
.delsliders:hover {color:rgb(171, 27, 27);}
				
				</style>
            
            
				<script>
				
					jQuery(function($) {
						$('.ewic-scode-block').click( function () {
							try {
								//select the contents
								this.select();
								//copy the selection
								document.execCommand('copy');
								//show the copied message
								$('.ewic-shortcode-message').remove();
								$(this).after('<p class="ewic-shortcode-message"><?php _e( 'Shortcode copied to clipboard','image-slider-widget' ); ?></p>');
							} catch(err) {
								console.log('Oops, unable to copy!');
							}
						});
					});
				</script>
				<?php	
	}


	/**
	 * Put Style on Individual Pages
	 *
	 * @access public
	 * @since 1.1.57
	 * @return void
	 */
	public function ewic_welcome_styles() {
		
		global $current_screen;
	
		if( 'easyimageslider' == $current_screen->post_type ) {
			
		add_action( 'admin_footer', array( $this, 'ewic_include_clipboard_script') );
		
		}
		
	}


	/**
	 * Navigation tabs
	 *
	 * @access public
	 * @since 1.1.15
	 * @return void
	 */
	public function ewic_tabs() {
		$selected = isset( $_GET['page'] ) ? $_GET['page'] : 'ewic-whats-new';
		?>
        <div class="ewictabs">
		<h2 class="nav-tab-wrapper">
			<a class="nav-tab <?php echo $selected == 'ewic-whats-new' ? 'nav-tab-active' : ''; ?>" href="<?php echo esc_url( admin_url( add_query_arg( array( 'page' => 'ewic-whats-new' ), 'edit.php?post_type=easyimageslider' ) ) ); ?>">
				<?php _e( "What's New", 'image-slider-widget' ); ?>
			</a>
			<a class="nav-tab <?php echo $selected == 'ewic-getting-started' ? 'nav-tab-active' : ''; ?>" href="<?php echo esc_url( admin_url( add_query_arg( array( 'page' => 'ewic-getting-started' ), 'edit.php?post_type=easyimageslider' ) ) ); ?>">
				<?php _e( 'Getting Started', 'image-slider-widget' ); ?>
			</a>
			<a class="nav-tab <?php echo $selected == 'ewic-addons' ? 'nav-tab-active' : ''; ?>" href="<?php echo esc_url( admin_url( add_query_arg( array( 'page' => 'ewic-addons' ), 'edit.php?post_type=easyimageslider' ) ) ); ?>">
				<?php _e( 'Addons', 'image-slider-widget' ); ?>
			</a>
            
			<a class="nav-tab <?php echo $selected == 'ewic-free-plugins' ? 'nav-tab-active' : ''; ?>" href="<?php echo esc_url( admin_url( add_query_arg( array( 'page' => 'ewic-free-plugins' ), 'edit.php?post_type=easyimageslider' ) ) ); ?>">
				<?php _e( 'Free Plugins', 'image-slider-widget' ); ?>
			</a>
            
			<a class="nav-tab <?php echo $selected == 'ewic-premium-plugins' ? 'nav-tab-active' : ''; ?>" href="<?php echo esc_url( admin_url( add_query_arg( array( 'page' => 'ewic-premium-plugins' ), 'edit.php?post_type=easyimageslider' ) ) ); ?>">
				<?php _e( 'Premium Plugins', 'image-slider-widget' ); ?>
			</a>
            
			<a class="nav-tab <?php echo $selected == 'ewic-earn-xtra-money' ? 'nav-tab-active' : ''; ?>" href="<?php echo esc_url( admin_url( add_query_arg( array( 'page' => 'ewic-earn-xtra-money' ), 'edit.php?post_type=easyimageslider' ) ) ); ?>">
				<?php _e( '<span class="ewic-dollar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Extra</span>', 'image-slider-widget' ); ?>
			</a>
          
            
            
		</h2>
        </div>
		<?php
	}

	/**
	 * Render About Screen
	 *
	 * @access public
	 * @since 1.1.15
	 * @return void
	 */
	public function ewic_about_screen() {
		list( $display_version ) = explode( '-', EWIC_VERSION );
		?>
		<div class="wrap about-wrap">
			<h1><?php printf( __( 'Welcome to '.EWIC_NAME.'', 'image-slider-widget' ), $display_version ); ?></h1>
			<div class="about-text"><?php printf( __( 'Thank you for installing '.EWIC_NAME.'. This plugin is ready to make your slider more fancy and better!', 'image-slider-widget' ), $display_version ); ?></div>
			<div class="ewic-badge"><?php printf( __( 'Version %s', 'image-slider-widget' ), $display_version ); ?></div>

			<?php $this->ewic_tabs(); ?>
            
            <?php ewic_lite_get_news();  ?>

			<div class="ewic-container-cnt">
				<h3 class="customh3"><?php _e( 'New Welcome Page', 'image-slider-widget' );?></h3>

				<div class="feature-section">

					<p><?php _e( 'Version 1.1.15 introduces a comprehensive welcome page interface. The easy way to get important informations about this product and other related plugins.', 'image-slider-widget' );?></p>
                    
					<p><?php _e( 'In this page, you will find four important Tabs named Getting Started, Addons, Free Plugins, Premium Plugins and Extra.', 'image-slider-widget' );?></p>

				</div>
			</div>

			<div class="ewic-container-cnt">
				<h3 class="customh3"><?php _e( 'ADDONS', 'image-slider-widget' );?></h3>

				<div class="feature-section">

					<p><?php _e( 'Need some Pro version features to be applied in your Free version? What you have to do just go to <strong>Addons</strong> page and choose any Addons that you want to install. All listed addons are Premium version.', 'image-slider-widget' );?></p>

				</div>
			</div>

			<div class="ewic-container-cnt">
				<h3><?php _e( 'Additional Updates', 'image-slider-widget' );?></h3>

				<div class="feature-section col three-col">
					<div>

						<h4><?php _e( 'CSS Clean and Optimization', 'image-slider-widget' );?></h4>
						<p><?php _e( 'We\'ve improved some css class to make your slider for look fancy and better.', 'image-slider-widget' );?></p>

					</div>

					<div>

						<h4><?php _e( 'Disable Notifications', 'image-slider-widget' );?></h4>
						<p><?php _e( 'In this version you will no longer see some annoying notifications in top of slider editor page. Thanks for who suggested it.' ,'image-slider-widget' );?></p>
                        
					</div>

					<div class="last-feature">

						<h4><?php _e( 'Improved Several Function', 'image-slider-widget' );?></h4>
						<p><?php _e( 'Slider function has been improved to be more robust and fast so you can create slider only in minutes.', 'image-slider-widget' );?></p>

					</div>

				</div>
			</div>

			<div class="return-to-dashboard">&middot;<a href="<?php echo esc_url( admin_url( add_query_arg( array( 'page' => 'ewic-changelog' ), 'edit.php?post_type=easyimageslider' ) ) ); ?>"><?php _e( 'View the Full Changelog', 'image-slider-widget' ); ?></a>
			</div>
		</div>
		<?php
	}

	/**
	 * Render Changelog Screen
	 *
	 * @access public
	 * @since 1.1.15
	 * @return void
	 */
	public function ewic_changelog_screen() {
		list( $display_version ) = explode( '-', EWIC_VERSION );
		?>
		<div class="wrap about-wrap">
			<h1><?php _e( EWIC_NAME. ' Changelog', 'image-slider-widget' ); ?></h1>
			<div class="about-text"><?php printf( __( 'Thank you for installing '.EWIC_NAME.'. This plugin is ready to make your slider more fancy and better!', 'image-slider-widget' ), $display_version ); ?></div>
			<div class="ewic-badge"><?php printf( __( 'Version %s', 'image-slider-widget' ), $display_version ); ?></div>

			<?php $this->ewic_tabs(); ?>

			<div class="ewic-container-cnt">
				<h3><?php _e( 'Full Changelog', 'image-slider-widget' );?></h3>
				<div>
					<?php echo $this->parse_readme(); ?>
				</div>
			</div>

		</div>
		<?php
	}

	/**
	 * Render Getting Started Screen
	 *
	 * @access public
	 * @since 1.9
	 * @return void
	 */
	public function ewic_getting_started_screen() {
		list( $display_version ) = explode( '-', EWIC_VERSION );
		?>
		<div class="wrap about-wrap">
			<h1><?php printf( __( 'Welcome to '.EWIC_NAME.'', 'image-slider-widget' ), $display_version ); ?></h1>
			<div class="about-text"><?php printf( __( 'Thank you for installing '.EWIC_NAME.'. This plugin is ready to make your slider more fancy and better!', 'image-slider-widget' ), $display_version ); ?></div>
			<div class="ewic-badge"><?php printf( __( 'Version %s', 'image-slider-widget' ), $display_version ); ?></div>

			<?php $this->ewic_tabs(); ?>

			<p class="about-description"><?php _e( 'There are no complicated instructions because this plugin designed to make all easy. Please watch the following video and we believe that you will easily to understand it just in minutes :', 'image-slider-widget' ); ?></p>

			<div class="ewic-container-cnt">
				<div class="feature-section">
                <iframe width="853" height="480" src="https://www.youtube.com/embed/-W8u_t05K2Y?rel=0" frameborder="0" allowfullscreen></iframe>
			</div>
            </div>

			<div class="ewic-container-cnt">
				<h3><?php _e( 'Need Help?', 'image-slider-widget' );?></h3>

				<div class="feature-section">

					<h4><?php _e( 'Phenomenal Support','image-slider-widget' );?></h4>
					<p><?php _e( 'We do our best to provide the best support we can. If you encounter a problem or have a question, post a question in the <a href="https://wordpress.org/support/plugin/image-slider-widget" target="_blank">support forums</a>.', 'image-slider-widget' );?></p>

					<h4><?php _e( 'Need Even Faster Support?', 'image-slider-widget' );?></h4>
					<p><?php _e( 'Just upgrade to <a target="_blank" href="http://demo.ghozylab.com/plugins/easy-image-slider-plugin/pricing/">Pro version</a> and you will get Priority Support are there for customers that need faster and/or more in-depth assistance.', 'image-slider-widget' );?></p>

				</div>
			</div>

			<div class="ewic-container-cnt">
				<h3><?php _e( 'Stay Up to Date', 'image-slider-widget' );?></h3>

				<div class="feature-section">

					<h4><?php _e( 'Get Notified of Addons Releases','image-slider-widget' );?></h4>
					<p><?php _e( 'New Addons that make '.EWIC_NAME.' even more powerful are released nearly every single week. Subscribe to the newsletter to stay up to date with our latest releases. <a target="_blank" href="http://eepurl.com/bq3RcP" target="_blank">Signup now</a> to ensure you do not miss a release!', 'image-slider-widget' );?></p>

				</div>
			</div>

		</div>
		<?php
	}
	
	
	
	/**
	 * Render Free Plugins
	 *
	 * @access public
	 * @since 1.1.15
	 * @return void
	 */
	public function free_plugins_screen() {
		list( $display_version ) = explode( '-', EWIC_VERSION );
		?>
		<div class="wrap about-wrap">
			<h1><?php printf( __( 'Welcome to '.EWIC_NAME.'', 'image-slider-widget' ), $display_version ); ?></h1>
			<div class="about-text"><?php printf( __( 'Thank you for installing '.EWIC_NAME.'. This plugin is ready to make your slider more fancy and better!', 'image-slider-widget' ), $display_version ); ?></div>
			<div class="ewic-badge"><?php printf( __( 'Version %s', 'image-slider-widget' ), $display_version ); ?></div>

			<?php $this->ewic_tabs(); ?>

			<div class="ewic-container-cnt">

				<div class="feature-section">
					<?php echo ewic_free_plugin_page(); ?>
				</div>
			</div>

		</div>
		<?php
	}
	
	
	/**
	 * Render Premium Plugins
	 *
	 * @access public
	 * @since 1.1.15
	 * @return void
	 */
	public function premium_plugins_screen() {
		list( $display_version ) = explode( '-', EWIC_VERSION );
		?>
		<div class="wrap about-wrap" id="ghozy-featured">
			<h1><?php printf( __( 'Welcome to '.EWIC_NAME.'', 'image-slider-widget' ), $display_version ); ?></h1>
			<div class="about-text"><?php printf( __( 'Thank you for installing '.EWIC_NAME.'. This plugin is ready to make your slider more fancy and better!', 'image-slider-widget' ), $display_version ); ?></div>
			<div class="ewic-badge"><?php printf( __( 'Version %s', 'image-slider-widget' ), $display_version ); ?></div>

			<?php $this->ewic_tabs(); ?>

			<div class="ewic-container-cnt">
			<p style="margin-bottom:50px;"class="about-description"></p>

				<div class="feature-section">
					<?php echo ewic_get_feed(); ?>
				</div>
			</div>

		</div>
		<?php
	}
	
	
	
	/**
	 * Render Addons Page
	 *
	 * @access public
	 * @since 1.1.15
	 * @return void
	 */
	public function addons_plugins_screen() {
		list( $display_version ) = explode( '-', EWIC_VERSION );
		?>
		<div class="wrap about-wrap" id="ghozy-addons">
			<h1><?php printf( __( 'Welcome to '.EWIC_NAME.'', 'image-slider-widget' ), $display_version ); ?></h1>
			<div class="about-text"><?php printf( __( 'Thank you for installing '.EWIC_NAME.'. This plugin is ready to make your slider more fancy and better!', 'image-slider-widget' ), $display_version ); ?></div>
			<div class="ewic-badge"><?php printf( __( 'Version %s', 'image-slider-widget' ), $display_version ); ?></div>

			<?php $this->ewic_tabs(); ?>

			<div class="ewic-container-cnt">
			<p style="margin-bottom:50px;"class="about-description"></p>

				<div class="feature-section">
					<?php echo ewic_lite_get_addons_feed(); ?>
				</div>
			</div>

		</div>
		<?php
	}
	
	
	
	/**
	 * Render Addons Page
	 *
	 * @access public
	 * @since 1.1.15
	 * @return void
	 */
	public function earn_plugins_screen() {
		list( $display_version ) = explode( '-', EWIC_VERSION );
		?>
		<div class="wrap about-wrap" id="ghozy-addons">
			<h1><?php printf( __( 'Welcome to '.EWIC_NAME.'', 'image-slider-widget' ), $display_version ); ?></h1>
			<div class="about-text"><?php printf( __( 'Thank you for installing '.EWIC_NAME.'. This plugin is ready to make your slider more fancy and better!', 'image-slider-widget' ), $display_version ); ?></div>
			<div class="ewic-badge"><?php printf( __( 'Version %s', 'image-slider-widget' ), $display_version ); ?></div>

			<?php $this->ewic_tabs(); ?>

			<div class="ewic-container-cnt">
				<div class="feature-section">
					<?php ewic_earn_xtra_money(); ?>
				</div>
			</div>

		</div>
		<?php
	}
	
	

	/**
	 * Parse the EDD readme.txt file
	 *
	 * @since 2.0.3
	 * @return string $readme HTML formatted readme file
	 */
	public function parse_readme() {
		$file = file_exists( EWIC_PLUGIN_DIR . 'readme.txt' ) ? EWIC_PLUGIN_DIR . 'readme.txt' : null;

		if ( ! $file ) {
			$readme = '<p>' . __( 'No valid changlog was found.', 'image-slider-widget' ) . '</p>';
		} else {
			$readme = file_get_contents( $file );
			$readme = nl2br( esc_html( $readme ) );
			$readme = explode( '== Changelog ==', $readme );
			$readme = end( $readme );

			$readme = preg_replace( '/`(.*?)`/', '<code>\\1</code>', $readme );
			$readme = preg_replace( '/[\040]\*\*(.*?)\*\*/', ' <strong>\\1</strong>', $readme );
			$readme = preg_replace( '/[\040]\*(.*?)\*/', ' <em>\\1</em>', $readme );
			$readme = preg_replace( '/= (.*?) =/', '<h4>\\1</h4>', $readme );
			$readme = preg_replace( '/\[(.*?)\]\((.*?)\)/', '<a href="\\2">\\1</a>', $readme );
			$readme = str_replace("*","<span class='dashicons dashicons-arrow-right'></span>", $readme );
		}

		return $readme;
	}

	/**
	 * Sends user to the Welcome page on first activation of EDD as well as each
	 * time EDD is upgraded to a new version
	 *
	 * @access public
	 * @since 1.4
	 * @return void
	 */
	public function ewic_welcome_page() {	
		
    if ( is_admin() && get_option( 'activatedewic' ) == 'ewic-activate' && !is_network_admin() ) {
		delete_option( 'activatedewic' );
		wp_safe_redirect( admin_url( 'edit.php?post_type=easyimageslider&page=ewic-free-plugins' ) ); exit;
		
    	}

	}
}
new EWIC_Welcome();
