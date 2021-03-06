<?php get_header();
/*
* Template Name: Nosotros
*/
?>
<?php

while (have_posts()) : the_post();

?>
    <div class="mainDiv row">
        <div class="nosotrosSuperior row">
            <div class="imageDark">
                <div class="title titleDiv ">
                    <h1 class="pageTitle nosotrosTitle"><?php the_title() ?></h1>
                </div>
                <div class="nosotrosContentDiv">
                    <?php the_content() ?>
                </div>
            </div>
        </div>
        <div class="mobileTop">
            <h1 class="title mobTit"><?php the_title() ?></h1>
            <div class="nosotrosContentMob">
                <?php the_content() ?>
            </div>
        </div>

        <h1 class="valoresTitle">Nuestros valores</h1>
        <?php ignaser_lista_valores(); ?>
    </div>

<?php
endwhile;
?>

<?php get_footer(); ?>