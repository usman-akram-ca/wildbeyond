<?php
/**
 * WildBeyond functions and definitions
 *
 * @package WildBeyond
 */


if ( ! function_exists( 'wildbeyond_setup' ) ) :
/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function wildbeyond_setup() {

	/*
	 * Make theme available for translation.
	 * Translations can be filed in the /languages/ directory.
	 * If you're building a theme based on WildBeyond, use a find and replace
	 * to change 'WildBeyond' to the name of your theme in all the template files
	 */
	load_theme_textdomain( 'WildBeyond', get_template_directory() . '/languages' );

	// Add default posts and comments RSS feed links to head.
	add_theme_support( 'automatic-feed-links' );

	// Content width
	global $content_width;
	if ( ! isset( $content_width ) ) {
		$content_width = 1170; /* pixels */
	}

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
	add_image_size('WildBeyond-large-thumb', 830);
	add_image_size('WildBeyond-medium-thumb', 550, 400, true);
	add_image_size('WildBeyond-small-thumb', 230);
	add_image_size('WildBeyond-service-thumb', 350);
	add_image_size('WildBeyond-mas-thumb', 480);

	// This theme uses wp_nav_menu() in one location.
	register_nav_menus( array(
		'primary' => __( 'Primary Menu', 'WildBeyond' ),
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

	// Set up the WordPress core custom background feature.
	add_theme_support( 'custom-background', apply_filters( 'wildbeyond_custom_background_args', array(
		'default-color' => 'ffffff',
		'default-image' => '',
	) ) );
}
endif; // wildbeyond_setup
add_action( 'after_setup_theme', 'wildbeyond_setup' );

/**
 * Register widget area.
 *
 * @link http://codex.wordpress.org/Function_Reference/register_sidebar
 */
function wildbeyond_widgets_init() {
	register_sidebar( array(
		'name'          => __( 'Sidebar', 'WildBeyond' ),
		'id'            => 'sidebar-1',
		'description'   => '',
		'before_widget' => '<aside id="%1$s" class="widget %2$s">',
		'after_widget'  => '</aside>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
	) );

	//Footer widget areas
	$widget_areas = get_theme_mod('footer_widget_areas', '3');
	for ($i=1; $i<=$widget_areas; $i++) {
		register_sidebar( array(
			'name'          => __( 'Footer ', 'WildBeyond' ) . $i,
			'id'            => 'footer-' . $i,
			'description'   => '',
			'before_widget' => '<aside id="%1$s" class="widget %2$s">',
			'after_widget'  => '</aside>',
			'before_title'  => '<h3 class="widget-title">',
			'after_title'   => '</h3>',
		) );
	}

	//Register the front page widgets
	if ( defined( 'SITEORIGIN_PANELS_VERSION' ) ) {
		register_widget( 'wildbeyond_List' );
		register_widget( 'wildbeyond_Services_Type_A' );
		register_widget( 'wildbeyond_Services_Type_B' );
		register_widget( 'wildbeyond_Facts' );
		register_widget( 'wildbeyond_Clients' );
		register_widget( 'wildbeyond_Testimonials' );
		register_widget( 'wildbeyond_Skills' );
		register_widget( 'wildbeyond_Action' );
		register_widget( 'wildbeyond_Video_Widget' );
		register_widget( 'wildbeyond_Social_Profile' );
		register_widget( 'wildbeyond_Employees' );
		register_widget( 'wildbeyond_Latest_News' );
		register_widget( 'wildbeyond_Contact_Info' );
		register_widget( 'wildbeyond_Portfolio' );
	}

}
add_action( 'widgets_init', 'wildbeyond_widgets_init' );

/**
 * Load the front page widgets.
 */
if ( defined( 'SITEORIGIN_PANELS_VERSION' ) ) {
	require get_template_directory() . "/widgets/fp-list.php";
	require get_template_directory() . "/widgets/fp-services-type-a.php";
	require get_template_directory() . "/widgets/fp-services-type-b.php";
	require get_template_directory() . "/widgets/fp-facts.php";
	require get_template_directory() . "/widgets/fp-clients.php";
	require get_template_directory() . "/widgets/fp-testimonials.php";
	require get_template_directory() . "/widgets/fp-skills.php";
	require get_template_directory() . "/widgets/fp-call-to-action.php";
	require get_template_directory() . "/widgets/video-widget.php";
	require get_template_directory() . "/widgets/fp-social.php";
	require get_template_directory() . "/widgets/fp-employees.php";
	require get_template_directory() . "/widgets/fp-latest-news.php";
	require get_template_directory() . "/widgets/fp-portfolio.php";
	require get_template_directory() . "/widgets/contact-info.php";
}

/**
 * Enqueue scripts and styles.
 */
function wildbeyond_scripts() {

	wp_enqueue_style( 'WildBeyond-fonts', esc_url( wildbeyond_google_fonts() ), array(), null );

	wp_enqueue_style( 'WildBeyond-style', get_stylesheet_uri(), '', '20170504' );

	wp_enqueue_style( 'WildBeyond-font-awesome', get_template_directory_uri() . '/fonts/font-awesome.min.css' );

	wp_enqueue_style( 'WildBeyond-ie9', get_template_directory_uri() . '/css/ie9.css', array( 'WildBeyond-style' ) );
	wp_style_add_data( 'WildBeyond-ie9', 'conditional', 'lte IE 9' );

	wp_enqueue_script( 'WildBeyond-scripts', get_template_directory_uri() . '/js/scripts.js', array('jquery'),'', true );

	wp_enqueue_script( 'WildBeyond-main', get_template_directory_uri() . '/js/main.min.js', array('jquery'),'20170504', true );

	wp_enqueue_script( 'WildBeyond-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20130115', true );

	if ( get_theme_mod('blog_layout') == 'masonry-layout' && (is_home() || is_archive()) ) {

		wp_enqueue_script( 'WildBeyond-masonry-init', get_template_directory_uri() . '/js/masonry-init.js', array('masonry'),'', true );
	}

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'wildbeyond_scripts' );

/**
 * Fonts
 */
if ( !function_exists('wildbeyond_google_fonts') ) :
function wildbeyond_google_fonts() {
	$body_font 		= get_theme_mod('body_font_name', 'Source+Sans+Pro:400,400italic,600');
	$headings_font 	= get_theme_mod('headings_font_name', 'Raleway:400,500,600');

	$fonts     		= array();
	$fonts[] 		= esc_attr( str_replace( '+', ' ', $body_font ) );
	$fonts[] 		= esc_attr( str_replace( '+', ' ', $headings_font ) );

	if ( $fonts ) {
		$fonts_url = add_query_arg( array(
			'family' => urlencode( implode( '|', $fonts ) )
		), 'https://fonts.googleapis.com/css' );
	}

	return $fonts_url;	
}
endif;

/**
 * Enqueue Bootstrap
 */
function wildbeyond_enqueue_bootstrap() {
	wp_enqueue_style( 'WildBeyond-bootstrap', get_template_directory_uri() . '/css/bootstrap/bootstrap.min.css', array(), true );
}
add_action( 'wp_enqueue_scripts', 'wildbeyond_enqueue_bootstrap', 9 );

/**
 * Change the excerpt length
 */
function wildbeyond_excerpt_length( $length ) {

  $excerpt = get_theme_mod('exc_lenght', '55');
  return $excerpt;

}
add_filter( 'excerpt_length', 'wildbeyond_excerpt_length', 999 );

/**
 * Blog layout
 */
function wildbeyond_blog_layout() {
	$layout = get_theme_mod('blog_layout','classic');
	return $layout;
}

/**
 * Menu fallback
 */
function wildbeyond_menu_fallback() {
	if ( current_user_can('edit_theme_options') ) {
		echo '<a class="menu-fallback" href="' . admin_url('nav-menus.php') . '">' . __( 'Create your menu here', 'WildBeyond' ) . '</a>';
	}
}

/**
 * Header image overlay
 */
function wildbeyond_header_overlay() {
	$overlay = get_theme_mod( 'hide_overlay', 0);
	if ( !$overlay ) {
		echo '<div class="overlay"></div>';
	}
}

/**
 * Header video
 */
function wildbeyond_header_video() {

	if ( !function_exists('the_custom_header_markup') ) {
		return;
	}

	$front_header_type 	= get_theme_mod( 'front_header_type' );
	$site_header_type 	= get_theme_mod( 'site_header_type' );

	if ( ( get_theme_mod('front_header_type') == 'core-video' && is_front_page() || get_theme_mod('site_header_type') == 'core-video' && !is_front_page() ) ) {
		the_custom_header_markup();
	}
}

/**
 * Polylang compatibility
 */
if ( function_exists('pll_register_string') ) :
function wildbeyond_polylang() {
	for ( $i=1; $i<=5; $i++) {
		pll_register_string('Slide title ' . $i, get_theme_mod('slider_title_' . $i), 'WildBeyond');
		pll_register_string('Slide subtitle ' . $i, get_theme_mod('slider_subtitle_' . $i), 'WildBeyond');
	}
	pll_register_string('Slider button text', get_theme_mod('slider_button_text'), 'WildBeyond');
	pll_register_string('Slider button URL', get_theme_mod('slider_button_url'), 'WildBeyond');
}
add_action( 'admin_init', 'wildbeyond_polylang' );
endif;

/**
 * Preloader
 */
function wildbeyond_preloader() {
	?>
	<div class="preloader">
	    <div class="spinner">
	        <div class="pre-bounce1"></div>
	        <div class="pre-bounce2"></div>
	    </div>
	</div>
	<?php
}
add_action('wildbeyond_before_site', 'wildbeyond_preloader');

/**
 * Header clone
 */
function wildbeyond_header_clone() {

	$front_header_type 	= get_theme_mod('front_header_type','slider');
	$site_header_type 	=get_theme_mod('site_header_type');

	if ( ( $front_header_type == 'nothing' && is_front_page() ) || ( $site_header_type == 'nothing' && !is_front_page() ) ) { ?>
	
	<div class="header-clone"></div>

	<?php }
}
add_action('wildbeyond_before_header', 'wildbeyond_header_clone');

/**
 * Get image alt
 */
function wildbeyond_get_image_alt( $image ) {
    global $wpdb;

    if( empty( $image ) ) {
        return false;
    }

    $attachment  = $wpdb->get_col( $wpdb->prepare( "SELECT ID FROM {$wpdb->posts} WHERE guid='%s';", strtolower( $image ) ) );
    $id   = ( ! empty( $attachment ) ) ? $attachment[0] : 0;

    $alt = get_post_meta( $id, '_wp_attachment_image_alt', true );

    return $alt;
}

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

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

/**
 * Page builder support
 */
require get_template_directory() . '/inc/page-builder.php';

/**
 * Slider
 */
require get_template_directory() . '/inc/slider.php';

/**
 * Styles
 */
require get_template_directory() . '/inc/styles.php';

/**
 * Theme info
 */
require get_template_directory() . '/inc/theme-info.php';

/**
 * Woocommerce basic integration
 */
require get_template_directory() . '/inc/woocommerce.php';

/**
 * Upsell
 */
require get_template_directory() . '/inc/upsell/class-customize.php';

/**
 * Demo content
 */


add_action( 'tgmpa_register', 'wildbeyond_recommend_plugin' );
function wildbeyond_recommend_plugin() {

    $plugins[] = array(
            'name'               => 'Page Builder by SiteOrigin',
            'slug'               => 'siteorigin-panels',
            'required'           => false,
    );

	if ( !function_exists('wpcf_init') ) {
	    $plugins[] = array(
		        'name'               => 'WildBeyond Toolbox - custom posts and fields for the WildBeyond theme',
		        'slug'               => 'WildBeyond-toolbox',
		        'required'           => false,
		);
	}

    tgmpa( $plugins);

}

/**
 * Admin notice
 */
require get_template_directory() . '/inc/notices/persist-admin-notices-dismissal.php';

function wildbeyond_welcome_admin_notice() {
	if ( ! PAnD::is_admin_notice_active( 'WildBeyond-welcome-forever' ) ) {
		return;
	}
	
	?>
	<div data-dismissible="WildBeyond-welcome-forever" class="WildBeyond-admin-notice updated notice notice-success is-dismissible">

		<p><?php echo sprintf( __( 'Welcome to WildBeyond. To get started please make sure to visit our <a href="%s">welcome page</a>.', 'WildBeyond' ), admin_url( 'themes.php?page=WildBeyond-info.php' ) ); ?></p>
		<a class="button" href="<?php echo admin_url( 'themes.php?page=WildBeyond-info.php' ); ?>"><?php esc_html_e( 'Get started with WildBeyond', 'WildBeyond' ); ?></a>

	</div>
	<?php
}
add_action( 'admin_init', array( 'PAnD', 'init' ) );
add_action( 'admin_notices', 'wildbeyond_welcome_admin_notice' );