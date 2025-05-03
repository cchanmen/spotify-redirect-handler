# Spotify Redirect Handler

This is a simple redirect handler for Spotify OAuth authentication. It's used to handle the redirect from Spotify's authorization flow and store the access token in localStorage.

## Usage

1. Clone this repository
2. Deploy it to GitHub Pages
3. Add the GitHub Pages URL to your Spotify Dashboard's Redirect URIs

## How it works

1. When Spotify redirects to this page with an access token
2. The page stores the token in localStorage
3. Redirects back to the main application

## Security

This is a simple static page that only handles token storage and redirection. It does not store any tokens on the server side.
