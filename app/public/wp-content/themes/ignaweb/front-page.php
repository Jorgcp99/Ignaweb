
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IgnaWeb</title>
    <?php wp_head(); ?>
</head>

<body>
    <?php
    $args = array(
        'theme_location' => 'menu-principal',
        'container' => 'nav',
        'container_class' => 'menu-principal'
    );
    //wp_nav_menu($args);
    ?>
    
    <div class="gradientContainer">
        <h1 class="indexTitle">Instalaciones Ignaser</h1>
        <h4 class="indexSubTitle">Cambio integral de espacios profesionales</h4>
        <div class="arrow"></div>
    </div>
    <div id="container">    
        <div class="photobanner">
            <img class="first" src="<?php echo get_template_directory_uri(); ?>/img/10.JPG" alt="" />
            <img src="<?php echo get_template_directory_uri(); ?>/img/45.JPG" alt="" />
            <img src="<?php echo get_template_directory_uri(); ?>/img/03.JPG" alt="" />
            <img src="<?php echo get_template_directory_uri(); ?>/img/10.JPG" alt="" />
            <img src="<?php echo get_template_directory_uri(); ?>/img/45.JPG" alt="" />
            <img src="<?php echo get_template_directory_uri(); ?>/img/03.JPG" alt="" />
        </div>
    </div>

    <div class="topProducts">
        <h1 class="sectionTitle">Top Productos</h1>

        <div class="seccion-productos">
            <ul class ="contenedor-productos">
                <li class="producto">
                    <?php
                        $producto1 = get_field('producto_1');
                        $imagen = wp_get_attachment_image_src($producto1['product_imagen'], 'mediano')[0];
                    ?>
                    <img src="<?php echo esc_attr($imagen); ?>"/>
                    <h3><?php echo esc_html($producto1['product_texto']);?></h3>
                    <p><?php echo esc_html($producto1['product_descripcion']);?></p>
                    <a href="https://example.com" >Ver más ></a>
                </li>
                <li class="producto">
                    <?php
                        $area2 = get_field('producto_2');
                        $imagen = wp_get_attachment_image_src($area2['product_imagen'], 'mediano')[0];
                    ?>
                    <img src="<?php echo esc_attr($imagen); ?>"/>
                    <h3><?php echo esc_html($area2['product_texto']);?></h3>
                    <p><?php echo esc_html($producto1['product_descripcion']);?></p>
                    <a href="https://example.com" >Ver más ></a>
                </li>
                <li class="producto">
                    <?php
                        $area3 = get_field('producto_3');
                        $imagen = wp_get_attachment_image_src($area3['product_imagen'], 'mediano')[0];
                    ?>
                    <img src="<?php echo esc_attr($imagen); ?>"/>
                    <h3><?php echo esc_html($area3['product_texto']);?></h3>
                    <p><?php echo esc_html($producto1['product_descripcion']);?></p>
                    <a href="https://example.com" >Ver más ></a>
                </li>
            </ul>
        </div>

        <div class="linkProduct">
            <a class="linkReferences" href="https://example.com" >Ver todos ></a>
        </div>
    </div>

    <div class="servicios">
    <h1 class="sectionTitle">Servicios</h1>
    </div>
    
</body>

</html>