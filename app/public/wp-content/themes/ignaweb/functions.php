<?php

function IgnaWeb_menus()
{
    register_nav_menus(array(
        'menu-principal' => __('Menu principal', 'ignawebtheme')
    ));
}
add_action('init', 'IgnaWeb_menus');

function pickApp_scripts_styles()
{
    wp_enqueue_style('googleFont', 'https://fonts.googleapis.com/css2?family=PT+Serif:wght@400;700&display=swap', array(), '1.0.0');

    wp_enqueue_style('style', get_stylesheet_uri(), array('googleFont'), '1.0.0');


}

add_action('wp_enqueue_scripts', 'pickApp_scripts_styles');