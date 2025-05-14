#!/bin/bash

# Navigate to the website directory
cd /users/norvin/desktop/sugosure-website

# Function to check if a file exists
check_file() {
  local file_path="$1"
  if [ -f "$file_path" ]; then
    echo "✅ $file_path exists"
  else
    echo "❌ $file_path does not exist"
  fi
}

# Extract and test links from the index.html file
echo "Checking local links in the index.html file..."
echo "-------------------------------------------"

# Main navigation links
check_file "www.sugosure.com/index.html"
check_file "www.sugosure.com/how-it-works.html"
check_file "www.sugosure.com/how-it-works/monitoring.html"
check_file "www.sugosure.com/how-it-works/medication-management.html"
check_file "www.sugosure.com/how-it-works/diet-and-lifestyle-management.html"
check_file "www.sugosure.com/how-it-works/diabetes-coaching.html"
check_file "www.sugosure.com/patient.html"
check_file "www.sugosure.com/physician.html"
check_file "www.sugosure.com/your-questions.html"
check_file "www.sugosure.com/blog.html"
check_file "www.sugosure.com/patient-information.html"
check_file "www.sugosure.com/patient-stories.html"
check_file "www.sugosure.com/product-features.html"
check_file "www.sugosure.com/videos.html"
check_file "www.sugosure.com/news.html"
check_file "www.sugosure.com/contact.html"
check_file "www.sugosure.com/data-protection-policy.html"
check_file "www.sugosure.com/terms-of-use.html"

echo "-------------------------------------------"
echo "Check complete. Please verify any missing files."
