<?php
/*
  Plugin Name: Ignaser - Productos y categorias
  Plugin URI:
  Description: Añade post types al sitio Ignaser
  Version: 1.0.0
  Author: 
  Author URI:
  Text Domain: ignasertheme
*/

// Registrar Custom Post Type
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
      'rewrite'            => array( 'slug' => 'product_category' ),
    ));
    
  }
  
  // Lo enganchamos en la acción init y llamamos a la función create_book_taxonomies() cuando arranque
  add_action( 'init', 'create_product_taxonomies', 0 );  

    
  function custom_taxonomy_flush_rewrite() {
    global $wp_rewrite;
    $wp_rewrite->flush_rules();
  }
  add_action('init', 'custom_taxonomy_flush_rewrite');
  
  // Registrar Custom Post Type
  function ignaser_productos_post_type() {
  
      $labels = array(
          'name'                  => _x( 'Productos', 'Post Type General Name', 'ignasertheme' ),
          'singular_name'         => _x( 'Producto', 'Post Type Singular Name', 'ignasertheme' ),
          'menu_name'             => __( 'Productos', 'ignasertheme' ),
          'name_admin_bar'        => __( 'Producto', 'ignasertheme' ),
          'archives'              => __( 'Archivo', 'ignasertheme' ),
          'attributes'            => __( 'Atributos', 'ignasertheme' ),
          'parent_item_colon'     => __( 'Producto Padre', 'ignasertheme' ),
          'all_items'             => __( 'Todas Las Productos', 'ignasertheme' ),
          'add_new_item'          => __( 'Agregar Producto', 'ignasertheme' ),
          'add_new'               => __( 'Agregar Producto', 'ignasertheme' ),
          'new_item'              => __( 'Nueva Producto', 'ignasertheme' ),
          'edit_item'             => __( 'Editar Producto', 'ignasertheme' ),
          'update_item'           => __( 'Actualizar Producto', 'ignasertheme' ),
          'view_item'             => __( 'Ver Producto', 'ignasertheme' ),
          'view_items'            => __( 'Ver Productos', 'ignasertheme' ),
          'search_items'          => __( 'Buscar Producto', 'ignasertheme' ),
          'not_found'             => __( 'No Encontrado', 'ignasertheme' ),
          'not_found_in_trash'    => __( 'No Encontrado en Papelera', 'ignasertheme' ),
          'featured_image'        => __( 'Imagen Destacada', 'ignasertheme' ),
          'set_featured_image'    => __( 'Guardar Imagen destacada', 'ignasertheme' ),
          'remove_featured_image' => __( 'Eliminar Imagen destacada', 'ignasertheme' ),
          'use_featured_image'    => __( 'Utilizar como Imagen Destacada', 'ignasertheme' ),
          'insert_into_item'      => __( 'Insertar en Producto', 'ignasertheme' ),
          'uploaded_to_this_item' => __( 'Agregado en Producto', 'ignasertheme' ),
          'items_list'            => __( 'Lista de Productos', 'ignasertheme' ),
          'items_list_navigation' => __( 'Navegación de Productos', 'ignasertheme' ),
          'filter_items_list'     => __( 'Filtrar Productos', 'ignasertheme' ),
      );
      $args = array(
          'label'                 => __( 'Productos', 'ignasertheme' ),
          'description'           => __( 'Productos para el Sitio Web', 'ignasertheme' ),
          'labels'                => $labels,
          'supports'              => array( 'title', 'editor', 'thumbnail' ),
          'public'                => true,
          'show_ui'               => true,
          'show_in_menu'          => true,
          'menu_position'         => 7,
          'menu_icon'             => 'dashicons-database',
          'show_in_admin_bar'     => true,
          'show_in_nav_menus'     => true,
          'can_export'            => true,
      'rewrite' => array('slug' => 'product_category/%category_product%', 'with_front' => false), 
          'has_archive'           => 'product_category',
          'exclude_from_search'   => false,
          'publicly_queryable'    => true,
          'capability_type'       => 'page',
    
      );
    
      register_post_type( 'ignaweb_productos', $args );
  
  }
  add_action( 'init', 'ignaser_productos_post_type', 0);
