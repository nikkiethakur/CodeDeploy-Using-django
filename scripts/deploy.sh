#!/bin/bash

echo "Running deploy.sh..."

# Paths
PROJECT_DIR="/var/www/html/Hello"
TEMPLATE_DIR="$PROJECT_DIR/templates"
TEMP_DIR="$PROJECT_DIR/temp"
HTML_FILE="codepipeline.html"

# Make sure templates folder exists
mkdir -p "$TEMPLATE_DIR"

# Move the HTML file if it exists
if [ -f "$TEMP_DIR/$HTML_FILE" ]; then
    cp "$TEMP_DIR/$HTML_FILE" "$TEMPLATE_DIR/"
    echo "$HTML_FILE copied to templates/"
else
    echo "Warning: $HTML_FILE not found in $TEMP_DIR"
fi

# Cleanup
rm -rf "$TEMP_DIR"
echo "Temporary files cleaned up."

# Restart Apache
systemctl restart apache2

echo "deploy.sh completed."
