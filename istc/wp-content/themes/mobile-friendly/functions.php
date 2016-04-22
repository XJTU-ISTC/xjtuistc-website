<?php
/**
 * mobile-friendly functions and definitions
 *
 * @package mobile-friendly
 */

global $class_name;
/**
 * Set the content width based on the theme's design and stylesheet.
 */
if ( ! isset( $content_width ) ) {
	$content_width = 640; /* pixels */
}

if ( ! function_exists( 'mobile_friendly_setup' ) ) :
/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function mobile_friendly_setup() {

	/*
	 * Make theme available for translation.
	 * Translations can be filed in the /languages/ directory.
	 * If you're building a theme based on mobile-friendly, use a find and replace
	 * to change 'mobile-friendly' to the name of your theme in all the template files
	 */
	load_theme_textdomain( 'mobile-friendly', get_template_directory() . '/languages' );

	// Add default posts and comments RSS feed links to head.
	add_theme_support( 'automatic-feed-links' );

	/*
	 * Let WordPress manage the document title.
	 * By adding theme support, we declare that this theme does not use a
	 * hard-coded <title> tag in the document head, and expect WordPress to
	 * provide it for us.
	 */
	add_theme_support( 'title-tag' );

	/*
	 * Enable support for Post Thumbnails on posts and pages.
	 *
	 * @link http://codex.wordpress.org/Function_Reference/add_theme_support#Post_Thumbnails
	 */
	add_theme_support( 'post-thumbnails' );

	// This theme uses wp_nav_menu() in one location.
	register_nav_menus( array(
		'primary' => __( 'Primary Menu', 'mobile-friendly' ),
	) );

	/*
	 * Switch default core markup for search form, comment form, and comments
	 * to output valid HTML5.
	 */
	add_theme_support( 'html5', array(
		'search-form', 'comment-form', 'comment-list', 'gallery', 'caption',
	) );

	/*
	 * Enable support for Post Formats.
	 * See http://codex.wordpress.org/Post_Formats
	 */
	add_theme_support( 'post-formats', array(
		'aside', 'image', 'video', 'quote', 'link',
	) );

}
endif; // mobile_friendly_setup
add_action( 'after_setup_theme', 'mobile_friendly_setup' );

/**
 * Register widget area.
 *
 * @link http://codex.wordpress.org/Function_Reference/register_sidebar
 */
function mobile_friendly_widgets_init() {
global $class_name;
	register_sidebar( array(
		'name'          => __( 'Left Sidebar', 'mobile-friendly' ),
		'id'            => 'sidebar-1',
		'description'   => __('This widget is located in the left off-screen sidebar, underneath the menu.', 'mobile-friendly'),
		'before_widget' => '<aside id="%1$s" class="widget %2$s">',
		'after_widget'  => '</aside>',
		'before_title'  => '<h4 class="widget-title">',
		'after_title'   => '</h4>',
	) );
	register_sidebar( array(
		'name'          => __( 'Right Sidebar', 'mobile-friendly' ),
		'id'            => 'right-sidebar',
		'description'   => __('This widget is located in the right off-screen sidebar.', 'mobile-friendly'),
		'before_widget' => '<aside id="%1$s" class="widget %2$s">',
		'after_widget'  => '</aside>',
		'before_title'  => '<h4 class="widget-title">',
		'after_title'   => '</h4>',
	) );
	register_sidebar( array(
		'name'          => __( 'First Homepage Widget', 'mobile-friendly' ),
		'id'            => 'homepage-first',
		'description'   => '',
		'before_widget' => '<aside id="%1$s" class="widget %2$s">',
		'after_widget'  => '</aside>',
		'before_title'  => '<h4 class="widget-title">',
		'after_title'   => '</h4>',
	) );
	register_sidebar( array(
		'name'          => __( 'Second Homepage Widget', 'mobile-friendly' ),
		'id'            => 'homepage-second',
		'description'   => '',
		'before_widget' => '<aside id="%1$s" class="widget %2$s">',
		'after_widget'  => '</aside>',
		'before_title'  => '<h4 class="widget-title">',
		'after_title'   => '</h4>',
	) );
	register_sidebar( array(
		'name'          => __( 'Third Homepage Widget', 'mobile-friendly' ),
		'id'            => 'homepage-third',
		'description'   => '',
		'before_widget' => '<aside id="%1$s" class="widget %2$s">',
		'after_widget'  => '</aside>',
		'before_title'  => '<h4 class="widget-title">',
		'after_title'   => '</h4>',
	) );
	register_sidebar( array(
		'name'          => __( 'Footer Widget', 'mobile-friendly' ),
		'id'            => 'footer',
		'description'   => '',
		'before_widget' => '<aside id="%1$s" class="'.$class_name.'">',
		'after_widget'  => '</aside>',
		'before_title'  => '<h5 class="widget-title">',
		'after_title'   => '</h5>',
	) );
	
}
add_action( 'widgets_init', 'mobile_friendly_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function mobile_friendly_scripts() {

	wp_enqueue_style( 'mobile-friendly-style', get_stylesheet_uri(), array() );

	wp_enqueue_style( 'mobile-friendly-icons', get_template_directory_uri() . '/fonts/mobilefirst.css' );

	wp_enqueue_style( 'mobile-friendly-animate', get_template_directory_uri() . '/css/animate.css' );

	wp_enqueue_script( 'mobile-friendly-wow', get_template_directory_uri() . '/js/wow.min.js', array( 'jquery' ), '1.0.2', true );

	wp_enqueue_script( 'mobile-friendly-navigation', get_template_directory_uri() . '/js/navigation.js', array(), '20120206', true );

	wp_enqueue_script( 'mobile-friendly-bigslide', get_template_directory_uri() . '/js/bigslide.js', array( 'jquery' ), '0.5.0', true );

	wp_enqueue_script( 'mobile-friendly-jsfunctions', get_template_directory_uri() . '/js/functions.js', array(), '', true );

	wp_enqueue_script( 'mobile-friendly-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20130115', true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'mobile_friendly_scripts' );

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Custom functions that act independently of the theme templates.
 */
require get_template_directory() . '/inc/extras.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
require get_template_directory() . '/inc/jetpack.php';

require get_template_directory() .'/widget.php';

function mobile_friendly_footer_sidebar_params($params) {
	$sidebar_id = $params[0]['id'];
	if ( $sidebar_id == 'footer' ) {
	$total_widgets = wp_get_sidebars_widgets();
	$count = count($total_widgets[$sidebar_id]);
	$params[0]['before_widget'] = str_replace('class="', 'class="span' . floor(12 / $count) . ' ', $params[0]['before_widget']);
	}
    return $params;
}
add_filter('dynamic_sidebar_params','mobile_friendly_footer_sidebar_params');

function mobile_friendly_featured_image() {
	global $post;
	if( has_post_thumbnail() ): ?>
			<div class="featured-image">
				<a href="<?php the_permalink(); ?>" title="<?php printf( esc_attr__( 'Permalink to %s', 'mobile-friendly' ), the_title_attribute( 'echo=0' ) ); ?>" rel="bookmark">
					<?php the_post_thumbnail( apply_filters( 'cyberchimps_post_thumbnail_size', 'thumbnail' ) ); ?>
				</a>
			</div>
		<?php    endif;
	
}

//Enqueue google font
function mobile_friendly_google_fonts() {
	$query_args = array(
		'family' => 'Source+Sans+Pro:400,300,700',
		'subset' => 'latin,latin-ext',
	);
	wp_register_style( 'google_fonts', add_query_arg( $query_args, "//fonts.googleapis.com/css" ), array(), null );
            }
            
add_action('wp_enqueue_scripts', 'mobile_friendly_google_fonts');
