#!/bin/bash

set -e

if ! $(wp core is-installed); then
  wp core install \
    --path="/var/www/html" \
    --url="http://localhost:8001" \
    --title="Gatsby & WordPress" \
    --admin_user=admin \
    --admin_password=secret \
    --admin_email=foo@bar.com

  wp plugin activate wp-graphql
  wp plugin activate wp-gatsby
  wp rewrite structure '/%year%/%monthnum%/%day%/%postname%/' 
else
  echo "WordPress is already installed."
fi
