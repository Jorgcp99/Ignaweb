<?php get_header(); ?>

<script>
function goBack() {
window.history.back();
}
</script>

<button class="backCategoryButton" onclick="goBack()">Átras</button>

<?php while( have_posts() ): the_post(); ?>

    <ul class ="contenedor-productos-description">
        <li class="image-productos-description">
            <?php 
            if(has_post_thumbnail()): the_post_thumbnail('blog', array('class' => 'imagen-destacada'));
                //else: echo "no hay nada";
            endif;
            ?>
        </li>
        <li class="text-productos-description">
            <h1><?php the_title(); ?></h1>
            <?php the_content(); ?>

            <h3>Contactar para mas información: </h3>
            <div class ="contact-data">
                <h2>soporte@ignaser.es<h2>
                <h2>673612631<h2>
            </div>
        </li>
    </ul>

<?php endwhile; ?>


<?php get_footer(); ?>