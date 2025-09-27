#! /usr/bin/env bash

echo "----------------------------------------"
echo "Obsidian CSS Snippets Tool v1.0"
echo "----------------------------------------"

echo "[git] Checking for updates ..."
# git pull
git status > /dev/null 2>&1

# Check if .env file exists else create one
if [ ! -f .env ]; then
    echo "----------------------------------------"
    while read -p "[snippets] Enter path to Obsidian vault: " OBSIDIAN_VAULT_PATH; do
        if [ ! -z "$OBSIDIAN_VAULT_PATH" ]; then
            if [ -d "$OBSIDIAN_VAULT_PATH" ]; then
                echo "[snippets] Creating environment file ..."
                echo "OBSIDIAN_VAULT_PATH=$OBSIDIAN_VAULT_PATH" > .env
                break
            else
                echo "[snippets] ERROR: $OBSIDIAN_VAULT_PATH is not a valid path."
            fi
        fi
    done
    echo "----------------------------------------"
fi

# Initialize the .env file
source .env
echo "[snippets] Using vault at '$OBSIDIAN_VAULT_PATH'"

if [ ! -d "$OBSIDIAN_VAULT_PATH"/.obsidian/snippets ]; then
    echo "[snippets] ERROR: Cannot find the snippets folder!"
    echo "[snippets] ERROR: The vault path doesn't seem to be a valid Obsidian vault."
    exit 1
fi

echo "[snippets] Removing old CSS snippets from vault ..."
rm "$OBSIDIAN_VAULT_PATH"/.obsidian/snippets/*.css > /dev/null 2>&1 || echo "[snippets] Vault does not have any snippets. Skipping ..."

echo "[snippets] Copying repository CSS snippets to vault ..."
cp ./css/*.css "$OBSIDIAN_VAULT_PATH"/.obsidian/snippets > /dev/null 2>&1 || echo "[snippets] ERROR: Could not copy snippets from repo to vault."

echo "[snippets] Copying repository test note to vault ..."
cp ./Obsidian\ Test\ Note.md "$OBSIDIAN_VAULT_PATH" > /dev/null 2>&1 || echo "[snippets] ERROR: Could not copy the test note to the vault."

echo "[snippets] Enable Obsidian snippets in Settings > Appearance"
