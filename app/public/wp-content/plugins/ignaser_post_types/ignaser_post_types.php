<?php
/*

Plugin Name: Ignaser - Post Types
Plugin URI:
Description: Añade post types al sitio Ignaser
Version: 1.0.0
Author: Jorge Caro Poza y Alfredo Manjón Canela
Author URI:
Text Domain: ignasertheme

*/

// Registrar Custom Post Type
function ignaser_valores_post_type()
{

    $labels = array(
        'name'                  => _x('Valores', 'Post Type General Name', 'ignasertheme'),
        'singular_name'         => _x('Valor', 'Post Type Singular Name', 'ignasertheme'),
        'menu_name'             => __('Valores', 'ignasertheme'),
        'name_admin_bar'        => __('Valor', 'ignasertheme'),
        'archives'              => __('Archivo', 'ignasertheme'),
        'attributes'            => __('Atributos', 'ignasertheme'),
        'parent_item_colon'     => __('Clase Padre', 'ignasertheme'),
        'all_items'             => __('Todos Los Valores', 'ignasertheme'),
        'add_new_item'          => __('Agregar Valor', 'ignasertheme'),
        'add_new'               => __('Agregar Valor', 'ignasertheme'),
        'new_item'              => __('Nuevo Valor', 'ignasertheme'),
        'edit_item'             => __('Editar Valor', 'ignasertheme'),
        'update_item'           => __('Actualizar Valor', 'ignasertheme'),
        'view_item'             => __('Ver Valor', 'ignasertheme'),
        'view_items'            => __('Ver Valores', 'ignasertheme'),
        'search_items'          => __('Buscar Valor', 'ignasertheme'),
        'not_found'             => __('No Encontrado', 'ignasertheme'),
        'not_found_in_trash'    => __('No Encontrado en Papelera', 'ignasertheme'),
        'featured_image'        => __('Imagen Destacada', 'ignasertheme'),
        'set_featured_image'    => __('Guardar Imagen destacada', 'ignasertheme'),
        'remove_featured_image' => __('Eliminar Imagen destacada', 'ignasertheme'),
        'use_featured_image'    => __('Utilizar como Imagen Destacada', 'ignasertheme'),
        'insert_into_item'      => __('Insertar en Valor', 'ignasertheme'),
        'uploaded_to_this_item' => __('Agregado en Valor', 'ignasertheme'),
        'items_list'            => __('Lista de Valor', 'ignasertheme'),
        'items_list_navigation' => __('Navegación de Valores', 'ignasertheme'),
        'filter_items_list'     => __('Filtrar Valores', 'ignasertheme'),
    );
    $args = array(
        'label'                 => __('Valor', 'ignasertheme'),
        'description'           => __('Valores para el Sitio Web', 'ignasertheme'),
        'labels'                => $labels,
        'supports'              => array('title', 'editor', 'thumbnail'),
        'hierarchical'          => true, //true = posts , false = paginas
        'public'                => true,
        'show_ui'               => true,
        'show_in_menu'          => true,
        'menu_position'         => 6,
        'menu_icon'             => 'dashicons-smiley',
        'show_in_admin_bar'     => true,
        'show_in_nav_menus'     => true,
        'can_export'            => true,
        'has_archive'           => true,
        'exclude_from_search'   => false,
        'publicly_queryable'    => true,
        'capability_type'       => 'page',
    );
    register_post_type('ignaser_valores', $args);
}
add_action('init', 'ignaser_valores_post_type', 0);
