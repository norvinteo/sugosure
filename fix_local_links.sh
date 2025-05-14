#!/bin/bash

# Navigate to the website directory
cd /users/norvin/desktop/sugosure-website

# Find all HTML files and replace "http://www.sugosure.com/" with "./"
find ./www.sugosure.com -type f -name "*.html" -exec sed -i 's|http://www.sugosure.com/|./|g' {} \;

# If there are any background images with "http://www.sugosure.com/" URLs, fix those too
find ./www.sugosure.com -type f -name "*.html" -exec sed -i 's|url(http://www.sugosure.com/|url(./|g' {} \;

# In case there are any "http://www.sugosure.com" without trailing slash
find ./www.sugosure.com -type f -name "*.html" -exec sed -i 's|http://www.sugosure.com|.|g' {} \;

# Fix any JS files that might contain links
find ./www.sugosure.com -type f -name "*.js" -exec sed -i 's|http://www.sugosure.com/|./|g' {} \;
find ./www.sugosure.com -type f -name "*.js" -exec sed -i 's|http://www.sugosure.com|.|g' {} \;

# Fix any CSS files that might contain links
find ./www.sugosure.com -type f -name "*.css" -exec sed -i 's|http://www.sugosure.com/|./|g' {} \;
find ./www.sugosure.com -type f -name "*.css" -exec sed -i 's|http://www.sugosure.com|.|g' {} \;

echo "Links have been updated to local references. Please check the website by opening www.sugosure.com/index.html in a browser."
