# SugoSure Website

This repository contains a clone of the SugoSure website, prepared for hosting on GitHub Pages.

## Repository Setup

This repository has been initialized with Git. To push it to GitHub, you'll need to:

1. Go to your GitHub repository: https://github.com/norvinteo/sugosure-website
2. Add this existing Git repository using GitHub Desktop or command line

### Using GitHub Desktop

1. Open GitHub Desktop
2. Go to File > Add Local Repository
3. Browse to `/Users/norvin/Desktop/sugosure-website/`
4. Follow prompts to push to the existing repository

### Using Command Line with Personal Access Token

If you prefer command line, create a Personal Access Token on GitHub:

1. Go to GitHub > Settings > Developer settings > Personal access tokens
2. Generate a new token with 'repo' permissions
3. Use the token in place of your password:

```bash
cd /Users/norvin/Desktop/sugosure-website/
git remote set-url origin https://[USERNAME]:[TOKEN]@github.com/norvinteo/sugosure-website.git
git push -u origin main
```

### Using SSH 

If you have SSH keys configured:

```bash
cd /Users/norvin/Desktop/sugosure-website/
git remote set-url origin git@github.com:norvinteo/sugosure-website.git
git push -u origin main
```

## GitHub Pages Setup

After successfully pushing to GitHub:

1. Go to your repository on GitHub
2. Navigate to Settings > Pages
3. Under "Source", select "Deploy from a branch"
4. Choose "main" branch and set the folder to "/ (root)"
5. Click Save
6. Your site will be published at https://norvinteo.github.io/sugosure-website/
