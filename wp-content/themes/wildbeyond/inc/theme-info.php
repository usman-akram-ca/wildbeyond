<?php
/**
 * Theme info page
 *
 * @package WildBeyond
 */

//Add the theme page
add_action('admin_menu', 'wildbeyond_add_theme_info');
function wildbeyond_add_theme_info(){

	if ( !current_user_can('install_plugins') ) {
		return;
	}

	$theme_info = add_theme_page( __('WildBeyond Info','WildBeyond'), __('WildBeyond Info','WildBeyond'), 'manage_options', 'WildBeyond-info.php', 'wildbeyond_info_page' );
	add_action( 'load-' . $theme_info, 'wildbeyond_info_hook_styles' );
}

//Callback
function wildbeyond_info_page() {
	$user = wp_get_current_user();
?>
	<div class="info-container">
		<p class="hello-user"><?php echo sprintf( __( 'Hello, %s,', 'WildBeyond' ), '<span>' . esc_html( ucfirst( $user->display_name ) ) . '</span>' ); ?></p>
		<h1 class="info-title"><?php echo sprintf( __( 'Welcome to WildBeyond version %s', 'WildBeyond' ), esc_html( wp_get_theme()->version ) ); ?></h1>
		<p class="welcome-desc"><?php esc_html_e( 'WildBeyond is now installed and ready to go. To help you with the next step, we’ve gathered together on this page all the resources you might need. We hope you enjoy using WildBeyond. ', 'WildBeyond' ); ?>
	

		<div class="WildBeyond-theme-tabs">

			<div class="WildBeyond-tab-nav nav-tab-wrapper">
				<a href="#begin" data-target="begin" class="nav-button nav-tab begin active"><?php esc_html_e( 'Getting started', 'WildBeyond' ); ?></a>
				<a href="#actions" data-target="actions" class="nav-button actions nav-tab"><?php esc_html_e( 'Recommended Actions', 'WildBeyond' ); ?></a>
				<a href="#support" data-target="support" class="nav-button support nav-tab"><?php esc_html_e( 'Support', 'WildBeyond' ); ?></a>
				<a href="#table" data-target="table" class="nav-button table nav-tab"><?php esc_html_e( 'Free vs Pro', 'WildBeyond' ); ?></a>
			</div>

			<div class="WildBeyond-tab-wrapper">

				<div id="#begin" class="WildBeyond-tab begin show">
					<h3><?php esc_html_e( 'Step 1 - Implement recommended actions', 'WildBeyond' ); ?></h3>
					<p><?php esc_html_e( 'We\'ve made a list of steps for you to follow to get the most of WildBeyond.', 'WildBeyond' ); ?></p>
					<p><a class="actions" href="#actions"><?php esc_html_e( 'Check recommended actions', 'WildBeyond' ); ?></a></p>
					<hr>
					<h3><?php esc_html_e( 'Step 2 - Read documentation', 'WildBeyond' ); ?></h3>
					<p><?php esc_html_e( 'Our documentation (including video tutorials) will have you up and running in no time.', 'WildBeyond' ); ?></p>
					<p><a href="http://docs.athemes.com/category/8-WildBeyond" target="_blank"><?php esc_html_e( 'Documentation', 'WildBeyond' ); ?></a></p>
					<hr>
					<h3><?php esc_html_e( 'Step 3 - Customize', 'WildBeyond' ); ?></h3>
					<p><?php esc_html_e( 'Use the Customizer to make WildBeyond your own.', 'WildBeyond' ); ?></p>
					<p><a class="button button-primary button-large" href="<?php echo admin_url( 'customize.php' ); ?>"><?php esc_html_e( 'Go to Customizer', 'WildBeyond' ); ?></a></p>
				</div>

				<div id="#actions" class="WildBeyond-tab actions">
					<h3><?php esc_html_e( 'Install: Page Builder by SiteOrigin', 'WildBeyond' ); ?></h3>
					<p><?php esc_html_e( 'It is highly recommended that you install Page Builder by SiteOrigin. It will enable you to create pages by adding widgets to them using drag and drop.', 'WildBeyond' ); ?></p>
					
					<?php if ( !defined( 'SITEORIGIN_PANELS_VERSION' ) ) : ?>
					<?php $so_url = wp_nonce_url(self_admin_url('update.php?action=install-plugin&plugin=siteorigin-panels'), 'install-plugin_siteorigin-panels'); ?>
					<p>
						<a target="_blank" class="install-now button" href="<?php echo esc_url( $so_url ); ?>"><?php esc_html_e( 'Install and Activate', 'WildBeyond' ); ?></a>
					</p>
					<?php else : ?>
						<p style="color:#23d423;font-style:italic;font-size:14px;"><?php esc_html_e( 'Plugin installed and active!', 'WildBeyond' ); ?></p>
					<?php endif; ?>

					<hr>
					<h3><?php esc_html_e( 'Install: WildBeyond Toolbox', 'WildBeyond' ); ?></h3>
					<p><?php esc_html_e( 'It is highly recommend that you install WildBeyond Toolbox. It will create custom post types like services and employees for you to use on your website.', 'WildBeyond' ); ?></p>
					<?php if ( !class_exists('wildbeyond_Toolbox') ) : ?>
					<?php $st_url = wp_nonce_url(self_admin_url('update.php?action=install-plugin&plugin=WildBeyond-toolbox'), 'install-plugin_WildBeyond-toolbox'); ?>
					<p>
						<a target="_blank" class="install-now button" href="<?php echo esc_url( $st_url ); ?>"><?php esc_html_e( 'Install and Activate', 'WildBeyond' ); ?></a>
					</p>
					<?php else : ?>
						<p style="color:#23d423;font-style:italic;font-size:14px;"><?php esc_html_e( 'Plugin installed and active!', 'WildBeyond' ); ?></p>
					<?php endif; ?>
					<hr>					
					<h3><?php esc_html_e( 'Demo content', 'WildBeyond' ); ?></h3>
					
					<div class="column-wrapper">
						<div class="tab-column">
						<h4><?php esc_html_e( 'Option 1 - automatic', 'WildBeyond' ); ?></h4>
						<p><?php esc_html_e( 'Install the following plugin and then come back here to access the importer. With it you can import all demo content and change your homepage and blog page to the ones from our demo site, automatically. It will also assign a menu.', 'WildBeyond' ); ?></p>
						

						<?php if ( !class_exists('OCDI_Plugin') ) : ?>
						<?php $odi_url = wp_nonce_url(self_admin_url('update.php?action=install-plugin&plugin=one-click-demo-import'), 'install-plugin_one-click-demo-import'); ?>
						<p>
							<a target="_blank" class="install-now button importer-install" href="<?php echo esc_url( $odi_url ); ?>"><?php esc_html_e( 'Install and Activate', 'WildBeyond' ); ?></a>
							<a style="display:none;" class="button button-primary button-large importer-button" href="<?php echo admin_url( 'themes.php?page=pt-one-click-demo-import.php' ); ?>"><?php esc_html_e( 'Go to the importer', 'WildBeyond' ); ?></a>						
						</p>
						<?php else : ?>
							<p style="color:#23d423;font-style:italic;font-size:14px;"><?php esc_html_e( 'Plugin installed and active!', 'WildBeyond' ); ?></p>
							<a class="button button-primary button-large" href="<?php echo admin_url( 'themes.php?page=pt-one-click-demo-import.php' ); ?>"><?php esc_html_e( 'Go to the automatic importer', 'WildBeyond' ); ?></a>
						<?php endif; ?>
						</div>
						<div class="tab-column">
						<h4><?php esc_html_e( 'Option 2 - manual', 'WildBeyond' ); ?></h4>
						<p><?php esc_html_e( 'Download the following demo content file and then click the button to go to the WordPress default importer.', 'WildBeyond' ); ?></p>
							<a class="button" href="//athemes.com/?wpdmdl=17783"><?php esc_html_e( 'Download demo content', 'WildBeyond' ); ?></a>
							<a class="button button-primary" href="<?php echo admin_url( 'import.php' ); ?>"><?php esc_html_e( 'Go to the manual importer', 'WildBeyond' ); ?></a>
						</div>
					</div>
				</div>

				<div id="#support" class="WildBeyond-tab support">
					<div class="column-wrapper">
						<div class="tab-column">
						<span class="dashicons dashicons-sos"></span>
						<h3><?php esc_html_e( 'Visit our forums', 'WildBeyond' ); ?></h3>
						<p><?php esc_html_e( 'Need help? Go ahead and visit our support forums and we\'ll be happy to assist you with any theme related questions you might have', 'WildBeyond' ); ?></p>
							<a href="https://athemes.com/forums/" target="_blank"><?php esc_html_e( 'Visit the forums', 'WildBeyond' ); ?></a>				
							</div>
						<div class="tab-column">
						<span class="dashicons dashicons-book-alt"></span>
						<h3><?php esc_html_e( 'Documentation', 'WildBeyond' ); ?></h3>
						<p><?php esc_html_e( 'Our documentation can help you learn how to use the theme and also provides you with premade code snippets and answers to FAQs.', 'WildBeyond' ); ?></p>
						<a href="http://docs.athemes.com/category/8-WildBeyond" target="_blank"><?php esc_html_e( 'See the Documentation', 'WildBeyond' ); ?></a>
						</div>
					</div>
				</div>
				<div id="#table" class="WildBeyond-tab table">
				<table class="widefat fixed featuresList"> 
				   <thead> 
					<tr> 
					 <td><strong><h3><?php esc_html_e( 'Feature', 'WildBeyond' ); ?></h3></strong></td>
					 <td style="width:20%;"><strong><h3><?php esc_html_e( 'WildBeyond', 'WildBeyond' ); ?></h3></strong></td>
					 <td style="width:20%;"><strong><h3><?php esc_html_e( 'WildBeyond Pro', 'WildBeyond' ); ?></h3></strong></td>
					</tr> 
				   </thead> 
				   <tbody> 
					<tr> 
					 <td><?php esc_html_e( 'Access to all Google Fonts', 'WildBeyond' ); ?></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					</tr> 
					<tr> 
					 <td><?php esc_html_e( 'Responsive', 'WildBeyond' ); ?></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					</tr> 
					<tr> 
					 <td><?php esc_html_e( 'Parallax backgrounds', 'WildBeyond' ); ?></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					</tr> 
					<tr> 
					 <td><?php esc_html_e( 'Social Icons', 'WildBeyond' ); ?></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					</tr> 
					<tr> 
					 <td><?php esc_html_e( 'Slider, image or video header', 'WildBeyond' ); ?></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					</tr> 
					<tr> 
					 <td><?php esc_html_e( 'Front Page Blocks', 'WildBeyond' ); ?></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					</tr> 
					<tr> 
					 <td><?php esc_html_e( 'Translation ready', 'WildBeyond' ); ?></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					</tr> 
					<tr> 
					 <td><?php esc_html_e( 'Polylang integration', 'WildBeyond' ); ?></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					</tr> 
					<tr> 
					 <td><?php esc_html_e( 'Color options', 'WildBeyond' ); ?></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					</tr> 
					<tr> 
					 <td><?php esc_html_e( 'Blog options', 'WildBeyond' ); ?></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					</tr> 
					<tr> 
					 <td><?php esc_html_e( 'Widgetized footer', 'WildBeyond' ); ?></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					</tr> 
					<tr> 
					 <td><?php esc_html_e( 'Background image support', 'WildBeyond' ); ?></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					</tr> 
					<tr> 
					 <td><?php esc_html_e( 'Footer Credits option', 'WildBeyond' ); ?></td>
					 <td class="redFeature"><span class="dashicons dashicons-no-alt dash-red"></span></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					</tr> 
					<tr> 
					 <td><?php esc_html_e( 'Extra widgets (timeline, latest news in carousel, pricing tables, a new employees widget and a new contact widget)', 'WildBeyond' ); ?></td>
					 <td class="redFeature"><span class="dashicons dashicons-no-alt dash-red"></span></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					</tr> 
					<tr> 
					 <td><?php esc_html_e( 'Extra Customizer Options (Front Page Section Titles, Single Employees, Single Projects, Header Contact Info, Buttons)', 'WildBeyond' ); ?></td>
					 <td class="redFeature"><span class="dashicons dashicons-no-alt dash-red"></span></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					</tr> 
					<tr> 
					 <td><?php esc_html_e( 'Header support for Crelly Slider', 'WildBeyond' ); ?></td>
					 <td class="redFeature"><span class="dashicons dashicons-no-alt dash-red"></span></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					</tr> 
					<tr> 
					 <td><?php esc_html_e( 'Header support for shortcodes', 'WildBeyond' ); ?></td>
					 <td class="redFeature"><span class="dashicons dashicons-no-alt dash-red"></span></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					</tr> 
					<tr> 
					 <td><?php esc_html_e( 'Single Post/Page Options', 'WildBeyond' ); ?></td>
					 <td class="redFeature"><span class="dashicons dashicons-no-alt dash-red"></span></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					</tr> 
					<tr> 
					 <td><?php esc_html_e( 'Woocommerce compatible', 'WildBeyond' ); ?></td>
					 <td class="redFeature"><span class="dashicons dashicons-no-alt dash-red"></span></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					</tr> 
					<tr> 
					 <td><?php esc_html_e( '5 Extra Page Templates (Contact, Featured Header - Default, Featured Header - Wide, No Header - Default, No Header - Wide)', 'WildBeyond' ); ?></td>
					 <td class="redFeature"><span class="dashicons dashicons-no-alt dash-red"></span></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					</tr> 
					<tr> 
					 <td><?php esc_html_e( 'Priority support', 'WildBeyond' ); ?></td>
					 <td class="redFeature"><span class="dashicons dashicons-no-alt dash-red"></span></td>
					 <td class="greenFeature"><span class="dashicons dashicons-yes dash-green"></span></td>
					</tr> 
				   </tbody> 
				  </table>
				  <p style="text-align: right;"><a class="button button-primary button-large" href="https://athemes.com/theme/WildBeyond-pro"><?php esc_html_e('Buy WildBeyond Pro ', 'WildBeyond'); ?></a></p>
				</div>		
			</div>
		</div>
	</div>
<?php
}

//Styles
function wildbeyond_info_hook_styles(){
	add_action( 'admin_enqueue_scripts', 'wildbeyond_info_page_styles' );
}
function wildbeyond_info_page_styles() {
	wp_enqueue_style( 'WildBeyond-info-style', get_template_directory_uri() . '/css/info-page.css', array(), true );

	wp_enqueue_script( 'WildBeyond-info-script', get_template_directory_uri() . '/js/info-page.js', array('jquery'),'', true );

}