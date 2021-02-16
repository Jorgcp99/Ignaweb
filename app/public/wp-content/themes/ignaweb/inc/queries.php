<?php

function ignaweb_lista_categorias() {
    $cantidad = -1
    ?>

    <ul class="lista-categorias">
        <?php 
          
                $terms = get_terms(array(
                    'taxonomy' => 'category_product',
                    'hide_empty' => false,
                ));
            
                foreach( $terms as $term ){
                    $titulo = $term->name;
                    $description = $term->description;
                    $imagen = z_taxonomy_image_url($term->term_id);
                ?>
                    <li class="category-card">
                        <a href= "<?php $term->term_id ?>" class="category-gradient">
                            <img src=<?php echo $imagen ?> />
                            <div class="contenido">
                                <h3><?php echo $titulo; ?></h3>
                                <p><?php echo $description; ?></p>
                                <h4 class="linkButton">Ver más ></h4>
                            </div>
                        </a>
                    </li>
                <?php
                    //echo z_taxonomy_image_url();
                }

              ?>

    </ul>
   
<?php
}

function ignaweb_lista_categoria($taxonomy){

    $posts_array = get_posts(
        array(
            'posts_per_page' => -1,
            'post_type' => 'fabric_building',
            'tax_query' => array(
                array(
                    'taxonomy' => $taxonomy,
                    'field' => 'term_id',
                    'terms' => $cat->term_id,
                )
            )
        )
    );

    echo $posts_array[0];

}