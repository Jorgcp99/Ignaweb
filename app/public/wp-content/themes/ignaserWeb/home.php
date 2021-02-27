<?php get_header() ?>

    <h1>El espacio de ignaser</h1>

    <main class="pagina seccion contenedor">
        <ul class="listado-blog">
        <?php while(have_posts()): the_post(); ?>
        <li class="card gradient">
                <?php the_post_thumbnail('mediano'); ?>

                <?php the_category(); ?>
                
                <div class="contenido">
                    <a href="<?php the_permalink(); ?>">
                        <h3><?php the_title(); ?></h3>
                    </a>

                    <p class="meta">
                        <span>Por: </span>
                        <a href = "<?php echo get_author_posts_url(get_the_author_meta('ID'));?>">
                            <?php echo get_the_author_meta('display_name');?>
                        </a>

                    </p>  

                    <p class="meta">        
                        <span>Fecha: </span>  
                        <?php the_time(get_option('date_format')); ?>
                    </p>

                </div>
        </li>
            <?php endwhile; ?>
        </ul>
    </main>

<?php get_footer() ?>