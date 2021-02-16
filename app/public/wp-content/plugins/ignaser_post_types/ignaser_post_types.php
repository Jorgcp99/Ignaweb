<?php
/*
    Plugin Name: IgnaserWeb - Post Types
    Plugin URI: 
    Descripcion: Añade Post Types al sitio web Ignaser 
    Version: 1.0.0
    Author: Alfredo Manjon Canela, Jorge Caro Poza
    Author URI:
    Text Domain: ingaweb
*/

// Registrar Custom Post Type
function ignaser_productos_post_type() {

	$labels = array(
		'name'                  => _x( 'Productos', 'Post Type General Name', 'ignaweb' ),
		'singular_name'         => _x( 'Producto', 'Post Type Singular Name', 'ignaweb' ),
		'menu_name'             => __( 'Productos', 'ignaweb' ),
		'name_admin_bar'        => __( 'Producto', 'ignaweb' ),
		'archives'              => __( 'Archivo', 'ignaweb' ),
		'attributes'            => __( 'Atributos', 'ignaweb' ),
		'parent_item_colon'     => __( 'Producto Padre', 'ignaweb' ),
		'all_items'             => __( 'Todas Las Productos', 'ignaweb' ),
		'add_new_item'          => __( 'Agregar Producto', 'ignaweb' ),
		'add_new'               => __( 'Agregar Producto', 'ignaweb' ),
		'new_item'              => __( 'Nueva Producto', 'ignaweb' ),
		'edit_item'             => __( 'Editar Producto', 'ignaweb' ),
		'update_item'           => __( 'Actualizar Producto', 'ignaweb' ),
		'view_item'             => __( 'Ver Producto', 'ignaweb' ),
		'view_items'            => __( 'Ver Productos', 'ignaweb' ),
		'search_items'          => __( 'Buscar Producto', 'ignaweb' ),
		'not_found'             => __( 'No Encontrado', 'ignaweb' ),
		'not_found_in_trash'    => __( 'No Encontrado en Papelera', 'ignaweb' ),
		'featured_image'        => __( 'Imagen Destacada', 'ignaweb' ),
		'set_featured_image'    => __( 'Guardar Imagen destacada', 'ignaweb' ),
		'remove_featured_image' => __( 'Eliminar Imagen destacada', 'ignaweb' ),
		'use_featured_image'    => __( 'Utilizar como Imagen Destacada', 'ignaweb' ),
		'insert_into_item'      => __( 'Insertar en Producto', 'ignaweb' ),
		'uploaded_to_this_item' => __( 'Agregado en Producto', 'ignaweb' ),
		'items_list'            => __( 'Lista de Productos', 'ignaweb' ),
		'items_list_navigation' => __( 'Navegación de Productos', 'ignaweb' ),
		'filter_items_list'     => __( 'Filtrar Productos', 'ignaweb' ),
	);
	$args = array(
		'label'                 => __( 'Productos', 'ignaweb' ),
		'description'           => __( 'Productos para el Sitio Web', 'ignaweb' ),
		'labels'                => $labels,
		'supports'              => array( 'title', 'editor', 'thumbnail' ),
		'hierarchical'          => false,
		'public'                => true,
		'show_ui'               => true,
		'show_in_menu'          => true,
        'menu_position'         => 6,
        'menu_icon'             => 'dashicons-welcome-learn-more',
		'show_in_admin_bar'     => true,
		'show_in_nav_menus'     => true,
		'can_export'            => true,
		'has_archive'           => true,
		'exclude_from_search'   => false,
		'publicly_queryable'    => true,
		'capability_type'       => 'page',
	);
	register_post_type( 'ignaweb_productos', $args );

}
add_action( 'init', 'ignaser_productos_post_type', 0 );

function create_product_taxonomies() {
  
  $labels = array(
    'name'             => _x( 'Categorias', 'categories general name' ),
    'singular_name'    => _x( 'Categoría', 'category singular name' ),
    'search_items'     => __( 'Buscar por Categoría' ),
    'all_items'        => __( 'Todos las Categoría' ),
    'parent_item'      => __( 'Categoría padre' ),
    'parent_item_colon'=> __( 'Categoría padre:' ),
    'featured_image'   => __( 'Imagen Destacada'),
    'edit_item'        => __( 'Editar Categoría' ),
    'update_item'      => __( 'Actualizar Categoría' ),
    'add_new_item'     => __( 'Añadir nueva Categoría' ),
    'new_item_name'    => __( 'Nombre del la nueva Categoría' ),
  );
  
  /* Registramos la taxonomía y la configuramos como jerárquica (al estilo de las categorías) */
  register_taxonomy( 'category_product', array( 'ignaweb_productos' ), array(
    'hierarchical'       => true,
    'labels'             => $labels,
    'show_ui'            => true,
    'query_var'          => true,
    'rewrite'            => array( 'slug' => 'Categoría' ),
  ));
  
}

// Lo enganchamos en la acción init y llamamos a la función create_book_taxonomies() cuando arranque
add_action( 'init', 'create_product_taxonomies', 0 );  
  /* Si quieres añadir la siguiente taxonomía del ejemplo, sustituye esta línea por la del código correspondiente */
  