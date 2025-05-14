#!/bin/bash
# Make sure the repository exists first
echo "Make sure you have created the GitHub repository at https://github.com/norvinteo/sugosure"
echo "Enter your GitHub username:"
read GITHUB_USERNAME
echo "Enter your GitHub password or personal access token (input will not be shown):"
read -s GITHUB_PASSWORD

# Setup remote correctly
git remote set-url origin https://${GITHUB_USERNAME}:${GITHUB_PASSWORD}@github.com/norvinteo/sugosure.git

# Push to GitHub
git push -u origin main

# Reset the remote URL to remove credentials
git remote set-url origin https://github.com/norvinteo/sugosure.git

echo "Push completed!"

