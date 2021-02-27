<?php get_header(); ?>
    <script>
        function goBack() {
        window.history.back();
        }
    </script>
    <button class="backCategoryButton" onclick="goBack()">Átras</button>
    <?php
    while (have_posts()) : the_post();
    ?>
    <h1 class="TitleSigular"><?php the_title() ?></h1>   
    
    <div class="dataSingular">
        <p><?php echo the_time(get_option('date_format')); ?></p>
        <?php the_post_thumbnail('mediano'); ?>
        <div class="contentSingular">
            <?php the_content() ?>
        </div>
        <h1>Hola</h1>
    </diV>
<?php
endwhile;
?>

<?php get_footer(); ?>