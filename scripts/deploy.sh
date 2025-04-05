#!/bin/bash

# Make sure templates folder exists
mkdir -p /var/www/html/Hello/myproject/templates

# Move codepipeline.html into the templates directory
cp /var/www/html/Hello/temp/codepipeline.html /var/www/html/Hello/myproject/templates/

# Cleanup
rm -rf /var/www/html/Hello/temp

# Restart Apache
sudo systemctl restart apache2
