<?php
/**
 * Singleton class for handling the theme's customizer integration.
 *
 * @since  1.0.0
 * @access public
 */
final class wildbeyond_Customize_Upsell {

	/**
	 * Returns the instance.
	 *
	 * @since  1.0.0
	 * @access public
	 * @return object
	 */
	public static function get_instance() {

		static $instance = null;

		if ( is_null( $instance ) ) {
			$instance = new self;
			$instance->setup_actions();
		}

		return $instance;
	}

	/**
	 * Constructor method.
	 *
	 * @since  1.0.0
	 * @access private
	 * @return void
	 */
	private function __construct() {}

	/**
	 * Sets up initial actions.
	 *
	 * @since  1.0.0
	 * @access private
	 * @return void
	 */
	private function setup_actions() {

		// Register panels, sections, settings, controls, and partials.
		add_action( 'customize_register', array( $this, 'sections' ) );

		// Register scripts and styles for the controls.
		add_action( 'customize_controls_enqueue_scripts', array( $this, 'enqueue_control_scripts' ), 0 );
	}

	/**
	 * Sets up the customizer sections.
	 *
	 * @since  1.0.0
	 * @access public
	 * @param  object  $manager
	 * @return void
	 */
	public function sections( $manager ) {

		// Load custom sections.
		require_once( trailingslashit( get_template_directory() ) . 'inc/upsell/section-pro.php' );

		// Register custom section types.
		$manager->register_section_type( 'wildbeyond_Customize_Upsell_Section_Pro' );

		// Register sections.
		$manager->add_section(
			new wildbeyond_Customize_Upsell_Section_Pro(
				$manager,
				'wildbeyond_upsell',
				array(
					'title'    => esc_html__( 'Ready for more?', 'WildBeyond' ),
					'pro_text' => esc_html__( 'Get WildBeyond Pro',  'WildBeyond' ),
					'pro_url'  => '//athemes.com/theme/WildBeyond-pro/',
					'priority' => 999,
				)
			)
		);
	}

	/**
	 * Loads theme customizer CSS.
	 *
	 * @since  1.0.0
	 * @access public
	 * @return void
	 */
	public function enqueue_control_scripts() {

		wp_enqueue_script( 'WildBeyond-upsell-customize-controls', trailingslashit( get_template_directory_uri() ) . 'inc/upsell/customize-controls.js', array( 'customize-controls' ) );

		wp_enqueue_style( 'WildBeyond-upsell-customize-controls', trailingslashit( get_template_directory_uri() ) . 'inc/upsell/customize-controls.css' );
	}
}

// Doing this customizer thang!
wildbeyond_Customize_Upsell::get_instance();
