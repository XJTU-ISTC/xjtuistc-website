<?php
/**
 * The sidebar-right containing the main widget area.
 *
 * @package mobile-friendly
 */

if ( ! is_active_sidebar( 'right-sidebar' ) ) {
	return;
}
?>

<div id="right-sidebar" class="panel-right widget-area" role="complementary">
	<div class="right-panel">
	<span class="icon-cancel"></span>
	<?php dynamic_sidebar( 'right-sidebar' ); ?>
</div></div><!-- #secondary -->
