#!/usr/bin/env bash

# Run each program
sh "$HOME/homebrew.sh"
sh "$HOME/gem.sh"

echo "\nNow I need permission to change ownership for a few directories..."
sudo chown -R `whoami` /usr/local/lib/node_modules
sudo chown -R `whoami` ~/.npm
sh "$HOME/npm.sh"
