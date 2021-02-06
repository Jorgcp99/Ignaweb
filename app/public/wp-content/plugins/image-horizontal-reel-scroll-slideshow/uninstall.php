<?php

if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit();
}

delete_option('Ihrss_title');
delete_option('Ihrss_sliderheight');
delete_option('Ihrss_slidespeed');
delete_option('Ihrss_slidebgcolor');
delete_option('Ihrss_slideshowgap');
delete_option('Ihrss_random');
delete_option('Ihrss_type');
 
// for site options in Multisite
delete_site_option('Ihrss_title');
delete_site_option('Ihrss_sliderheight');
delete_site_option('Ihrss_slidespeed');
delete_site_option('Ihrss_slidebgcolor');
delete_site_option('Ihrss_slideshowgap');
delete_site_option('Ihrss_random');
delete_site_option('Ihrss_type');

global $wpdb;
$wpdb->query("DROP TABLE IF EXISTS {$wpdb->prefix}Ihrss_plugin");