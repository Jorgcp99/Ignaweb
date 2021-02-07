<?php
/*
* Template Name: Template para Galerias
*/
get_header(); ?>
<?php

while (have_posts()) : the_post();

?>
    <h1 class="pageTitle"><?php the_title() ?></h1>
    <div class="pageContent">
        <?php
        $galeria = get_post_gallery(get_the_ID(), false);

        $galeria_imagenes_ids = explode(',', $galeria['ids']);
        ?>

        <ul class="galeriaImagenes">
                <?php
                    foreach($galeria_imagenes_ids as $ids):
                        $imagenThumb = wp_get_attachment_image_src($ids, 'gallery')[0];
                        $imagenFull = wp_get_attachment_image_src($ids, 'full')[0];
                    ?>

                    <li class="imgContainer">
                        <a href="<?php echo $imagenFull; ?>" data-lightbox="galeria">
                        <img src="<?php echo $imagenThumb; ?> " sizes="square" alt="imagen">
                        </a>
                    </li>

                    <?php endforeach;?>
        </ul>
    </div>

<?php
endwhile;
?>

<?php get_footer(); ?>