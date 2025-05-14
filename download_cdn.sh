#!/bin/bash

# Create directories for CDN content
mkdir -p cdn.prod.website-files.com/62e767969339c24c1907512c
mkdir -p cdn.prod.website-files.com/62e767969339c2561e075156

# Extract proper URLs
grep -o 'https://cdn.prod.website-files.com/[^"]*' $(find . -type f -name "*.html") | grep -v "&quot" | sort | uniq > cdn_urls.txt

# Download each URL
while read url; do
  echo "Downloading $url"
  filename=$(echo $url | sed 's/https:\/\///')
  dir=$(dirname $filename)
  mkdir -p $dir
  wget -q --no-check-certificate -O $filename "$url" || echo "Failed to download $url"
done < cdn_urls.txt

# Fix links in HTML files
find . -type f -name "*.html" -exec sed -i 's|https://cdn.prod.website-files.com|../cdn.prod.website-files.com|g' {} \;
