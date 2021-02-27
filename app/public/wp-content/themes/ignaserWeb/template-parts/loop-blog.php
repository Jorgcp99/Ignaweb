<?php while(have_posts()): the_post(); ?>

    <li class="card gradient">
        <?php the_post_thumbnail('mediano'); ?>

        <?php the_category(); ?>
        
        <div class="contenido">
            <a href="<?php the_permalink(); ?>">
                <h3><?php the_title(); ?></h3>
            </a>

            <p class="meta">        
                <?php the_time(get_option('date_format')); ?>
            </p>

        </div>
    </li>

<?php endwhile; ?>