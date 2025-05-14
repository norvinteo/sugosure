#!/bin/bash

# Navigate to the website directory
cd /users/norvin/desktop/sugosure-website

# List of patterns to replace in HTML files
patterns=(
  "http://www.sugosure.com/how-it-works|./how-it-works.html"
  "http://www.sugosure.com/how-it-works/monitoring|./how-it-works/monitoring.html"
  "http://www.sugosure.com/how-it-works/medication-management|./how-it-works/medication-management.html"
  "http://www.sugosure.com/how-it-works/diet-and-lifestyle-management|./how-it-works/diet-and-lifestyle-management.html"
  "http://www.sugosure.com/how-it-works/diabetes-coaching|./how-it-works/diabetes-coaching.html"
  "http://www.sugosure.com/patient|./patient.html"
  "http://www.sugosure.com/physician|./physician.html"
  "http://www.sugosure.com/your-questions|./your-questions.html"
  "http://www.sugosure.com/blog|./blog.html"
  "http://www.sugosure.com/patient-information|./patient-information.html"
  "http://www.sugosure.com/patient-stories|./patient-stories.html"
  "http://www.sugosure.com/product-features|./product-features.html"
  "http://www.sugosure.com/videos|./videos.html"
  "http://www.sugosure.com/news|./news.html"
  "http://www.sugosure.com/contact|./contact.html"
  "http://www.sugosure.com/data-protection-policy|./data-protection-policy.html"
  "http://www.sugosure.com/terms-of-use|./terms-of-use.html"
  "http://www.sugosure.com/|./"
  "http://www.sugosure.com\"|./\""
)

# Process HTML files
find ./www.sugosure.com -type f -name "*.html" | while read file; do
  echo "Processing $file"
  
  # Create a temporary file
  temp_file=$(mktemp)
  
  # Copy the original file to the temp file
  cp "$file" "$temp_file"
  
  # Apply each pattern replacement
  for pattern in "${patterns[@]}"; do
    IFS='|' read -r search replace <<< "$pattern"
    perl -pi -e "s|$search|$replace|g" "$temp_file"
  done
  
  # Copy the temp file back to the original
  cp "$temp_file" "$file"
  
  # Remove the temp file
  rm "$temp_file"
done

echo "All links have been updated to local references."
echo "Please check the website by opening www.sugosure.com/index.html in a browser."
