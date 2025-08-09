#!/usr/bin/env bash

clear
echo "----------------------------------------"
echo "Obsidian CSS Snippets Tool"
echo "----------------------------------------"

VAULT=/tank/obsidian-vault/private/.obsidian/snippets
SCRIPT=$(echo "$PWD")

echo "Removing current stylesheets from Obsidian vault ..."
rm "$VAULT"/*.css

echo "Copying universal stylesheets to Obsidian vault ..."
cp ./css/*.css "$VAULT"

echo "That's it! Update your settings in the Appearance section of your vault settings."
exit 0

