<?php get_header(); ?>
<?php

while (have_posts()) : the_post();

?>
    <div class="title">
        <h1 class="pageTitle"><?php the_title() ?></h1>
    </div>
    <div class="pageContent">
        <p><?php the_content() ?></p>
    </div>

<?php
endwhile;
?>

<?php get_footer(); ?>