#!/bin/bash
#
# Author: Severin Kaderli <severin.kaderli@gmail.com>
# Usage: ./install.sh
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# TODO: Install yaourt

# TODO: Install needed packages
# google-chrome-beta
# vlc
# steam

# Setting up git configuration
ln -s "$DIR/.gitconfig" "$HOME/.gitconfig"

# Setting up vim configuration
ln -s "$DIR/.vimrc" "$HOME/.vimrc"

# Setting up various configuration files
ln -s "$DIR/.bash_logout" "$HOME/.bash_logout"
ln -s "$DIR/.bash_profile" "$HOME/.bash_profile"
ln -s "$DIR/.bashrc" "$HOME/.bashrc"
ln -s "$DIR/.aliases" "$HOME/.aliases"
ln -s "$DIR/.xinitrc" "$HOME/.xinitrc"
ln -s "$DIR/.Xresources" "$HOME/.Xresources"
ln -s "$DIR/.config/i3" "$HOME/.config/i3"
ln -s "$DIR/.dircolors" "$HOME/.dircolors"
ln -s "$DIR/.config/compton.conf" "$HOME/.config/compton.conf

# Symlinking scripts directory and giving execute permissions
ln -s "$DIR/bin" "$HOME/bin"
chmod +x "$HOME/bin/*"

# Download and install composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv "$DIR/composer.phar" "$HOME/bin/composer"

# Link crontab file
ln -s "$DIR/.crontab" "$HOME/.crontab"
