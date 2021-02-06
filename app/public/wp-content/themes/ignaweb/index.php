
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
    <h1>Ignaweb theme</h1>
</body>

</html>