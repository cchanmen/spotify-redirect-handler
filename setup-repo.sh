#!/bin/bash

# Get GitHub username
read -p "Enter your GitHub username: " username

# Create a new repository
gh repo create spotify-redirect-handler --public --source=. --remote=origin

# Initialize git and add files
git init
git add .
git commit -m "Initial commit"

# Add remote and push
git remote add origin https://github.com/$username/spotify-redirect-handler.git
git push -u origin main

# Enable GitHub Pages and set redirect-handler.html as the main page
gh pages create --source main --public --cname $username.github.io/spotify-redirect-handler
gh pages set-source main --public --cname $username.github.io/spotify-redirect-handler
gh pages set-source main --public --cname $username.github.io/spotify-redirect-handler --build-command "echo 'Redirecting...' > index.html && cp redirect-handler.html index.html"

# Push the changes
git add .
git commit -m "Configure GitHub Pages"
git push origin main

echo "Repository setup and code pushed successfully!"
echo "Your GitHub Pages URL will be: https://$username.github.io/spotify-redirect-handler/"
echo "Please wait a few minutes for GitHub Pages to be enabled."
