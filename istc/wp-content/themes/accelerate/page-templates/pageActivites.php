<?php
/**
 * Template Name: Activites Page Template
 *
 * @Author: Cos
 * 
 */
?>

<?php get_header(); ?>
	
	
	<div id="primary">
		<div id="content" class="clearfix">
			<?php while ( have_posts() ) : the_post(); ?>

				<?php //get_template_part( 'content', 'home'); ?>

			<?php endwhile; ?>

		</div><!-- #content -->
	</div><!-- #primary -->
	
	<?php accelerate_sidebar_select(); ?>
	
	<?php do_action( 'accelerate_after_body_content' ); ?>

<?php get_footer(); ?>