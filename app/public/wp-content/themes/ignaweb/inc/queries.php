<?php
function ignaser_lista_valores()
{ ?>
    <ul class="listaValores">
        <?php
        $args = array(
            'post_type' => 'ignaser_valores',
            'post_per_page' => 10,
            'orderby' => 'title',
            'order' => 'ASC'
        );
        $valores = new WP_Query($args);
        ?>
        <div class="valoresDiv">
            <?php
            while ($valores->have_posts()) : $valores->the_post(); ?>
                <li class="valorContent row">
                    <div>
                        <?php the_post_thumbnail('small'); ?>
                    </div>
                    <?php the_content() ?>
                </li>

            <?php endwhile;
            wp_reset_postdata() ?>
    </ul>
    </div>
<?php
}
?>