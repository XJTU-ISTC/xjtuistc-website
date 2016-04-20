<?php

if ( ! defined( 'ABSPATH' ) ) exit;


function ewic_free_plugin_page() {
	
	add_thickbox(); // @since 1.1.51
	
	include( ABSPATH . "wp-admin/includes/plugin-install.php" );
	global $tabs, $tab, $paged, $type, $term;
	$tabs = array();
	$tab = "search";
	$per_page = 30;
	$args = array
	(
		"author"=> "GhozyLab",
		"page" => $paged,
		"per_page" => $per_page,
		"fields" => array( "last_updated" => true, "downloaded" => true, "icons" => true ),
		"locale" => get_locale(),
	);
	$args = apply_filters( "install_plugins_table_api_args_$tab", $args );
	$api = plugins_api( "query_plugins", $args );
	$item = $api->plugins;
	
	$plugins_allowedtags = array(
		'a' => array( 'href' => array(), 'title' => array(), 'target' => array() ),
		'abbr' => array( 'title' => array() ), 'acronym' => array( 'title' => array() ),
		'code' => array(), 'pre' => array(), 'em' => array(), 'strong' => array(),
		'div' => array( 'class' => array() ), 'span' => array( 'class' => array() ),
		'p' => array(), 'ul' => array(), 'ol' => array(), 'li' => array(),
		'h1' => array(), 'h2' => array(), 'h3' => array(), 'h4' => array(), 'h5' => array(), 'h6' => array(),
		'img' => array( 'src' => array(), 'class' => array(), 'alt' => array() )
		);

	?>
	<form id="plugin-filter">
    
<div class="wrap">
	<style>
	.ewic-plugin-action-buttons {
		text-align:right;
		}
	.ewic-plugin-action-buttons li {
		display: inline-block;
		margin-left: 1em;
		}
		
	.ewic-button-con {
		padding-right: 15px;
		}
		
.ewic-button-install {
background: none repeat scroll 0% 0% #2EA2CC !important;
border-color: #0074A2 !important;
box-shadow: 0px 1px 0px rgba(120, 200, 230, 0.5) inset, 0px 1px 0px rgba(0, 0, 0, 0.15) !important;
color: #FFF !important;
}

.ewic-button-install:focus {
    box-shadow: 0px 0px 0px 1px #5B9DD9, 0px 0px 2px 1px rgba(30, 140, 190, 0.8) !important;
}
	
.ewic-button-install:hover {
    color: #FFF !important;
	background: none repeat scroll 0% 0% #5B9DD9 !important;
}	

.ewic-button-update {
background: none repeat scroll 0% 0% #E74F34 !important;
border-color: #C52F2F !important;
box-shadow: 0px 1px 0px rgba(255, 235, 235, 0.5) inset, 0px 1px 0px rgba(0, 0, 0, 0.15) !important;
color: #FFF !important;
}

.ewic-button-update:focus {
    box-shadow: 0px 0px 0px 1px #DA3232, 0px 0px 2px 1px rgba(255, 140, 140, 0.8) !important;
}
	
.ewic-button-update:hover {
    color: #FFF !important;
	background: none repeat scroll 0% 0% #DA3232 !important;
}

.most_popular {top: -5px;position: absolute;width: 115px;height: 85px;background: transparent url("<?php echo EWIC_URL;?>/inc/images/most_popular.png") no-repeat scroll left top;right: -5px;}

.drop-shadow {
    position:relative;
    background:#fff;
	margin-bottom:40px;
}

.drop-shadow:before,
.drop-shadow:after {
    content:"";
    position:absolute; 
    z-index:-2;
}

/* Lifted corners */

.lifted {
    -moz-border-radius:4px; 
         border-radius:4px;
}

.lifted:before,
.lifted:after { 
    bottom:15px;
    left:10px;
    width:50%;
    height:20%;
    max-width:300px;
    -webkit-box-shadow:0 15px 10px rgba(0, 0, 0, 0.7);   
       -moz-box-shadow:0 15px 10px rgba(0, 0, 0, 0.7);
            box-shadow:0 15px 10px rgba(0, 0, 0, 0.7);
    -webkit-transform:rotate(-3deg);    
       -moz-transform:rotate(-3deg);   
        -ms-transform:rotate(-3deg);   
         -o-transform:rotate(-3deg);
            transform:rotate(-3deg);
}

.lifted:after {
    right:10px; 
    left:auto;
    -webkit-transform:rotate(3deg);   
       -moz-transform:rotate(3deg);  
        -ms-transform:rotate(3deg);  
         -o-transform:rotate(3deg);
            transform:rotate(3deg);
}

.ewic-container-cnt .plugin-card {
    border: 1px solid #d7d7d7 !important;
}

.ewic-container-cnt .plugin-card-bottom {
    border-top: 1px solid #c2c2c2 !important;
	background-color: #efefef !important;
}	

		
        </style>

<div style="margin-top:30px;" class="wp-list-table widefat plugin-install">
	<div id="the-list">
    
		<?php
		foreach ( (array) $item as $plugin ) {
			if ( is_object( $plugin ) ) {
				$plugin = (array) $plugin;
			}

			
			$title = wp_kses( $plugin['name'], $plugins_allowedtags );
			// Remove any HTML from the description.
			$description = strip_tags( $plugin['short_description'] );
			$version = wp_kses( $plugin['version'], $plugins_allowedtags );

			$name = strip_tags( $title . ' ' . $version );

			$author = wp_kses( $plugin['author'], $plugins_allowedtags );
			if ( ! empty( $author ) ) {
				$author = ' <cite>' . sprintf( __( 'By %s' ), $author ) . '</cite>';
			}

			$action_links = array();

			if ( current_user_can( 'install_plugins' ) || current_user_can( 'update_plugins' ) ) {
				$status = install_plugin_install_status( $plugin );

				switch ( $status['status'] ) {
					case 'install':
						if ( $status['url'] ) {
							/* translators: 1: Plugin name and version. */
							$action_links[] = '<a class="install-now button-secondary ewic-button-install" href="' . $status['url'] . '" aria-label="' . esc_attr( sprintf( __( 'Install %s now' ), $name ) ) . '">' . __( 'Install Now' ) . '</a>';
						}

						break;
					case 'update_available':
						if ( $status['url'] ) {
							/* translators: 1: Plugin name and version */
							$action_links[] = '<a class="button ewic-button-update" href="' . $status['url'] . '" aria-label="' . esc_attr( sprintf( __( 'Update %s now' ), $name ) ) . '">' . __( 'Update Now' ) . '</a>';
						}

						break;
					case 'latest_installed':
					case 'newer_installed':
						$action_links[] = '<span class="button button-disabled" title="' . esc_attr__( 'This plugin is already installed and is up to date' ) . ' ">' . _x( 'Installed', 'plugin' ) . '</span>';
						break;
				}
			}

			$details_link   = self_admin_url( 'plugin-install.php?tab=plugin-information&amp;plugin=' . $plugin['slug'] .
								'&amp;TB_iframe=true&amp;width=750&amp;height=550' );

			/* translators: 1: Plugin name and version. */
			$action_links[] = '<a href="' . esc_url( $details_link ) . '" class="thickbox" aria-label="' . esc_attr( sprintf( __( 'More information about %s' ), $name ) ) . '" data-title="' . esc_attr( $name ) . '">' . __( 'More Details' ) . '</a>';

			if ( !empty( $plugin['icons']['svg'] ) ) {
				$plugin_icon_url = $plugin['icons']['svg'];
			} elseif ( !empty( $plugin['icons']['2x'] ) ) {
				$plugin_icon_url = $plugin['icons']['2x'];
			} elseif ( !empty( $plugin['icons']['1x'] ) ) {
				$plugin_icon_url = $plugin['icons']['1x'];
			} else {
				$plugin_icon_url = $plugin['icons']['default'];
			}

			/**
			 * Filter the install action links for a plugin.
			 *
			 * @since 2.7.0
			 *
			 * @param array $action_links An array of plugin action hyperlinks. Defaults are links to Details and Install Now.
			 * @param array $plugin       The plugin currently being listed.
			 */
			$action_links = apply_filters( 'plugin_install_action_links', $action_links, $plugin );
		?>
		<div class="plugin-card drop-shadow lifted">
			<div class="plugin-card-top" style="min-height: 160px !important;">
            <?php if ( isset( $plugin["slug"] ) && $plugin["slug"] == 'easy-media-gallery' ) {echo '<div class="most_popular"></div>';} ?>
				<a href="<?php echo esc_url( $details_link ); ?>" class="thickbox plugin-icon"><img width="128" height="128" src="<?php echo esc_attr( $plugin_icon_url ) ?>" /></a>
				<div class="name column-name" style="margin-right: 20px !important;">
					<h4><a href="<?php echo esc_url( $details_link ); ?>" class="thickbox"><?php echo $title; ?></a></h4>
				</div>
				<div class="desc column-description" style="margin-right: 20px !important;">
					<p><?php echo $description; ?></p>
					<p class="authors"><?php echo $author; ?></p>			
				</div>
			</div>
					<div class="ewic-button-con">
					<?php
						if ( $action_links ) {
							echo '<ul class="ewic-plugin-action-buttons">';
							echo '<li>' . $action_links[0] . '</li>';
							
							switch( $plugin["slug"] ){
								case "easy-media-gallery" :
								echo '<li><a class="button" aria-label="PRO VERSION DEMO" href="https://ghozylab.com/plugins/easy-media-gallery-pro/demo/best-gallery-and-photo-albums-demo/" target="_blank">PRO VERSION DEMO</a></li>';
								break;
								
								case "image-slider-widget" :
								echo '<li><a class="button" aria-label="PRO VERSION DEMO" href="http://demo.ghozylab.com/plugins/easy-image-slider-plugin/image-slider-with-thumbnails-at-the-bottom/" target="_blank">PRO VERSION DEMO</a></li>';
								break;
								
								case "easy-notify-lite" :
								echo '<li><a class="button" aria-label="PRO VERSION DEMO" href="https://ghozylab.com/plugins/easy-notify-pro/demo/" target="_blank">PRO VERSION DEMO</a></li>';
								break;
								
								case "contact-form-lite" :
								echo '<li><a class="button" aria-label="PRO VERSION DEMO" href="http://demo.ghozylab.com/plugins/easy-contact-form-plugin/demo-form-registration/" target="_blank">PRO VERSION DEMO</a></li>';
								break;
								
								default:
								break;
							}
							
							
							echo '</ul>';
						}
					?>
				</div>
			<div class="plugin-card-bottom">
				<div class="column-updated">
					<strong><?php _e( 'Last Updated:' ); ?></strong> <span title="<?php echo esc_attr( $plugin['last_updated'] ); ?>">
						<?php printf( __( '%s ago' ), human_time_diff( strtotime( $plugin['last_updated'] ) ) ); ?>
					</span>
				</div>
				<div class="column-downloaded">
					<?php echo sprintf( _n( '%s download', '%s downloads', $plugin['downloaded'] ), number_format_i18n( $plugin['downloaded'] ) ); ?>
				</div>
				<div class="column-compatibility">
					<?php
					if ( ! empty( $plugin['tested'] ) && version_compare( substr( $GLOBALS['wp_version'], 0, strlen( $plugin['tested'] ) ), $plugin['tested'], '>' ) ) {
						echo '<span class="compatibility-untested">' . __( 'Untested with your version of WordPress' ) . '</span>';
					} elseif ( ! empty( $plugin['requires'] ) && version_compare( substr( $GLOBALS['wp_version'], 0, strlen( $plugin['requires'] ) ), $plugin['requires'], '<' ) ) {
						echo '<span class="compatibility-incompatible">' . __( '<strong>Incompatible</strong> with your version of WordPress' ) . '</span>';
					} else {
						echo '<span class="compatibility-compatible">' . __( '<strong>Compatible</strong> with your version of WordPress' ) . '</span>';
					}
					?>
				</div>
			</div>
		</div>
		<?php
		}
		?>

     	</div>	
	</div>       
</div>    
	</form>   
    

<?php 
}