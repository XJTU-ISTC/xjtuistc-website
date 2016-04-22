<?php
/**
 * Custom template tags for this theme.
 *
 * Eventually, some of the functionality here could be replaced by core features.
 *
 * @package mobile-friendly
 */

if ( ! function_exists( 'mobile_friendly_paging_nav' ) ) :
/**
 * Display navigation to next/previous set of posts when applicable.
 */
function mobile_friendly_paging_nav() {
	// Don't print empty markup if there's only one page.
	if ( $GLOBALS['wp_query']->max_num_pages < 2 ) {
		return;
	}
	?>
	<nav class="navigation paging-navigation" role="navigation">
		<h1 class="screen-reader-text"><?php _e( 'Posts navigation', 'mobile-friendly' ); ?></h1>
		<div class="nav-links">

			<?php if ( get_next_posts_link() ) : ?>
			<div class="nav-previous"><?php next_posts_link( __( '<span class="meta-nav">&larr;</span> Older posts', 'mobile-friendly' ) ); ?></div>
			<?php endif; ?>

			<?php if ( get_previous_posts_link() ) : ?>
			<div class="nav-next"><?php previous_posts_link( __( 'Newer posts <span class="meta-nav">&rarr;</span>', 'mobile-friendly' ) ); ?></div>
			<?php endif; ?>

		</div><!-- .nav-links -->
	</nav><!-- .navigation -->
	<?php
}
endif;

if ( ! function_exists( 'mobile_friendly_post_nav' ) ) :
/**
 * Display navigation to next/previous post when applicable.
 */
function mobile_friendly_post_nav() {
	// Don't print empty markup if there's nowhere to navigate.
	$previous = ( is_attachment() ) ? get_post( get_post()->post_parent ) : get_adjacent_post( false, '', true );
	$next     = get_adjacent_post( false, '', false );

	if ( ! $next && ! $previous ) {
		return;
	}
	?>
	<nav class="navigation post-navigation" role="navigation">
		<h1 class="screen-reader-text"><?php _e( 'Post navigation', 'mobile-friendly' ); ?></h1>
		<div class="nav-links">
			<?php
				previous_post_link( '<div class="nav-previous">%link</div>', _x( '<span class="meta-nav">&larr;</span>&nbsp;%title', 'Previous post link', 'mobile-friendly' ) );
				next_post_link(     '<div class="nav-next">%link</div>',     _x( '%title&nbsp;<span class="meta-nav">&rarr;</span>', 'Next post link',     'mobile-friendly' ) );
			?>
		</div><!-- .nav-links -->
	</nav><!-- .navigation -->
	<?php
}
endif;

if ( ! function_exists( 'mobile_friendly_posted_on' ) ) :
/**
 * Prints HTML with meta information for the current post-date/time and author.
 */
function mobile_friendly_posted_on() {
	$time_string = '<time class="entry-date published updated" datetime="%1$s">%2$s</time>';
	if ( get_the_time( 'U' ) !== get_the_modified_time( 'U' ) ) {
		$time_string = '<time class="entry-date published" datetime="%1$s">%2$s</time>';
	}

	$time_string = sprintf( $time_string,
		esc_attr( get_the_date( 'c' ), 'mobile-friendly' ),
		esc_html( get_the_date(), 'mobile-friendly'),
		esc_attr( get_the_modified_date( 'c' ), 'mobile-friendly'  ),
		esc_html( get_the_modified_date(), 'mobile-friendly' )
	);

	$posted_on = sprintf(
		_x( 'Posted on %s', 'post date', 'mobile-friendly' ),
		'<a href="' . esc_url( get_permalink() ) . '" rel="bookmark">' . $time_string . '</a>'
	);

	$byline = sprintf(
		_x( 'by %s', 'post author', 'mobile-friendly' ),
		'<span class="author vcard"><a class="url fn n" href="' . esc_url( get_author_posts_url( get_the_author_meta( 'ID' ) ) ) . '">' . esc_html( get_the_author() ) . '</a></span>'
	);

	echo '<span class="posted-on">' . $posted_on . '</span><span class="byline"> ' . $byline . '</span>';

}
endif;

if ( ! function_exists( 'mobile_friendly_entry_footer' ) ) :
/**
 * Prints HTML with meta information for the categories, tags and comments.
 */
function mobile_friendly_entry_footer() {
	// Hide category and tag text for pages.
	if ( 'post' == get_post_type() ) {
		/* translators: used between list items, there is a space after the comma */
		$categories_list = get_the_category_list( __( ', ', 'mobile-friendly' ) );
		if ( $categories_list && mobile_friendly_categorized_blog() ) {
			printf( '<p><span class="cat-links">' . __( 'Posted in %1$s', 'mobile-friendly' ) . '</span></p>', $categories_list );
		}

		/* translators: used between list items, there is a space after the comma */
		$tags_list = get_the_tag_list( '', __( ', ', 'mobile-friendly' ) );
		if ( $tags_list ) {
			printf( '<p><span class="tags-links">' . __( 'Tagged %1$s', 'mobile-friendly' ) . '</span></p>', $tags_list );
		}
	}

	if ( ! is_single() && ! post_password_required() && ( comments_open() || get_comments_number() ) ) {
		echo '<span class="comments-link">';
		comments_popup_link( __( 'Leave a comment', 'mobile-friendly' ), __( '1 Comment', 'mobile-friendly' ), __( '% Comments', 'mobile-friendly' ) );
		echo '</span>';
	}

	edit_post_link( __( 'Edit', 'mobile-friendly' ), '<span class="edit-link">', '</span>' );
}
endif;

/**
 * Returns true if a blog has more than 1 category.
 *
 * @return bool
 */
function mobile_friendly_categorized_blog() {
	if ( false === ( $all_the_cool_cats = get_transient( 'mobile_friendly_categories' ) ) ) {
		// Create an array of all the categories that are attached to posts.
		$all_the_cool_cats = get_categories( array(
			'fields'     => 'ids',
			'hide_empty' => 1,

			// We only need to know if there is more than one category.
			'number'     => 2,
		) );

		// Count the number of categories that are attached to the posts.
		$all_the_cool_cats = count( $all_the_cool_cats );

		set_transient( 'mobile_friendly_categories', $all_the_cool_cats );
	}

	if ( $all_the_cool_cats > 1 ) {
		// This blog has more than 1 category so mobile_friendly_categorized_blog should return true.
		return true;
	} else {
		// This blog has only 1 category so mobile_friendly_categorized_blog should return false.
		return false;
	}
}

/**
 * Flush out the transients used in mobile_friendly_categorized_blog.
 */
function mobile_friendly_category_transient_flusher() {
	if ( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) {
		return;
	}
	// Like, beat it. Dig?
	delete_transient( 'mobile_friendly_categories' );
}
add_action( 'edit_category', 'mobile_friendly_category_transient_flusher' );
add_action( 'save_post',     'mobile_friendly_category_transient_flusher' );

// Social Media Theme Mods Template tag

function mobile_friendly_social_media() {
	$dribbble       = get_theme_mod( 'dribbble'     );
	$behance        = get_theme_mod( 'behance'      );
	$facebook       = get_theme_mod( 'facebook'     );
	$linkedin       = get_theme_mod( 'linkedin'     );
	$twitter        = get_theme_mod( 'twitter'      );
	$tumblr         = get_theme_mod( 'tumblr'       );
	$rss            = get_theme_mod( 'rss'          );
	$stumbleupon    = get_theme_mod( 'stumbleupon'  );
	$vimeo          = get_theme_mod( 'vimeo'        );
	$youtube        = get_theme_mod( 'youtube'      );
	$googleplus     = get_theme_mod( 'googleplus'   );
	$instagram      = get_theme_mod( 'instagram'    );
	$pinterest      = get_theme_mod( 'pinterest'    );
	$soundcloud     = get_theme_mod( 'soundcloud'   );



	if ( $dribbble || $behance || $facebook || $linkedin || $twitter  || $tumblr || $rss || $stumbleupon || $vimeo || $youtube || $googleplus || $instagram || $pinterest  ) { ?>

		<ul class="social-media">
	<?php }?>
	<?php  if( $dribbble != '' ) { ?>
	<li class="dribbble social-icon"><a href="<?php echo esc_url(get_theme_mod( 'dribbble' )); ?>">
		<span class="icon-dribbble"></span></a></li>
<?php }?>

	<?php  if( $behance != '' ) { ?>
		<li class="behance social-icon"><a href="<?php echo esc_url(get_theme_mod( 'behance' )); ?>">
				<span class="icon-behance"></span></a></li>
	<?php }?>

	<?php if ( $facebook != '' ) { ?>

		<li class="facebook social-icon"><a href="<?php echo esc_url(get_theme_mod( 'facebook' )); ?>">
				<span class="icon-facebook"></span></a></li>

	<?php } ?>

	<?php  if( $linkedin != '' ) { ?>
		<li class="linkedin social-icon"><a href="<?php echo esc_url(get_theme_mod( 'linkedin' )); ?>">
				<span class="icon-linkedin"></span></a></li>
	<?php }?>

	<?php  if( $twitter != '' ) { ?>
		<li class="twitter social-icon"><a href="<?php echo esc_url(get_theme_mod( 'twitter' )); ?>">
				<span class="icon-twitter"></span></a></li>
	<?php }?>

	<?php  if( $tumblr != '' ) { ?>
		<li class="tumblr social-icon"><a href="<?php echo esc_url(get_theme_mod( 'tumblr' )); ?>">
				<span class="icon-tumblr"></span></a></li>
	<?php }?>

	<?php  if( $rss != '' ) { ?>
		<li class="rss social-icon"><a href="<?php echo esc_url(get_theme_mod( 'rss' )); ?>">
				<span class="icon-rss"></span></a></li>
	<?php }?>

	<?php  if( $stumbleupon != '' ) { ?>
		<li class="stumbleupon social-icon"><a href="<?php echo esc_url(get_theme_mod( 'stumbleupon' )); ?>">
				<span class="icon-stumbleupon"></span></a></li>
	<?php }?>

	<?php  if( $vimeo != '' ) { ?>
		<li class="vimeo social-icon"><a href="<?php echo esc_url(get_theme_mod( 'vimeo' )); ?>">
				<span class="icon-vimeo"></span></a></li>
	<?php }?>

	<?php  if( $youtube != '' ) { ?>
		<li class="youtube social-icon"><a href="<?php echo esc_url(get_theme_mod( 'youtube' )); ?>">
				<span class="icon-youtube"></span></a></li>
	<?php }?>

	<?php  if( $googleplus != '' ) { ?>
		<li class="googleplus social-icon"><a href="<?php echo esc_url(get_theme_mod( 'googleplus' )); ?>">
				<span class="icon-googleplus"></span></a></li>
	<?php }?>

	<?php  if( $instagram != '' ) { ?>
		<li class="instagram social-icon"><a href="<?php echo esc_url(get_theme_mod( 'instagram' )); ?>">
				<span class="icon-instagram"></span></a></li>
	<?php }?>

	<?php  if( $pinterest != '' ) { ?>
		<li class="pinterest social-icon"><a href="<?php echo esc_url(get_theme_mod( 'pinterest' )); ?>">
				<span class="icon-pinterest"></span></a></li>
	<?php }?>

	<?php  if( $soundcloud != '' ) { ?>
		<li class="soundcloud social-icon"><a href="<?php echo esc_url(get_theme_mod( 'soundcloud' )); ?>">
				<span class="icon-soundcloud"></span></a></li>
	<?php }?>

	<?php if ( $dribbble || $behance || $facebook || $linkedin || $twitter  || $tumblr || $rss || $stumbleupon || $vimeo || $youtube || $googleplus || $instagram || $pinterest ) { ?>

		</ul>

	<?php
	}
}
