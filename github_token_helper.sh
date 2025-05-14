#!/bin/bash
echo "====================================="
echo "GitHub Token Authentication Helper"
echo "====================================="
echo "Please follow these steps:"
echo ""
echo "1. Go to https://github.com/settings/tokens"
echo "2. Click 'Generate new token (classic)'"
echo "3. Give the token a description like 'SugoSure Website Push'"
echo "4. Select 'repo' permissions"
echo "5. Click 'Generate token'"
echo "6. Copy the generated token"
echo ""
echo "Enter your GitHub token below (it won't be visible as you type):"
read -s GITHUB_TOKEN
echo ""

# Store the token temporarily
git config --local credential.helper store
echo "https://norvinteo:${GITHUB_TOKEN}@github.com" > ~/.git-credentials

# Push to GitHub
git push -u origin main

# Remove credentials after pushing
git config --local --unset credential.helper
rm ~/.git-credentials

echo ""
echo "Push completed! Your GitHub token has been removed from the local storage."
echo ""
echo "To set up GitHub Pages:"
echo "1. Go to https://github.com/norvinteo/sugosure/settings/pages"
echo "2. Under 'Source', select 'Deploy from a branch'"
echo "3. Under 'Branch', select 'main' and '/ (root)'"
echo "4. Click 'Save'"
echo "5. Wait a few minutes for GitHub Pages to build your site"
echo "6. Your site will be available at https://norvinteo.github.io/sugosure/"
