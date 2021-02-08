<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php wp_head(); ?>
    <!--carga hoja de estilos -->
</head>

<body>

    <header class="site-header">
        <div class="navBar">
            <div class="logo">
                <img src="<?php echo get_template_directory_uri(); ?>/img/ignaser.png" width="87" alt="logo pagina">
                <!-- <h2 class="tituloAppBar">Ignaser</h2> -->
            </div>

            <?php
            $args = array(
                'theme_location' => 'menu-principal',
                'container' => 'nav',
                'container_class' => 'menuPrincipal'
            );
            wp_nav_menu($args);
            ?>
        </div>
    </header>