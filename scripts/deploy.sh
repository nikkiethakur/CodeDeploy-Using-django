#!/bin/bash

cd /var/www/html/
mkdir -p temp

cp temp/codepipeline.html /var/www/html/
rm -rf temp

sudo systemctl restart apache2
