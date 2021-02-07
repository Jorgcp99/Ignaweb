<?php
$config = array();

$config['plugin_screen'] = 'settings_page_stickyanythingmenu';
$config['icon_border'] = '1px solid #00000099';
$config['icon_right'] = '35px';
$config['icon_bottom'] = '35px';
$config['icon_image'] = 'sticky.png';
$config['icon_padding'] = '6px';
$config['icon_size'] = '55px';
$config['menu_accent_color'] = '#dd3036';
$config['custom_css'] = '#wf-flyout .wff-menu-item .dashicons.dashicons-universal-access { font-size: 30px; padding: 0px 10px 0px 0; } #wf-flyout .ucp-icon .wff-icon img { max-width: 70%; } #wf-flyout .ucp-icon .wff-icon { line-height: 57px; }';

$config['menu_items'] = array(
  array('href' => 'https://wpreset.com/?ref=wff-sticky', 'target' => '_blank', 'label' => 'Get WP Reset PRO with 50% off', 'icon' => 'wp-reset.png'),
  array('href' => 'https://underconstructionpage.com/?ref=wff-sticky&coupon=welcome', 'target' => '_blank', 'label' => 'Create the perfect Under Construction Page', 'icon' => 'ucp.png', 'class' => 'ucp-icon'),
  array('href' => 'https://wordpress.org/support/plugin/sticky-menu-or-anything-on-scroll/reviews/?filter=5#new-post', 'target' => '_blank', 'label' => 'Rate the Plugin', 'icon' => 'dashicons-thumbs-up'),
  array('href' => 'https://wordpress.org/support/plugin/sticky-menu-or-anything-on-scroll/#new-post', 'target' => '_blank', 'label' => 'Get Support', 'icon' => 'dashicons-sos'),
);
