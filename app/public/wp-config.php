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
define('AUTH_KEY',         '6vFCH0G2wjIkNV+iTSct1H//HNZ/LZ24VMy12XU6FS5fWAgKjSwOpUMMZg5vmrRIC/3HbAGfATmHJcWgmdB8qg==');
define('SECURE_AUTH_KEY',  'PUCLVv+e2wX4dsiSflj/Jd/9BHcc5fwfKNApgq77ZSTWIVBSs+6pIBJiejxLVAnDPdyv/DsFTY4tdjDVEdFrSg==');
define('LOGGED_IN_KEY',    'OOt3XzZBQP1pyBRq8UXz9wWo00DddTjCdlDbN54CVOjNZWjwLx2oWagENmfbZA/mAk++YE6UY9GX/DQniOKfeg==');
define('NONCE_KEY',        'cynKjklEuJtuFXhXBa8rKJWCl5WuzIP9gEpy6Y0PfLj+y8fLCkNpUR/vc2bFjWFvkK4cwVq8CpKa2wpoNUTXsg==');
define('AUTH_SALT',        'z2HvyPUKAR7QOC6uBt1GZjdOdbNAxjelbKqPC1SEpcu6muoEaZpkZtDHGwS5Blc4pT8qeooLbQnQWvWiO/EoGA==');
define('SECURE_AUTH_SALT', '+Gy4BzdgpIUnuBNPhsopXwZV1x7ZLMMx7McMwKL5Ip2rr+CAmj5CPAmWfj+gu4gtaJbJoaTPVZ2VwjWBg4CSFA==');
define('LOGGED_IN_SALT',   '43EjmYzbH1qRJaP6Y9giKdHXrrBUid9mQhkMPfEVAR6Z4WEFKvMRqBYwI0THkYHgWuf+17v5k6sCwtet+cP1Lw==');
define('NONCE_SALT',       'gXnwXZgJUmHYng8hmk/M0jlWGpSHiUhGXuiTgX6saOU0JDlbgos5gufvlZk87IJ4g/kTXm2HhsMFNbExvdWADA==');

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
