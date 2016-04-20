<?php
/**
 * Template Name: Home Page Template
 *
 * @Author: Cos
 * 
 */
?>

<?php get_header(); ?>
	<?php
		 //获取最新文章		 
		$recent_posts = wp_get_recent_posts();
		//遍历出每一篇文章。
		foreach( $recent_posts as $recent ){			
			echo '<div class="footer-socket-area"> <style type="text/css">  .indent{text-indent: 2em;} </style> <div class="indent"><li><a href="' . get_permalink($recent["ID"]) . '" title="Look '.esc_attr($recent["post_title"]).'" >' .  $recent["post_title"].'</a> </li></div> </div> ';
		}
		echo '<HR style="FILTER: progid:DXImageTransform.Microsoft.Glow(color=#987cb9,strength=10)" width="80%" color=#987cb9 SIZE=1>';
	?>	
	
	<div id="primary">	
		<div id="content" class="clearfix">		
			<?php if ( is_active_sidebar( 'sidebar-1' ) ) : ?>
				<div id="primary-sidebar" class="primary-sidebar widget-area" role="complementary">
					<?php dynamic_sidebar( 'sidebar-1' ); ?>
				</div><!-- #primary-sidebar -->
			<?php endif; ?>				
			<?php while ( have_posts() ) : the_post(); ?>
				<?php get_template_part( 'content', 'home'); ?>
			<?php endwhile; ?>			
		
		</div><!-- #content -->
	</div><!-- #primary -->

	<?php accelerate_sidebar_select(); ?>
	
	<?php do_action( 'accelerate_after_body_content' ); ?>

<?php get_footer(); ?>



