<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after
 *
 * @package WildBeyond
 */
?>
			</div>
		</div>
	</div><!-- #content -->

	<?php do_action('wildbeyond_before_footer'); ?>

	<?php if ( is_active_sidebar( 'footer-1' ) ) : ?>
		<?php get_sidebar('footer'); ?>
	<?php endif; ?>

    <a class="go-top"><i class="fa fa-angle-up"></i></a>
		
	<footer id="colophon" class="site-footer" role="contentinfo">
		<div class="site-info container">
			<div class="col-md-7">
			<p>&copy; ICELAND. ALL RIGHTS RESERVED.
			<br><a href="#">Privacy</a> <a href="#">Terms</a></p>
		</div>

		<div class="col-md-5">
			<p class="app-buttons">
			<a href="#" class="app-store-icon">Downoad on the App Store</a>
			<a href="#" class="google-play-icon">Download App on Google Play</a>
		</p>
		
			<p class="social-links">
			<a href="#"><img src="<?php echo get_template_directory_uri(); ?>/images/facebook-monogram.png" alt="Facebook"></a>
			<a href="#"><img src="<?php echo get_template_directory_uri(); ?>/images/instagram-glyph.png" alt="Instagram"></a>
			<a href="#"><img src="<?php echo get_template_directory_uri(); ?>/images/twitter-bird.png" alt="Twitter"></a></p>
		</div>
		</div><!-- .site-info -->

		<div class="container">
		<div class="row">
			<div class="col-md-6">This is Col Six</div>
			<div class="col-md-3 pull-right">This is Col in Middle</div>
			<div class="col-md-3 pull-left">This is Col Three</div>
		</div>
	</div>

	</footer><!-- #colophon -->

	<?php do_action('wildbeyond_after_footer'); ?>

</div><!-- #page -->

<?php wp_footer(); ?>

<script>
jQuery( document ).ready(function() {
    jQuery( ".subtitle" ).after( "<p class='app-buttons'><a href='#' class='app-store-icon'>Downoad on the App Store</a><a href='#' class='google-play-icon'>Downoad on the Google Play</a></p>" );
});
</script>

</body>
</html>
