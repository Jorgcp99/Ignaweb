<?php
/*
* Template Name: Template para Galerias
*/
get_header(); ?>
<?php

while (have_posts()) : the_post();

?>
    <div class="title">
        <h1 class="pageTitle"><?php the_title() ?></h1>
    </div>
    <div class="pageContent">
        <?php
        $galeria = get_post_gallery(get_the_ID(), false);

        $galeria_imagenes_ids = explode(',', $galeria['ids']);
        ?>

        <div class="imagesGrid row">
            <?php
            foreach ($galeria_imagenes_ids as $ids) :
                $imagenThumb = wp_get_attachment_image_src($ids, 'galleryMobile3')[0];
                $imagenFull = wp_get_attachment_image_src($ids, 'full')[0];
            ?>

                <div class="imgContainer col-12 col-md-6 col-lg-4 col-xl-3">
                    <a href="<?php echo $imagenFull; ?>" data-lightbox="galeria">
                        <img src="<?php echo $imagenThumb; ?> " sizes="square" alt="imagen">
                    </a>
                </div>

            <?php endforeach; ?>
        </div>
    </div>

<?php
endwhile;
?>

<?php get_footer(); ?>