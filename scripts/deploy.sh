#!/bin/bash

# Go to the app directory
cd /var/www/html/Hello

# Ensure templates directory exists
mkdir -p myproject/templates

# Move HTML file to templates
cp codepipeline.html myproject/templates/

# Set proper permissions (optional, helpful for troubleshooting)
chmod 644 myproject/templates/codepipeline.html

# Restart Apache to reflect changes
sudo systemctl restart apache2
