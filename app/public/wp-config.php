<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'V2Qcz/vjvYf6iigJK0eCZBx0QVTWPY5vud2IuDDd1GGiGtRNUTZ/rpZzM87EikBeNhZ7M4sgIi/TFGr1LoSmHg==');
define('SECURE_AUTH_KEY',  'Vu0+IJQir112d1qN0PlQsk2eAH3UovFF3Do1QVOEj3XGzZjvdTGfeRYNtmpT/rmteuenz+Qi9hHNy3jNzG8pUQ==');
define('LOGGED_IN_KEY',    'gHPnS3n3zXk6EPGT1OHvSiXAj4sRFlpPY8GhI3UAGmGZSKuLcitS3/dnajGjL4Pe0dYLBGrADSXv/pP2QEO/9A==');
define('NONCE_KEY',        '8rMAa64x1Eow7uTB6HFRg/l7Wo+qjO7ANr8BYtrNjXZBSKwdTaKosIC0fj1kGft6hQZ2dVIJO8SW/w09judw2g==');
define('AUTH_SALT',        'Mdd0fo7taAQEKG3oEKZqjZvOYOQcam8xckr5DhluCP0Erj3y1+7aihvBp3BhHzKSRSIbmjX8KpB+BDMWiFNYjA==');
define('SECURE_AUTH_SALT', 'DOvAS5TOunJSYmAp8ARqXcjKuY2S2DVDl0YyKMs9h46Ks8lD0UVScWPJFysKx4w3IUjcimezZOeGRL+4vxuu6A==');
define('LOGGED_IN_SALT',   'pfAV89tTy9LcQ/tuIfb72udhZl71Afk44Ow/W2mogoQkDFJU+QSoN8EDAzix9rn+2k3dNcQhNWcI75uygUF1qQ==');
define('NONCE_SALT',       'ikJOX3M0OJC2sfs0EbnzQ+V33OQNGK43dMKTowP7J/ETylY3iW2IFQDYB97QxfYrYUfHFPQ9TCe9dboC9z7U6w==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
