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
        while ($valores->have_posts()) : $valores->the_post(); ?>
            <li>
                <h1 class="titValor"><?php the_title() ?></h1>
                <?php the_post_thumbnail('small'); ?>
            </li>
        <?php endwhile;
        wp_reset_postdata() ?>
    </ul>
<?php
}
?>