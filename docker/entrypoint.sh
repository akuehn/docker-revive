#!/bin/bash
set -e

find /var/www/html/var -type d -exec chmod 700 {} +
find /var/www/html/var -type f -exec chmod 600 {} +
chmod 700 /var/www/html/var
chown -R www-data:www-data /var/www/html/plugins
chmod 700 /var/www/html/plugins
chown -R www-data:www-data /var/www/html/www/admin/plugins
chmod 700 /var/www/html/www/admin/plugins
chown -R www-data:www-data /var/www/html/

mkdir -p /var/www/html/www/admin/plugins
chown -R www-data:www-data .
chmod -R a+w /var/www/html/plugins
chmod -R a+w /var/www/html/www/admin/plugins

/etc/init.d/php7.2-fpm start
nginx -g 'daemon off;'
