#!/bin/bash

# Create templates directory if it doesn't exist
mkdir -p /var/www/html/Hello/templates

# Copy the HTML file from the root (or temp) to the templates directory
cp /var/www/html/Hello/codepipeline.html /var/www/html/Hello/templates/

# OPTIONAL: remove the original file after copying (since it's not needed by Django)
rm -f /var/www/html/Hello/codepipeline.html

# Restart Apache to apply changes
sudo systemctl restart apache2
