<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);

define('www_root',        '/var/www/easyweb/');
define('website_root',    $_SERVER['DOCUMENT_ROOT']);
define('config_location', '/config/config.xml');
define('locale_location', '/xml/locale.xml');
define('cache_location',  '/tmp/cache.tmp');

?>