#!/bin/sh
# Deploy to Cloudflare Pages (heroes-of-socialism.pages.dev). GitHub Pages updates on git push.
set -e; cd "$(dirname "$0")"; D=$(mktemp -d)
cp index.html og.jpg "$D/"
sed -i '' 's#https://anomy11.github.io/heroes-of-socialism/og.jpg#https://heroes-of-socialism.pages.dev/og.jpg#' "$D/index.html"
wrangler pages deploy "$D" --project-name heroes-of-socialism --branch main --commit-dirty=true
