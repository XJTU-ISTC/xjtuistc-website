<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after
 *
 * @package mobile-friendly
 */
?>

	</div><!-- #content -->

	<footer id="colophon" class="site-footer" role="contentinfo">
		<div class="footer-content">

			<?php if ( is_active_sidebar('footer') ) { ?>
				<div class="footer-widget">
					<?php dynamic_sidebar('footer'); ?>
				</div>
			<?php } ?>

			
		</div>
	</footer><!-- #colophon -->

<?php if ( get_theme_mod('copyright') || is_active_sidebar('site_info') ) : ?>
	<div class="site-info">
		<div class="site-info-content">
			<div class="copyright"><?php esc_html(get_theme_mod('copyright'), 'mobile-friendly'); ?></div>

			<div class="site-info-inner"><?php esc_html(get_theme_mod('site_info'), 'mobile-friendly'); ?></div>
		</div>
	</div><!-- .site-info -->
<?php endif;?>
</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
