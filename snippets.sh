#!/usr/bin/env bash

clear
echo "----------------------------------------"
echo "Obsidian CSS Snippets Tool"
echo "----------------------------------------"

VAULT=/tank/obsidian-vault/private/.obsidian/snippets
SCRIPT=$(echo "$PWD")

if [[ "$1" == "copy" ]]; then
    echo "Removing current stylesheets from Obsidian vault ..."
    rm "$VAULT"/*.css

    echo "Copying universal stylesheets to Obsidian vault ..."
    cp ./css/*.css "$VAULT"
    
    echo "That's it! Update your settings in the Appearance section of your vault settings."
    exit 0
elif [[ "$1" == "update" ]]; then
    echo "Copying stylesheets from Obsidian vault to project ..."
    cp "$VAULT"/*.css ./css
    
    echo "You should update the git repository."
    exit 0
else
    echo "Doing nothing ... (try 'copy' or 'update')"
    exit 0
fi

