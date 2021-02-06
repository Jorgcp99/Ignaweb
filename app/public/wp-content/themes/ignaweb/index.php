
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
    
</body>

</html>