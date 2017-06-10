#!/usr/bin/env bash

# Run each program
sh "$HOME/homebrew.sh"
sh "$HOME/gem.sh"

echo "\nNow I need permission to change ownership for a few directories..."
sudo chown -R (whoami) /usr/local/lib/node_modules
sudo chown -R (whoami) /usr/local/bin
sudo chown -R (whoami) ~/.npm
sudo chown -R (whoami) /usr/local/bin /usr/local/etc /usr/local/include /usr/local/lib /usr/local/share /usr/local/var /usr/local/Frameworks /usr/local/lib/pkgconf
ig /usr/local/share/locale /usr/local/share/man
sh "$HOME/npm.sh"
