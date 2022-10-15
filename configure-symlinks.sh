#!/bin/bash

VAULT_PATH=$1

if [ -z "$VAULT_PATH" ]; then
	echo "missing vault path"
	exit 1
fi

PLUGINS_PATH="$VAULT_PATH"/.obsidian/plugins
PROJECTS_PATH="$PLUGINS_PATH"/obsidian-projects

mkdir -p "$PROJECTS_PATH"

ln -sf "$(pwd)"/main.js "$PROJECTS_PATH"
ln -sf "$(pwd)"/styles.css "$PROJECTS_PATH"
ln -sf "$(pwd)"/manifest.json "$PROJECTS_PATH"
