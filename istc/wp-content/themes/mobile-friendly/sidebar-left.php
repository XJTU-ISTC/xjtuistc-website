<?php
/**
 * The sidebar-left containing the main widget area.
 *
 * @package mobile-friendly
 */

if ( ! is_active_sidebar( 'left-sidebar' ) ) {
	return;
}
?>
<span class="icon-cancel"></span>

<nav id="menu" class="panel main-navigation" role="navigation">
	<?php wp_nav_menu( array( 'theme_location' => 'primary' ) ); ?>
</nav><!-- #site-navigation -->

<a class="skip-link screen-reader-text" href="#content"><?php _e( 'Skip to content', 'mobile-friendly' ); ?></a>

<div id="secondary" class="widget-area" role="complementary">
	<?php dynamic_sidebar( 'left-sidebar' ); ?>
</div><!-- #secondary -->
