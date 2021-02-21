<?php get_header();
/*
* Template Name: Contacto
*/
?>
<?php

while (have_posts()) : the_post();

?>
    <div class="title">
        <h1 class="pageTitle"><?php the_title() ?></h1>
    </div>
    <div class="elto1">
    <div class="contactMainDiv row">
        <div class="datosContactoMainDiv row">
            <?php dynamic_sidebar('datos_contacto') ?>
        </div>
        <?php the_content() ?>
    </div>
    </div>

<?php
endwhile;
?>

<?php get_footer(); ?>