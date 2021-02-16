<?php get_header(); ?>
<?php

while (have_posts()) : the_post();

?>
    <h1 class="pageTitle">¿Qué estás buscando?</h1>
    <div class="">
        <?php
        ignaweb_lista_categorias();
        ?>
    </div>

<?php
endwhile;
?>

<?php get_footer(); ?>