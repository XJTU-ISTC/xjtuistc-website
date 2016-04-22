<?php
/**
 * The header for our theme.
 *
 * Displays all of the <head> section and everything up till <div id="content">
 *
 * @package mobile-friendly
 */
?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">

<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div id="page" class="hfeed site">
	<header id="masthead" class="site-header" role="banner">
		<div class="header-content">

			<a href="#menu" class="menu-link"><img src="<?php echo get_template_directory_uri() . '/images/hamburger.png';?>"></a>
			<nav id="menu" class="panel main-navigation" role="navigation">
			<div class="left-panel">
			<span class="icon-cancel"></span>
				<?php wp_nav_menu( array( 'theme_location' => 'primary', 'container' => false, 'menu_class' => 'menu' ) ); ?>
				<?php if ( is_active_sidebar( 'sidebar-1' ) ) {
                                	dynamic_sidebar( 'sidebar-1' ); } ?>
			</div></nav><!-- #site-navigation -->
			
			<a class="skip-link screen-reader-text" href="#content"><?php _e( 'Skip to content', 'mobile-friendly' ); ?></a>


			<?php ;?>
			<div class="site-branding">
				<div class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></div>
				<div class="site-description"><?php bloginfo( 'description' ); ?></div>
			</div>

			<a href="#right-sidebar" class="sidebar"><img src="<?php echo get_template_directory_uri() . '/images/sidebar.png';?>"></a>
			<div id="right-sidebar" class="panel-right widget-area">
			<div class="right-panel">
                        <span class="icon-cancel"></span>
				<?php wp_list_categories('show_count=1&title_li='); ?>
				<?php if ( is_active_sidebar( 'right-sidebar' ) ) {
                                	dynamic_sidebar( 'right-sidebar' ); } ?>
			</div></div><!-- #secondary -->

		</div>
	</header><!-- #masthead -->

	<div id="content" class="site-content">
