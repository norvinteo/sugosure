#!/bin/bash

# Ensure we're in the correct directory
cd /Users/norvin/Desktop/sugosure-website

# Add .nojekyll file if it doesn't exist
if [ ! -f .nojekyll ]; then
  touch .nojekyll
  git add .nojekyll
  git commit -m "Add .nojekyll file"
fi

# Instructions for the user
echo "==========================="
echo "GitHub Push Instructions"
echo "==========================="
echo "To push to GitHub, follow these steps:"
echo ""
echo "1. Run the following commands (copy and paste each line):"
echo ""
echo "   git push -u origin main"
echo ""
echo "2. Enter your GitHub username when prompted"
echo "3. Enter your GitHub password or personal access token when prompted"
echo ""
echo "If you encounter issues, you can also try:"
echo ""
echo "   git config --global credential.helper store"
echo "   git push -u origin main"
echo ""
echo "Or open GitHub Desktop and push from there."
echo ""
echo "==========================="
echo "For GitHub Pages Setup:"
echo "==========================="
echo "After successfully pushing:"
echo "1. Go to https://github.com/norvinteo/sugosure/settings/pages"
echo "2. Under 'Source', select 'Deploy from a branch'"
echo "3. Under 'Branch', select 'main' and '/ (root)'"
echo "4. Click 'Save'"
echo "5. Wait a few minutes for GitHub Pages to build your site"
echo "6. Your site will be available at https://norvinteo.github.io/sugosure/"
echo "==========================="
