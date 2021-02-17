<?php

require get_template_directory() . '/inc/queries.php';

//Cuando el tema es activado
function ignawebtheme_setup()
{

    //Habilitar imagenes destacadas
    add_theme_support('post-thumbnails');

    //Agregar imagenes de tamaño personalizado
    add_image_size('square', 350, 350, true);
    add_image_size('gallery', 430, 322.5, true);
    add_image_size('galleryMobile', 355, 265.5, true);
    add_image_size('galleryMobile2', 300, 225, true);
    add_image_size('galleryMobile3', 320, 240, true);
    add_image_size('small', 100, 100, true);
    add_image_size('portrait', 350, 724, true);
    add_image_size('cajas', 400, 375, true);
    add_image_size('mediano', 700, 400, true);
    add_image_size('blog', 966, 644, true);
}
add_action('after_setup_theme', 'ignawebtheme_setup');

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

    wp_enqueue_style('style', get_stylesheet_uri(), array('googleFont'), '1.0.0');

    wp_enqueue_style('styles', get_stylesheet_uri(), array('googleFont', 'normalize'), '1.0.0');

    if (is_page('galeria')) :
        wp_enqueue_style('lightboxCSS', get_template_directory_uri() . '/css/lightbox.min.css', array(), '2.11.3');
        wp_enqueue_script('lightboxJS', get_template_directory_uri() . '/js/lightbox.min.js', array(), '2.11.3', true);
    endif;

    wp_enqueue_script('scripts', get_template_directory_uri() . '/js/scripts.js', array('jquery', 'slickNavJS'), '1.0.0', true);

}

add_action('wp_enqueue_scripts', 'pickApp_scripts_styles');


function ignaser_widgets(){
    register_sidebar(array(
        'name' => 'Nuestros valores',
        'id' => 'nuestros_valores',
        'before_widget' => '<div class="widget">',
        'after_widget' => '</div>',
        'before_title' => '<h3 class="text-center texto-primario">',
        'after_title' => '</h3>'
    ));
    register_sidebar(array(
        'name' => 'SideBar2',
        'id' => 'sidebar_2',
        'before_widget' => '<div class="widget">',
        'after_widget' => '</div>',
        'before_title' => '<h3 class="text-center texto-primario">',
        'after_title' => '</h3>'
    ));
}
add_action('widgets_init', 'ignaser_widgets');