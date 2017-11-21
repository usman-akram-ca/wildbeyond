<?php
/**
 * The home template file.
 *
 * @package WildBeyond
 */

get_header(); ?>

<ul class="posts list-unstyled game-grid">
	<?php query_posts('news'); while (have_posts()) : the_post(); ?>
		<li class="col-md-6">
			<h2><a href='<?php the_permalink() ?>'><?php the_title(); ?></a></h2>
			<?php the_excerpt(); ?>
			<a href='<?php the_permalink() ?>'><?php the_post_thumbnail( 'full' ); ?></a>
			</li>
	<?php endwhile; ?>
	
	<?php wp_reset_query(); ?>
</ul>

	
<?php get_footer(); ?>
