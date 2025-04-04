#!/bin/bash

# Navigate to your Django project directory
cd /var/www/html/Hello

# Create a temp folder to hold the incoming HTML file
mkdir -p temp

# Copy the codepipeline.html file from temp to Django's templates directory
cp temp/codepipeline.html /var/www/html/Hello/myproject/templates/

# Remove the temp folder after copying
rm -rf temp

# Restart Apache to apply changes
sudo systemctl restart apache2
