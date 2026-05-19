#!/bin/bash
# Deploy cpclean.com.au to Netlify
set -e

echo "Building site..."
node_modules/.bin/astro build

echo "Deploying to Netlify..."
netlify deploy --prod

echo "Done! Site is live at https://cpclean.com.au"
