#!/bin/bash

DB_PASS=$(cat /run/secrets/db_password)
WP_ADMIN_PASS=$(cat /run/secrets/wp_admin_password)
WP_USER_PASS=$(cat /run/secrets/wp_user_password)

while ! mariadb -h$DB_HOST -u$DB_USER -p"$DB_PASS" $DB_NAME &>/dev/null; do
    sleep 2
done

if [ ! -f /var/www/html/wp-config.php ]; then
    echo "Installing WordPress..."
    wp core download --allow-root
    wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass="$DB_PASS" --dbhost=$DB_HOST --allow-root
    wp core install --url=$WP_URL --title="$WP_TITLE" --admin_user="$WP_ADMIN_USER" --admin_password="$WP_ADMIN_PASS" --admin_email=$WP_ADMIN_EMAIL --allow-root
    wp user create $WP_USER $WP_USER_EMAIL --role=author --user_pass="$WP_USER_PASS" --allow-root
fi

# Set permissions
#chown -R www-data:www-data /var/www/html
#chmod -R 755 /var/www/html

exec /usr/sbin/php-fpm8.2 -F
