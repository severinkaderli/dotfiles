#!/bin/bash
#
# Author: Severin Kaderli <severin.kaderli@gmail.com>
#
# Usage: ./install.sh
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Setting up git configuration
ln -s "$DIR/.gitconfig" "$HOME/.gitconfig"

# Setting up various configuration files
ln -s "$DIR/.bash_profile" "$HOME/.bash_profile"
ln -s "$DIR/.bashrc" "$HOME/.bashrc"
ln -s "$DIR/.profile" "$HOME/.bashrc"
ln -s "$DIR/.xinitrc" "$HOME/.xinitrc"
ln -s "$DIR/.Xresources" "$HOME/.Xresources"
ln -s "$DIR/.config/i3" "$HOME/.config/i3"
ln -s "$DIR/.dircolors" "$HOME/.dircolors"

# Symlinking scripts directory and giving execute permissions
ln -s "$DIR/bin" "$HOME/bin"
chmod +x "$HOME/bin/*"

# Activate crontab file
crontab -u $USER "$DIR/.crontab"
