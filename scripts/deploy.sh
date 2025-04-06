#!/bin/bash

# Move HTML file into templates folder
mkdir -p /var/www/html/Hello/templates
cp /var/www/html/Hello/codepipeline.html /var/www/html/Hello/templates/

# Restart Apache
systemctl restart apache2
