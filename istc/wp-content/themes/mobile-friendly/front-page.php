<?php get_header(); ?>
<?php 
if ( ! is_home() )
{
	$dribbble       = get_theme_mod ( 'dribbble'     );
        $behance        = get_theme_mod ( 'behance'      );
        $facebook       = get_theme_mod ( 'facebook'     );
        $linkedin       = get_theme_mod ( 'linkedin'     );
        $twitter        = get_theme_mod ( 'twitter'      );
        $tumblr         = get_theme_mod ( 'tumblr'       );
        $rss            = get_theme_mod ( 'rss'          );
        $stumbleupon    = get_theme_mod ( 'stumbleupon'  );
        $vimeo          = get_theme_mod ( 'vimeo'        );
        $youtube        = get_theme_mod ( 'youtube'      );
        $googleplus     = get_theme_mod ( 'googleplus'   );
        $instagram      = get_theme_mod ( 'instagram'    );
        $pinterest      = get_theme_mod ( 'pinterest'    );
        $soundcloud     = get_theme_mod ( 'soundcloud'   );
?>

<section class="hero">
		<div class="hero-content">
<?php if ( get_theme_mod('hero_heading')) { ?>
	                <h1><?php esc_html( get_theme_mod( 'hero_heading' ));?></h1>
			<?php }else { ?>
			    <h1><?php _e( 'Over 60% of the Internet is mobile, is your website Mobile Friendly?' ,'mobile-friendly' ); ?></h1>
			<?php }?>
<?php if ( get_theme_mod('hero_secondary')) { ?>
			<h2><?php esc_html( get_theme_mod( 'hero_secondary' )); ?></h2>
			<?php }else { ?>
			    <h2><?php _e( 'Mobile Friendly is a next generation HTML5, CSS3, SEO optimized Mobile Friendly Responsive WordPress theme.','mobile-friendly' );?></h2>
                        <?php }?>
<?php if ( get_theme_mod('hero_button_text') || get_theme_mod('hero_button_url') ) { ?>
			<div class="button"><p><a href="<?php esc_url(get_theme_mod('hero_button_url'), 'mobile-friendly'); ?>"><?php esc_html(get_theme_mod('hero_button_text'), 'mobile-friendly'); ?></a></p></div>
			<?php }else { ?>
			<div class="button"><p><a href="#"><?php _e( 'Download Mobile Friendly','mobile-friendly' ); ?></a></p></div>
			<?php } ?>
<?php if ( get_theme_mod('hero_image') || get_theme_mod('hero_image_alt')) { ?>
			<div class="achimps"><img class="cc-credit-logo" src="<?php esc_url(get_theme_mod('hero_image'), 'mobile-friendly'); ?>" alt="<?php esc_html(get_theme_mod('hero_image_alt'), 'mobile-friendly'); ?>"/></div>
			<?php } else { ?>
                        <div class="achimps"><img class="cc-credit-logo" src="<?php get_template_directory_uri() . '/images/mobile-friendly.png'; ?>" alt="<?php _e( 'image','mobile-friendly' ); ?>"/></div>
			<?php } ?>
		</div>
	</section>

<?php if ( get_theme_mod('cta_text') || get_theme_mod('cta_image') || get_theme_mod('cta_button_text') ||  get_theme_mod('cta_second_button_text') ) { ?>
	<section class="cta">
		<div class="cta-content">
			<div class="featured-image">
				<img src="<?php esc_url(get_theme_mod('cta_image'), 'mobile-friendly'); ?>" />
			</div>
			<div class="content">
				<h2><?php esc_html(get_theme_mod('cta_text')); ?></h2>
				<div class="first-button">
					<p><a href="<?php esc_url(get_theme_mod('cta_button_url'), 'mobile-friendly'); ?>"><?php esc_html(get_theme_mod('cta_button_text')); ?></a></p>
				</div>
				<div class="second-button">
					<p><a href="<?php esc_url(get_theme_mod('cta_second_button_url'), 'mobile-friendly'); ?>"><?php esc_html(get_theme_mod('cta_second_button_text')); ?></a></p>
				</div>
			</div>
		</div>
	</section>
<?php } else { ?>
<section class="cta">
	<div class="cta-content">
		<div class="featured-image">
			<img src="<?php echo get_template_directory_uri() . '/images/mobile-friendly.png';?>" />
		</div>
		<div class="content">
			<h2><?php _e( 'Interested in learning more about Mobile Friendly Responsive WordPress Theme?','mobile-friendly' ); ?></h2>
			<div class="first-button">
				<p><a href="#"><?php _e( 'Learn More','mobile-friendly' ); ?></a></p>
			</div>
			<div class="second-button">
				<p><a href="#"><?php _e( 'View Demo','mobile-friendly' ); ?></a></p>
			</div>
		</div>
	</div>
</section>
<?php } ?>


<section class="teaser">
	<div class="teaser-content">
		<?php if ( get_theme_mod('cta_text') ) { ?>
		<h3><?php esc_html(get_theme_mod('teaser_text')); ?></h3>
		<?php } else { ?>
		<h3><?php _e( 'Launch an incredible looking website with ease.','mobile-friendly' );?></h3>
		<?php } ?>

		<?php if ( is_active_sidebar('homepage-first') || is_active_sidebar('homepage-second') || is_active_sidebar('homepage-third' ) ) :?>
			<div class="home-text wow fadeInUp">
				<?php dynamic_sidebar('homepage-first'); ?>
			</div>
			<div class="home-text wow fadeInUp">
				<?php dynamic_sidebar('homepage-second'); ?>
			</div>
			<div class="home-text wow fadeInUp">
				<?php dynamic_sidebar('homepage-third'); ?>
			</div>
		</div>
	</section>
<?php endif; ?>

<section class="social">
	<div class="social-content">
		<?php if ( $dribbble || $behance || $facebook || $linkedin || $twitter  || $tumblr || $rss || $stumbleupon || $vimeo || $youtube || $googleplus || $instagram || $pinterest  ) { ?>
			<?php mobile_friendly_social_media();?>
		<?php } else { ?>
			<h4 class="social-help"><?php echo _e('Add social media accounts in the ', 'mobile-friendly');?><a href="<?php echo site_url();?>/wp-admin/customize.php?url=http%3A%2F%2F">theme customizer</a></h4>
	<?php	}?>
		</div>
	</section>

<?php } ?>

	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">

		<?php if ( have_posts() ) : ?>

			<?php if ( is_home() && ! is_front_page() ) : ?>
				<header>
					<h1 class="page-title screen-reader-text"><?php single_post_title(); ?></h1>
				</header>
			<?php endif; ?>

			<?php
			// Start the loop.
			while ( have_posts() ) : the_post();

				/*
				 * Include the Post-Format-specific template for the content.
				 * If you want to override this in a child theme, then include a file
				 * called content-___.php (where ___ is the Post Format name) and that will be used instead.
				 */
				get_template_part( 'content', get_post_format() );

			// End the loop.
			endwhile;

			// Previous/next page navigation.
			the_posts_pagination( array(
				'prev_text'          => __( 'Previous page', 'mobile-friendly' ),
				'next_text'          => __( 'Next page', 'mobile-friendly' ),
				'before_page_number' => '<span class="meta-nav screen-reader-text">' . __( 'Page', 'mobile-friendly' ) . ' </span>',
			) );

		// If no content, include the "No posts found" template.
		else :
			get_template_part( 'content', 'none' );

		endif;
		?>

		</main><!-- .site-main -->
	</div><!-- .content-area -->

<?php get_footer(); ?>
