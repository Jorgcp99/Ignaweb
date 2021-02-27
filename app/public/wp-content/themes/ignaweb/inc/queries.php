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
                    $category_link = get_category_link($term->term_id);
                ?>                  
                    
                    <li class="category-card">
                        <a href= "<?php echo get_term_link($term)?>" class="category-gradient">
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
 
    $args = array('post_type' => 'ignaweb_productos',
        'tax_query' => array(
            array(
                'taxonomy' => 'category_product',
                'field' => 'slug',
                'terms' => $taxonomy,
            ),
        ),
     );
     ?>
    <ul class="listaCategoriasProductos">
     <?php
     $loop = new WP_Query($args);
     if($loop->have_posts()) {
        while($loop->have_posts()) : $loop->the_post();
            $slug = get_post_field('post_name', get_the_ID());
            ?>
            <li class="productCategoryCard">
                        <a href=<?php get_Permalink(); echo $slug;?>>
                            <?php $img_url = wp_get_attachment_image_src(get_post_thumbnail_id(),'mediano'); ?>
                            <div class="">
                                <img src="<?php echo $img_url[0];?>"/>
                            </div>
                            <div class="contenido">
                                <h3><?php the_title(); ?></h3>
                                <div class="contentCategoryDescription">
                                    <p><?php the_content(); ?></p>
                                </div>
                                <h4 class="linkButton">Ver más ></h4>
                            </div>
                        </a>
                    </li>
            <?php
        endwhile; wp_reset_postdata();
        ?>
        </ul>
        <?php
     }else{
         ?>
         <div class="noItemsCategoriaProductos">
            <img src="<?php echo get_template_directory_uri(); ?>/images/no_data.png" />
            <h1>No hay productos aún en esta categoría</h1>
         </div>
         <?php
     }
}

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
        <div class="valoresDiv row">
            <?php
            while ($valores->have_posts()) : $valores->the_post(); ?>
                <li class="valorContent col-12 col-md-5 col-lg-3">
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