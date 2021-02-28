<?php get_header('inicio'); ?>

<div class="gradientContainer">
    <h1 class="indexTitle">Instalaciones Ignaser</h1>
    <h4 class="indexSubTitle">Cambio integral de espacios profesionales</h4>
    <a href="#targetIndexButton">
        <div class="arrow"></div>
    </a>
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

<div class="topProducts" id="targetIndexButton">
    <div class="sectionTitleContainer">
        <h1 class="sectionTitle">Top Productos</h1>
    </div>

    <div class="seccion-productos">
        <ul class="contenedor-productos">
            <li class="producto">
                <?php
                $services = get_field('producto_1');
                $imagen = wp_get_attachment_image_src($services['product_imagen'], 'mediano')[0];
                ?>
                <img src="<?php echo esc_attr($imagen); ?>" />
                <h3><?php echo esc_html($services['product_texto']); ?></h3>
                <p><?php echo esc_html($services['product_descripcion']); ?></p>
                <a href="https://example.com">Ver más ></a>
            </li>
            <li class="producto">
                <?php
                $producto2 = get_field('producto_2');
                $imagen = wp_get_attachment_image_src($producto2['product_imagen'], 'mediano')[0];
                ?>
                <img src="<?php echo esc_attr($imagen); ?>" />
                <h3><?php echo esc_html($producto2['product_texto']); ?></h3>
                <p><?php echo esc_html($producto2['product_descripcion']); ?></p>
                <a href="https://example.com">Ver más ></a>
            </li>
            <li class="producto">
                <?php
                $producto3 = get_field('producto_3');
                $imagen = wp_get_attachment_image_src($producto3['product_imagen'], 'mediano')[0];
                ?>
                <img src="<?php echo esc_attr($imagen); ?>" />
                <h3><?php echo esc_html($producto3['product_texto']); ?></h3>
                <p><?php echo esc_html($producto3['product_descripcion']); ?></p>
                <a href="https://example.com">Ver más ></a>
            </li>
        </ul>
    </div>

    <div class="linkProduct">
        <a class="linkReferences" href="./productos-categorias.php">Ver todos ></a>
    </div>
</div>

<div class="servicios">
    <h1 class="serviciosTitle">Servicios</h1>

    <ul class="contenedor-servicios">
        <?php
        $services = get_field('servicios');
        ?>
        <li class="image-servicios">
            <?php
            $imagen = wp_get_attachment_image_src($services['servicios_imagen'], 'mediano')[0];
            ?>
            <div class="imageServicios">
                <img src="<?php echo esc_attr($imagen); ?>" />
            </div>
        </li>
        <li class="text-servicios">
            <div class="textServicios">
                <p class="baseTextServicios"><?php echo esc_html($services['servivicos_descripcion']); ?></p>
            </div>
            <div class="serviciosButton">
                <button class="servicios-button"><span>
                        <p class="text-servicios-button">Conócenos</p>
                    </span></button>
            </div>
        </li>
    </ul>
</div>

<div class="ignaserCifrasContainer">
    <header class="ignaserCifras">
        <h1 class="sectionTitleWhite">Ignaser en cifras</h1>
        <div class="row">
            <div class="column">
                <?php
                $cifra1 = get_field('cifra_1');
                ?>
                <p><?php echo esc_html($cifra1['descripcion_cifra']); ?></p>
                <h2><?php echo esc_html($cifra1['valor_cifra']); ?></h2>
            </div>
            <div class="column">
                <?php
                $cifra2 = get_field('cifra_2');
                ?>
                <p><?php echo esc_html($cifra2['descripcion_cifra']); ?></p>
                <h2><?php echo esc_html($cifra2['valor_cifra']); ?></h2>
            </div>
            <div class="column">
                <?php
                $cifra3 = get_field('cifra_3');
                ?>
                <p><?php echo esc_html($cifra3['descripcion_cifra']); ?></p>
                <h2><?php echo esc_html($cifra3['valor_cifra']); ?></h2>
            </div>
        </div>
    </header>
</div>

<div class="clientes">
    <h1 class="serviciosTitle">Nuestros clientes</h1>

    <div class="slider-container">

        <ul class="slider">
            <li id="slide1">
                <div class="row">
                    <div class="column-clientes">
                        <?php
                        $cliente1 = get_field('cliente_1');
                        $imagen1 = wp_get_attachment_image_src($cliente1['imagen_cliente'], 'mediano')[0];
                        ?>
                        <div class="image-box-clientes">
                            <img src="<?php echo esc_attr($imagen1); ?>" />
                        </div>
                        <p><?php echo esc_html($cliente1['nombre_cliente']); ?></p>
                    </div>
                    <div class="column-clientes">
                        <?php
                        $cliente2 = get_field('cliente_2');
                        $imagen2 = wp_get_attachment_image_src($cliente2['imagen_cliente'], 'mediano')[0];
                        ?>
                        <div class="image-box-clientes">
                            <img src="<?php echo esc_attr($imagen2); ?>" />
                        </div>
                        <p><?php echo esc_html($cliente2['nombre_cliente']); ?></p>
                    </div>
                    <div class="column-clientes">
                        <?php
                        $cliente3 = get_field('cliente_3');
                        $imagen3 = wp_get_attachment_image_src($cliente3['imagen_cliente'], 'mediano')[0];
                        ?>
                        <div class="image-box-clientes">
                            <img src="<?php echo esc_attr($imagen3); ?>" />
                        </div>
                        <p><?php echo esc_html($cliente3['nombre_cliente']); ?></p>
                    </div>
                    <div class="column-clientes">
                        <?php
                        $cliente4 = get_field('cliente_4');
                        $imagen4 = wp_get_attachment_image_src($cliente4['imagen_cliente'], 'mediano')[0];
                        ?>
                        <div class="image-box-clientes">
                            <img src="<?php echo esc_attr($imagen4); ?>" />
                        </div>
                        <p><?php echo esc_html($cliente4['nombre_cliente']); ?></p>
                    </div>
                </div>
            </li>
            <li id="slide2">
                <div class="row">
                    <div class="column-clientes">
                        <?php
                        $cliente5 = get_field('cliente_5');
                        $imagen5 = wp_get_attachment_image_src($cliente5['imagen_cliente'], 'mediano')[0];
                        ?>
                        <div class="image-box-clientes">
                            <img src="<?php echo esc_attr($imagen5); ?>" />
                        </div>
                        <p><?php echo esc_html($cliente5['nombre_cliente']); ?></p>
                    </div>
                    <div class="column-clientes">
                        <?php
                        $cliente6 = get_field('cliente_6');
                        $imagen6 = wp_get_attachment_image_src($cliente6['imagen_cliente'], 'mediano')[0];
                        ?>
                        <div class="image-box-clientes">
                            <img src="<?php echo esc_attr($imagen6); ?>" />
                        </div>
                        <p><?php echo esc_html($cliente6['nombre_cliente']); ?></p>
                    </div>
                    <div class="column-clientes">
                        <?php
                        $cliente7 = get_field('cliente_7');
                        $imagen7 = wp_get_attachment_image_src($cliente7['imagen_cliente'], 'mediano')[0];
                        ?>
                        <div class="image-box-clientes">
                            <img src="<?php echo esc_attr($imagen7); ?>" />
                        </div>
                        <p><?php echo esc_html($cliente7['nombre_cliente']); ?></p>
                    </div>
                    <div class="column-clientes">
                        <?php
                        $cliente8 = get_field('cliente_8');
                        $imagen8 = wp_get_attachment_image_src($cliente8['imagen_cliente'], 'mediano')[0];
                        ?>
                        <div class="image-box-clientes">
                            <img src="<?php echo esc_attr($imagen8); ?>" />
                        </div>
                        <p><?php echo esc_html($cliente8['nombre_cliente']); ?></p>
                    </div>
                </div>
            </li>
        </ul>

        <div class="menuSliderContainer">
            <ul class="menu">
                <li>
                    <a href="#slide1">1</a>
                </li>
                <li>
                    <a href="#slide2">2</a>
                </li>
            </ul>
        </div>

    </div>
</div>

<?php get_footer(); ?>

</body>

</html>