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

    wp_enqueue_style('normalize', get_template_directory_uri() . '/css/normalize.css', array(), '8.0.1');

    wp_enqueue_style('googleFont', 'https://fonts.googleapis.com/css2?family=PT+Serif:wght@400;700&display=swap', array(), '1.0.0');

    wp_enqueue_style('styles', get_stylesheet_uri(), array('googleFont', 'normalize'), '1.0.0');

    wp_enqueue_style('slickNavCSS', get_template_directory_uri() . '/css/slicknav.min.css', array(), '1.0.0');

    wp_enqueue_script('slickNavJS', get_template_directory_uri() . '/js/jquery.slicknav.min.js', array('jquery'), '1.0.0', true);

    wp_enqueue_script('scripts', get_template_directory_uri() . '/js/scripts.js', array('jquery', 'slickNavJS'), '1.0.0', true);
}

add_action('wp_enqueue_scripts', 'pickApp_scripts_styles');
