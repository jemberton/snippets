#!/usr/bin/env bash

VAULT=/tank/obsidian-vault/private/.obsidian/snippets

clear
echo "----------------------------------------"
echo "Obsidian CSS Snippets Picker"
echo "----------------------------------------"

echo "- Copying current Obsidian snippets ..."
cp "$VAULT"/*.css ./css
echo "----------------------------------------"

options=("Exit" "stable" "universal" "Create New")

while true; do
    PS3="Select project: "
    
    select opt in "${options[@]}"; do
        case $opt in
            "Create New")
                echo "$opt"
                echo "[dev] New project stuff ..."
                read -p "Project Name: " project_name
                mkdir "$project_name"
                echo "[dev] would you like to select this repo?"
                exit 0
                ;;
            "universal")
                echo "$opt"
                echo "[dev] universal repo ..."
                exit 0
                ;;
            "stable")
                echo "$opt"
                echo "[dev] stable repo ..."
                exit 0
                ;;
            "Exit")
                echo "$opt ..."
                echo "Bye."
                exit 0
                ;;
            *)
                echo ""
                echo "Invalid option."
                ;;
        esac
    done
done

