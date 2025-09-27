#! /usr/bin/env bash

echo "----------------------------------------"
echo "    Obsidian CSS Snippets Tool v1.0"
echo "----------------------------------------"

echo "Checking for updates ..."
# git pull
git status

# Check if .env file exists else create one
if [ ! -f .env ]; then
    echo "----------------------------------------"
    while read -p "Enter path to Obsidian vault: " OBSIDIAN_VAULT_PATH; do
        if [ ! -z "$OBSIDIAN_VAULT_PATH" ]; then
            if [ -d "$OBSIDIAN_VAULT_PATH" ]; then
                echo "Creating environment file ..."
                echo "OBSIDIAN_VAULT_PATH=$OBSIDIAN_VAULT_PATH" > .env
                break
            else
                echo "ERROR: $OBSIDIAN_VAULT_PATH is not a valid path."
            fi
        fi
    done
    echo "----------------------------------------"
fi

# Initialize the .env file
source .env
echo "DEBUG: $OBSIDIAN_VAULT_PATH"
echo "DEBUG: Remove old CSS snippets from vault ..."
echo "DEBUG: Copy repository CSS snippets to vault ..."
echo "DEBUG: Copy repository test note to vault ..."
echo "DEBUG: Remind user to enable snippets and open note ..."
echo "DEBUG: Exit"
