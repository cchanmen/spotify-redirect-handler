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

# Create a CNAME file for GitHub Pages
echo "$username.github.io/spotify-redirect-handler" > CNAME

# Create an index.html that redirects to redirect-handler.html
echo '<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="refresh" content="0; URL=redirect-handler.html">
</head>
<body>
    Redirecting to redirect handler...
</body>
</html>' > index.html

# Add and commit the new files
git add .
git commit -m "Configure GitHub Pages with redirect"
git push origin main

echo "Repository setup and code pushed successfully!"
echo "Your GitHub Pages URL will be: https://$username.github.io/spotify-redirect-handler/"
echo "Please wait a few minutes for GitHub Pages to be enabled."
