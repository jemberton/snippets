#! /usr/bin/env bash

COPY_ASSETS=0

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
                break
            else
                echo "[snippets] ERROR: $OBSIDIAN_VAULT_PATH is not a valid path."
            fi
        fi
    done
    while read -p "[snippets] Enter folder name for images: " OBSIDIAN_VAULT_IMAGES; do
        if [ ! -z "$OBSIDIAN_VAULT_IMAGES" ]; then
            if [ -d "$OBSIDIAN_VAULT_PATH/$OBSDIAN_VAULT_IMAGES" ]; then
                break
            else
                echo "[snippets] ERROR: $OBSIDIAN_VAULT_IMAGES is not a valid path."
            fi
        fi
    done
    echo "[snippets] Creating environment file ..."
    echo "OBSIDIAN_VAULT_PATH=$OBSIDIAN_VAULT_PATH" > .env
    echo "OBSIDIAN_VAULT_IMAGES=$OBSIDIAN_VAULT_IMAGES" >> .env
    echo "----------------------------------------"
fi

# Initialize the .env file
source .env
echo "[snippets] Using vault at '$OBSIDIAN_VAULT_PATH'"
echo "[snippets] Using images/assets at '$OBSIDIAN_VAULT_IMAGES'"

if [ ! -d "$OBSIDIAN_VAULT_PATH"/.obsidian/snippets ]; then
    echo "[snippets] ERROR: Cannot find the snippets folder!"
    echo "[snippets] ERROR: The vault path doesn't seem to be a valid Obsidian vault."
    exit 1
fi

if [ ! -d "$OBSIDIAN_VAULT_PATH/$OBSIDIAN_VAULT_IMAGES" ]; then
    echo "[snippets] WARNING: Cannot find the images/assets folder!"
else
    COPY_ASSETS=1
fi

echo "[snippets] Removing old CSS snippets from vault ..."
rm "$OBSIDIAN_VAULT_PATH"/.obsidian/snippets/*.css > /dev/null 2>&1 || echo "[snippets] Vault does not have any snippets. Skipping ..."

echo "[snippets] Copying repository CSS snippets to vault ..."
cp ./css/*.css "$OBSIDIAN_VAULT_PATH"/.obsidian/snippets > /dev/null 2>&1 || echo "[snippets] ERROR: Could not copy snippets from repo to vault."

echo "[snippets] Copying repository test note to vault ..."
cp ./Obsidian\ Test\ Note.md "$OBSIDIAN_VAULT_PATH" > /dev/null 2>&1 || echo "[snippets] ERROR: Could not copy the test note to the vault."

if [ "$COPY_ASSETS" -eq 1 ]; then
    echo "[snippets] Copying test note assets to vault ..."
    cp -R ./_assets/* "$OBSIDIAN_VAULT_PATH/$OBSIDIAN_VAULT_IMAGES" > /dev/null 2>&1 || echo "[snippets] ERROR: Could not copy the test note assets to the vault."
fi

echo "[snippets] Enable Obsidian snippets in Settings > Appearance"
